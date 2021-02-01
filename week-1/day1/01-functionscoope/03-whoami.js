function whoAmI(value){
   
    if(typeof value === "number"){
        return "u r number";
    }
    else if (typeof value === "string"){
        return "u r string";
    }
    else if(typeof value === "null"){
        return "u r null"

    }
    else if(typeof value === "function"){
        return "u r function"
    }
    else{
        return undefined;
    }
}
console.log(whoAmI(99));
console.log(whoAmI("hello"));
console.log(whoAmI(null));
