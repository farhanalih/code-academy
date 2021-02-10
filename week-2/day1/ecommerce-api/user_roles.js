exports.selectUser_roles = function(app,pool){
    app.get("/api/selectuser_roles",(req,res)=>{
        pool.query(
            "select user_id,role_id from user_roles",
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