class UrlMappings {

	static mappings = {

        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/$controller/search/$id"(controller: "employee", action: "searchId")
        "/$controller/searchName/$name"(controller: "employee", action: "searchName")
        "/$controller/searchParams?"(controller: "employee", action: "searchParams")

        "/"(view:"/index")
        "500"(view:'/error')
	}
}
