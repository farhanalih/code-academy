let z =""
let pos=1
let neg=-1
const deretNegation = (x) => {
    for (let i = 1; i<=x; i++){
        if(i%2==0){
            z=z.toString()+pos.toString();
            pos++;
        }
        else{
            z=z.toString()+neg.toString();
            neg--;
        }
        z+=','
    }
    z=z.slice(0,-1);
    return z;
}
console.log(deretNegation(25));