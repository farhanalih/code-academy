//Select data
exports.selectProvince = function(app,pool){
    app.get("/api/selectprovince",(req,res)=>{
        pool.query(
            "select prov_id,prov_name from province",
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
exports.insertProvince = function(app,pool){
    
    app.post("/api/insertprovince",(req,res)=>{
        const {prov_name} = req.body;
        pool.query(
            "insert into province (prov_name) values($1)",
            [prov_name],
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
exports.updateProvince = function(app,pool){
    app.put("/api/updateprovince/:id",(req,res)=>{
        const{id} = req.params;
        const {prov_name} = req.body;
        pool.query(
            "update province set prov_name = $1 where prov_id = $2",
            [prov_name,id],
            (error,results)=>{
                if (error) {
                    throw error;
                }
                res.sendStatus(200);
            }
        )
    });
};

//delete data
exports.deleteProvince = function(app,pool){
    app.delete("/api/deleteprovince/:id",(req,res)=>{
        const{id} = req.params;
        pool.query(
            "delete from province where prov_id = $1",
            [id],
            (error,results)=>{
                if (error) {
                    throw error;
                }
                res.sendStatus(200);
            }
        )
    })
}
