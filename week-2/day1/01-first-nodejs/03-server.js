const http = require('http');

const port = process.env.PORT || 1337;

const product = {
    id : 1,
    names : "Laptop Dell",
    price : 1500.00,
    variant : {
        type : "Games",
        core : "i7 Core"
    }
}


const server = http.createServer(function(req,res){
    if (req.url ==='/') return responseText(req,res);
    if (req.url ==='/json') return responseJson(req,res);
    responseNotFound(req,res);
});

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

server.listen(port);
console.log(`Server listening on port ${port}`);