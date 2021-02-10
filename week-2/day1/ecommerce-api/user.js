//Select data
exports.selectUsers = function(app,pool){
    app.get("/api/selectusers",(req,res)=>{
        pool.query(
            "select user_id,user_name,user_email,user_password from users",
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
exports.insertUsers = function(app,pool){
    app.post("/api/insertusers",(req,res)=>{
        const {user_name,user_email,user_password} = req.body;
        pool.query(
            "insert into users (user_name,user_email,user_password) values($1,$2,$3)",
            [user_name,user_email,user_password],
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
exports.updateUsers = function(app,pool){
    app.put("/api/updateusers/:id",(req,res)=>{
        const{id} = req.params;
        const {user_name,user_email,user_password} = req.body;
        pool.query(
            "update users set user_name = $1,user_email = $2,user_password = $3 where user_id = $4",
            [user_name,user_email,user_password,id],
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
exports.deleteUsers = function(app,pool){
    app.delete("/api/deleteusers/:id",(req,res)=>{
        const{id} = req.params;
        pool.query(
            "delete from users where user_id = $1",
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
