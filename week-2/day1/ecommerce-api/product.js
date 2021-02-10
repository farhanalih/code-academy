//Select data
exports.selectProduct = function(app,pool){
    app.get("/api/selectproduct",(req,res)=>{
        pool.query(
            "select prod_id,prod_title,prod_description,prod_stock,prod_price,prod_condition,prod_manufacture,prod_image,prod_cate_id from product",
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
exports.insertProduct = function(app,pool){
    app.post("/api/insertproduct",(req,res)=>{
        const {prod_title,prod_description,prod_stock,prod_price,prod_condition,prod_manufacture,prod_image,prod_cate_id} = req.body;
        pool.query(
            "insert into product (prod_title,prod_description,prod_stock,prod_price,prod_condition,prod_manufacture,prod_image,prod_cate_id) values($1,$2,$3,$4,$5,$6,$7,$8)",
            [prod_title,prod_description,prod_stock,prod_price,prod_condition,prod_manufacture,prod_image,prod_cate_id],
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
exports.updateProduct = function(app,pool){
    app.put("/api/updateproduct/:id",(req,res)=>{
        const{id} = req.params;
        const {prod_title,prod_description,prod_stock,prod_price,prod_condition,prod_manufacture,prod_image,prod_cate_id} = req.body;
        pool.query(
            "update product set prod_title = $1,prod_description = $2,prod_stock = $3,prod_price = $4,prod_condition = $5, prod_manufacture = $6,prod_image = $7, prod_cate_id = $8  where prod_id = $9",
            [prod_title,prod_description,prod_stock,prod_price,prod_condition,prod_manufacture,prod_image,prod_cate_id,id],
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
exports.deleteProduct = function(app,pool){
    app.delete("/api/deleteproduct/:id",(req,res)=>{
        const{id} = req.params;
        pool.query(
            "delete from product where prod_id = $1",
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
