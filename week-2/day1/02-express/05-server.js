const fs = require('fs');
const port = process.env.PORT || 1337;
//initial variable app to handle module express
const express = require('express');
const app = express();
//router 
app.get("/",responseText);
app.get("json",responseJson);
app.get("/static/*",responseStatic)
app.listen(port,()=> console.log(`Server listening to port ${port}`));






// const server = http.createServer(function(req,res){
//     if (req.url ==='/') return responseText(req,res);
//     if (req.url ==='/json') return responseJson(req,res);
//     if (req.url.match(/^\/static/)) return responseStatic(req,res);
//     responseNotFound(req,res);
// });

function responseText(req,res){
    res.setHeader("Content-Type","text/plain");
    res.end("JS Bootcamp with code.id");
}

function responseJson(req,res){
    res.setHeader("Content-Type","application/json");
    res.end(JSON.stringify(product));
}

function responseNotFound(req,res){
    res.writeHead(404,{"Content-Type":"text/plain"});
    res.end("Page Not Found");
}

function responseStatic(req,res){
    const filename= `${__dirname}/public${req.url.split('/static')[1]}`;
    fs.createReadStream(filename)
    .on("Error", ()=> responseNotFound(req,res))
    .pipe(res);
}
// server.listen(port);
// console.log(`Server listening on port ${port}`);

