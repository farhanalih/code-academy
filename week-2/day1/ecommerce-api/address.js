//Select data
exports.selectAddress = function(app,pool){
    app.get("/api/selectaddress",(req,res)=>{
        pool.query(
            "select addr_id,addr_email,addr_fullname,addr_phone_number,adr_is_default,addr_zipcode,addr_street1,addr_street2,addr_city_id,addr_user_id from address",
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
exports.insertAddress = function(app,pool){
    app.post("/api/insertaddress",(req,res)=>{
        const {addr_email,addr_fullname,addr_phone_number,adr_is_default,addr_zipcode,addr_street1,addr_street2,addr_city_id,addr_user_id} = req.body;
        pool.query(
            "insert into address (addr_email,addr_fullname,addr_phone_number,adr_is_default,addr_zipcode,addr_street1,addr_street2,addr_city_id,addr_user_id) values($1,$2,$3,$4,$5,$6,$7,$8,$9)",
            [addr_email,addr_fullname,addr_phone_number,adr_is_default,addr_zipcode,addr_street1,addr_street2,addr_city_id,addr_user_id],
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
exports.updateAddress = function(app,pool){
    app.put("/api/updateaddress/:id",(req,res)=>{
        const{id} = req.params;
        const {addr_email,addr_fullname,addr_phone_number,adr_is_default,addr_zipcode,addr_street1,addr_street2,addr_city_id,addr_user_id} = req.body;
        pool.query(
            "update address set addr_email = $1,addr_fullname = $2,addr_phone_number = $3,adr_is_default = $4,addr_zipcode = $5, addr_street1 = $6,addr_street2 = $7, addr_city_id = $8, addr_user_id = $9  where addr_id = $10",
            [addr_email,addr_fullname,addr_phone_number,adr_is_default,addr_zipcode,addr_street1,addr_street2,addr_city_id,addr_user_id,id],
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
exports.deleteAddress = function(app,pool){
    app.delete("/api/deleteaddress/:id",(req,res)=>{
        const{id} = req.params;
        pool.query(
            "delete from address where addr_id = $1",
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
