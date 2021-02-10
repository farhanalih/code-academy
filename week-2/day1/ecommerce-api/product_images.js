//Select data
exports.selectProduct_images = function(app,pool){
    app.get("/api/selectproduct_images",(req,res)=>{
        pool.query(
            "select prim_id,prim_file_name,prim_path,prim_prod_id from product_images",
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
exports.insertProduct_images = function(app,pool){
    
    app.post("/api/insertproduct_images",(req,res)=>{
        const {prim_id,prim_file_name,prim_path,prim_prod_id} = req.body;
        pool.query(
            "insert into product_images (prim_file_name,prim_path,prim_prod_id) values($1,$2,$3)",
            [prim_file_name,prim_path,prim_prod_id],
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
exports.updateProduct_images = function(app,pool){
    app.put("/api/updateproduct_images/:prim_id",(req,res)=>{
        const {prim_id} = req.params;
        const {prim_file_name,prim_path,prim_prod_id} = req.body;
        pool.query(
            "update product_images set prim_file_name = $2, prim_path = $3, prim_prod_id= $4 where prim_id = $1",
            [prim_id,prim_file_name,prim_path,prim_prod_id],
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
exports.deleteProduct_images = function(app,pool){
    app.delete("/api/deleteproduct_images/:id",(req,res)=>{
        const{id} = req.params;
        pool.query(
            "delete from product_images where prim_id = $1",
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
