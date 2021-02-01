var s = "code".charAt(2);
console.log(s);

var s = "code.id".substr(0,4);
console.log(s);

//compare add & b
var a = "add";
var b = "b";
console.log(a<b);

//compare ad & ab
var a = "add";
var b = "ab";
console.log(a < b);

//index of 
console.log("code ecma".indexOf("code"));//return 0 
console.log("code ecma".indexOf("ecma"));//return 5

//decomposition -> diubah menjadi array
var s = "java,javascript,phyton";
console.log(s.split(","));

let l = "codeecma";
console.log(l.split(""));

//function replace
var s = "hello world".replace("world","js");
console.log(s);