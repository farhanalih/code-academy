//Select data
exports.selectRoles = function(app,pool){
    app.get("/api/selectroles",(req,res)=>{
        pool.query(
            "select role_id,role_name from roles",
            [],
            (error,results)=>{
                if (error) {
                    throw error;
                }
                res.status(200).json(results.rows);
            }
        )
    })
};

//Insert data
exports.insertRoles = function(app,pool){
    
    app.post("/api/insertroles",(req,res)=>{
        const {role_name} = req.body;
        pool.query(
            "insert into roles (role_name) values($1)",
            [role_name],
            (error,results)=>{
                if (error) {
                    throw error;
                }
                res.sendStatus(200);
            }
        )
    })
};

//update data with put
exports.updateRoles = function(app,pool){
    app.put("/api/updateroles/:id",(req,res)=>{
        const{id} = req.params;
        const {role_name} = req.body;
        pool.query(
            "update roles set role_name = $1 where role_id = $2",
            [role_name,id],
            (error,results)=>{
                if (error) {
                    throw error;
                }
                res.sendStatus(201);
            }
        )
    });
};

//delete data
exports.deleteRoles = function(app,pool){
    app.delete("/api/deleteroles/:id",(req,res)=>{
        const{id} = req.params;
        pool.query(
            "delete from roles where role_id = $1",
            [id],
            (error,results)=>{
                if (error) {
                    throw error;
                }
                res.sendStatus(200);
            }
        )
    });
};
