package mongodemoproject

import grails.converters.JSON
import grails.gorm.DetachedCriteria
import org.bson.types.ObjectId
import org.grails.datastore.mapping.query.Restrictions

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EmployeeController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def searchId(String id) {
        System.out.println("In searchId")
        def emp = Employee.get(new ObjectId(id))
        render emp as JSON
    }

    def searchName(String name) {
        System.out.println("In searchName")
        def empList = Employee.findAllByFirstName(name)
        render empList as JSON
    }

    def searchParams() {
        System.out.println("In searchParams")

        def criteria = new DetachedCriteria(Employee)

        params.each { param ->
            if(!param.key.equals('action') && !param.key.equals('controller')){
                System.out.println(param.key)
                System.out.println(param.value)
                def value = param.value
                if(param.key.equals('employeeID') || param.key.equals('extension'))
                    value = params.getInt(param.key)
                else if(param.key.equals('relevantExperience'))
                    value = params.getDouble(param.key)
                else if( param.key.equals('dateOfBirth') || param.key.equals('joiningDate'))
                    value = params.getDate(param.key)
                criteria.add(Restrictions.eq(param.key.toString(),value))
            }
        }

        def empList = criteria.findAll()
        render empList as JSON
    }


    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Employee.list(params), model: [employeeInstanceCount: Employee.count()]
    }

    def show(Employee employeeInstance) {
        respond employeeInstance
    }

    def create() {
        respond new Employee(params)
    }

    @Transactional
    def save(Employee employeeInstance) {
        if (employeeInstance == null) {
            notFound()
            return
        }

        if (employeeInstance.hasErrors()) {
            respond employeeInstance.errors, view: 'create'
            return
        }

        employeeInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'employee.label', default: 'Employee'), employeeInstance.id])
                redirect employeeInstance
            }
            '*' { respond employeeInstance, [status: CREATED] }
        }
    }

    def edit(Employee employeeInstance) {
        respond employeeInstance
    }

    @Transactional
    def update(Employee employeeInstance) {
        if (employeeInstance == null) {
            notFound()
            return
        }

        if (employeeInstance.hasErrors()) {
            respond employeeInstance.errors, view: 'edit'
            return
        }

        employeeInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Employee.label', default: 'Employee'), employeeInstance.id])
                redirect employeeInstance
            }
            '*' { respond employeeInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Employee employeeInstance) {

        if (employeeInstance == null) {
            notFound()
            return
        }

        employeeInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Employee.label', default: 'Employee'), employeeInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'employee.label', default: 'Employee'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
