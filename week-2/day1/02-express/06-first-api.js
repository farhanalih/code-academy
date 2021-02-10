const express = require ('express');
const bodyParser = require('body-parser');
const cors = require('cors');

//create pool for pg database
const Pool = require('pg').Pool;

//configuration database pg
const pool = new Pool({
    user : "postgres",
    host : "localhost",
    database : "batch7",
    password : "root",
    port : 5432
});

const app = express();
app.use(cors());
app.use(express.urlencoded({extended : true}));
app.use(express.json());

const port = process.allowedNodeEnvironmentFlags.PORT || 1337;
app.listen(port, ()=> console.log(`Server listening on port ${port}`));

//query table regions
app.get("/api/v1/regions",(req,res)=>{
    pool.query(
        "select region_id,region_name from regions",
        [],
        (error, results)=>{
            if (error) {
                throw error;
            }
            res.status(200).json(results.rows);
        }
    )
});

//insert 
app.post("/api/v1/regions",(req,res)=>{
    const {region_name} = req.body;
    pool.query(
        "insert into regions(region_name) values($1)",
        [region_name],
        (error,results)=>{
            if (error) {
                throw error;
            }
            res.sendStatus(200);
        }
    )
});

//update table use method put
app.put("/api/v1/regions/:id",(req,res)=>{
    const{id} = req.params;
    const {region_name} = req.body;
    pool.query(
        "update regions set region_name = $1 where region_id=$2",
        [region_name,id],
        (error,results)=>{
            if (error) {
                throw error;
            }
            res.sendStatus(201);
        }
    )
});

//select by filter
app.get("/api/v1/regions/:id",(req,res)=>{
    const {id} = req.params;
    pool.query(
        "select region_id,region_name from regions where region_id = $1",
        [id],
        (error, results)=>{
            if (error) {
                throw error;
            }
            res.status(200).json(results.rows);
        }
    )
});

//delete
app.delete("/api/v1/regions/:id",(req,res)=>{
    const{id} = req.params;
    pool.query(
        "delete from regions where region_id=$1",
        [id],
        (error,results)=>{
            if (error) {
                throw error;
            }
            res.sendStatus(200);
        }
    )
});

//delete without id
//kasus : tidak memakai params, tapi semua attribute
//dikirim dari body.
app.put("/api/v1/regions/",(req,res)=>{
    const {region_id,region_name} = req.body;
    pool.query(
        "update regions set region_name = $1 where region_id=$2",
        [region_name,region_id],
        (error,results)=>{
            if (error) {
                throw error;
            }
            res.sendStatus(200);
        }
    )
});