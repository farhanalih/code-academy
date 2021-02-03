//with replace 
function replaceString (str){
    let string = str.replace(/ /g,"%20");// g means global
    return string
}
console.log(replaceString("Mr Code Id"));

//with looping
const replaceStringLoop = (o) =>{
    let y = o.split("");
    for (let i = 0; i < y.length; i++) {
        if (y[i]=== " ") {
            y[i] = "%20";
        }
    }
    return y.join("");
}
console.log(replaceStringLoop("Farhan Ali Hidayat"));