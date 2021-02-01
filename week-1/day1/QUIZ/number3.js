function howManyFrogJump(x,y,z){
    let counter = 0;
    for (let i = x; i < y ; i +=z){
        counter++
    }
    return counter

}
console.log(howManyFrogJump(10,85,30));
