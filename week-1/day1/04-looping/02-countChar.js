//linear search
let s = "hello code.id";
for (let i = 0; i < s.length;i++){
    if (s[i]==="."){
        console.log(i);
    }
}

//reverse 
let x="";
for (let i=s.length-1; i >= 0;i--){
    x += s[i]; // x = x + s[i]
}
console.log(x);