import employeemongoapp.Employee
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_employeeMongoApp_employeeshow_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/employee/show.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
printHtmlPart(1)
createTagBody(1, {->
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',6,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("layout"),'content':("main")],-1)
printHtmlPart(2)
invokeTag('set','g',7,['var':("entityName"),'value':(message(code: 'employee.label', default: 'Employee'))],-1)
printHtmlPart(2)
createTagBody(2, {->
createTagBody(3, {->
invokeTag('message','g',8,['code':("default.show.label"),'args':([entityName])],-1)
})
invokeTag('captureTitle','sitemesh',8,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',8,[:],2)
printHtmlPart(3)
})
invokeTag('captureHead','sitemesh',9,[:],1)
printHtmlPart(3)
createTagBody(1, {->
printHtmlPart(4)
invokeTag('message','g',11,['code':("default.link.skip.label"),'default':("Skip to content&hellip;")],-1)
printHtmlPart(5)
expressionOut.print(createLink(uri: '/'))
printHtmlPart(6)
invokeTag('message','g',14,['code':("default.home.label")],-1)
printHtmlPart(7)
createTagBody(2, {->
invokeTag('message','g',15,['code':("default.list.label"),'args':([entityName])],-1)
})
invokeTag('link','g',15,['class':("list"),'action':("index")],2)
printHtmlPart(8)
createTagBody(2, {->
invokeTag('message','g',16,['code':("default.new.label"),'args':([entityName])],-1)
})
invokeTag('link','g',16,['class':("create"),'action':("create")],2)
printHtmlPart(9)
invokeTag('message','g',20,['code':("default.show.label"),'args':([entityName])],-1)
printHtmlPart(10)
if(true && (flash.message)) {
printHtmlPart(11)
expressionOut.print(flash.message)
printHtmlPart(12)
}
printHtmlPart(13)
if(true && (employeeInstance?.address)) {
printHtmlPart(14)
invokeTag('message','g',28,['code':("employee.address.label"),'default':("Address")],-1)
printHtmlPart(15)
invokeTag('fieldValue','g',30,['bean':(employeeInstance),'field':("address")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (employeeInstance?.city)) {
printHtmlPart(18)
invokeTag('message','g',37,['code':("employee.city.label"),'default':("City")],-1)
printHtmlPart(19)
invokeTag('fieldValue','g',39,['bean':(employeeInstance),'field':("city")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (employeeInstance?.country)) {
printHtmlPart(20)
invokeTag('message','g',46,['code':("employee.country.label"),'default':("Country")],-1)
printHtmlPart(21)
invokeTag('fieldValue','g',48,['bean':(employeeInstance),'field':("country")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (employeeInstance?.dateOfBirth)) {
printHtmlPart(22)
invokeTag('message','g',55,['code':("employee.dateOfBirth.label"),'default':("Date Of Birth")],-1)
printHtmlPart(23)
invokeTag('formatDate','g',57,['date':(employeeInstance?.dateOfBirth)],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (employeeInstance?.deskLocation)) {
printHtmlPart(24)
invokeTag('message','g',64,['code':("employee.deskLocation.label"),'default':("Desk Location")],-1)
printHtmlPart(25)
invokeTag('fieldValue','g',66,['bean':(employeeInstance),'field':("deskLocation")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (employeeInstance?.employeeID)) {
printHtmlPart(26)
invokeTag('message','g',73,['code':("employee.employeeID.label"),'default':("Employee ID")],-1)
printHtmlPart(27)
invokeTag('fieldValue','g',75,['bean':(employeeInstance),'field':("employeeID")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (employeeInstance?.extension)) {
printHtmlPart(28)
invokeTag('message','g',82,['code':("employee.extension.label"),'default':("Extension")],-1)
printHtmlPart(29)
invokeTag('fieldValue','g',84,['bean':(employeeInstance),'field':("extension")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (employeeInstance?.firstName)) {
printHtmlPart(30)
invokeTag('message','g',91,['code':("employee.firstName.label"),'default':("First Name")],-1)
printHtmlPart(31)
invokeTag('fieldValue','g',93,['bean':(employeeInstance),'field':("firstName")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (employeeInstance?.jobTitle)) {
printHtmlPart(32)
invokeTag('message','g',100,['code':("employee.jobTitle.label"),'default':("Job Title")],-1)
printHtmlPart(33)
invokeTag('fieldValue','g',102,['bean':(employeeInstance),'field':("jobTitle")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (employeeInstance?.joiningDate)) {
printHtmlPart(34)
invokeTag('message','g',109,['code':("employee.joiningDate.label"),'default':("Joining Date")],-1)
printHtmlPart(35)
invokeTag('formatDate','g',111,['date':(employeeInstance?.joiningDate)],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (employeeInstance?.lastName)) {
printHtmlPart(36)
invokeTag('message','g',118,['code':("employee.lastName.label"),'default':("Last Name")],-1)
printHtmlPart(37)
invokeTag('fieldValue','g',120,['bean':(employeeInstance),'field':("lastName")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (employeeInstance?.ldapUserID)) {
printHtmlPart(38)
invokeTag('message','g',127,['code':("employee.ldapUserID.label"),'default':("Ldap User ID")],-1)
printHtmlPart(39)
invokeTag('fieldValue','g',129,['bean':(employeeInstance),'field':("ldapUserID")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (employeeInstance?.mobileNumber)) {
printHtmlPart(40)
invokeTag('message','g',136,['code':("employee.mobileNumber.label"),'default':("Mobile Number")],-1)
printHtmlPart(41)
invokeTag('fieldValue','g',138,['bean':(employeeInstance),'field':("mobileNumber")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (employeeInstance?.nickName)) {
printHtmlPart(42)
invokeTag('message','g',145,['code':("employee.nickName.label"),'default':("Nick Name")],-1)
printHtmlPart(43)
invokeTag('fieldValue','g',147,['bean':(employeeInstance),'field':("nickName")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (employeeInstance?.personalEmail)) {
printHtmlPart(44)
invokeTag('message','g',154,['code':("employee.personalEmail.label"),'default':("Personal Email")],-1)
printHtmlPart(45)
invokeTag('fieldValue','g',156,['bean':(employeeInstance),'field':("personalEmail")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (employeeInstance?.relevantExperience)) {
printHtmlPart(46)
invokeTag('message','g',163,['code':("employee.relevantExperience.label"),'default':("Relevant Experience")],-1)
printHtmlPart(47)
invokeTag('fieldValue','g',165,['bean':(employeeInstance),'field':("relevantExperience")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (employeeInstance?.reportingManager)) {
printHtmlPart(48)
invokeTag('message','g',172,['code':("employee.reportingManager.label"),'default':("Reporting Manager")],-1)
printHtmlPart(49)
invokeTag('fieldValue','g',174,['bean':(employeeInstance),'field':("reportingManager")],-1)
printHtmlPart(16)
}
printHtmlPart(50)
createTagBody(2, {->
printHtmlPart(51)
createTagBody(3, {->
invokeTag('message','g',182,['code':("default.button.edit.label"),'default':("Edit")],-1)
})
invokeTag('link','g',182,['class':("edit"),'action':("edit"),'resource':(employeeInstance)],3)
printHtmlPart(52)
invokeTag('actionSubmit','g',183,['class':("delete"),'action':("delete"),'value':(message(code: 'default.button.delete.label', default: 'Delete')),'onclick':("return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');")],-1)
printHtmlPart(53)
})
invokeTag('form','g',185,['url':([resource:employeeInstance, action:'delete']),'method':("DELETE")],2)
printHtmlPart(54)
})
invokeTag('captureBody','sitemesh',187,[:],1)
printHtmlPart(55)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1447264338000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
