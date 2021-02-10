//Select data
exports.selectCity = function(app,pool){
    app.get("/api/selectcity",(req,res)=>{
        pool.query(
            "select city_id,city_name,city_prov_id from city",
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
exports.insertCity = function(app,pool){
    
    app.post("/api/insertcity",(req,res)=>{
        const {city_name,city_prov_id} = req.body;
        pool.query(
            "insert into city (city_name,city_prov_id) values($1,$2)",
            [city_name,city_prov_id],
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
exports.updateCity = function(app,pool){
    app.put("/api/updatecity/:id",(req,res)=>{
        const{id} = req.params;
        const {city_name,city_prov_id} = req.body;
        pool.query(
            "update city set city_name = $1,city_prov_id = $2 where city_id = $3",
            [city_name,city_prov_id,id],
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
exports.deleteCity = function(app,pool){
    app.delete("/api/deletecity/:id",(req,res)=>{
        const{id} = req.params;
        pool.query(
            "delete from city where city_id = $1",
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
