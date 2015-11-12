class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/$controller/getbyid/$id"(controller: "employee", action: "getById")
        "/$controller/getbyfirstname/$name"(controller: "employee", action: "getByFirstName")
        "/$controller/getbycriteria?"(controller: "employee", action: "getByCriteria")
        "/$controller/ismanager/$employeeId"(controller: "employee", action: "isManager")
        "/$controller/getmanager/$employeeId"(controller: "employee", action: "getManager")

        "/"(view:"/index")
        "500"(view:'/error')
	}
}
