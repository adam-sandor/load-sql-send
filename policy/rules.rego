package policy

import future.keywords.if

default allow = false

allow {
    print("Allor rule")
    input.path == "/allow"
}

allow {
    print("Checking permissions")
    permissions := sql.send({
    	"driver": "mysql",
    	"raise_error": false,
    	"data_source_name": "load:loadpwd@tcp(db:3306)/permissions",
    	"query": "SELECT * FROM user_permissions WHERE user_id = $1 AND permission_id = $2",
    	"args": [input.user, permission(input.path)],
    })
    print(permissions)
    count(permissions.rows) > 0
}

permission(path) = "vets" if path == "/vets"
permission(path) = "owners" if path == "/owners"