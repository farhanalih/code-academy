function randomPosition(k){
    let rand = Math.floor(Math.random()*900)+100;
    let randV = false;
    let counter = 0;
    let save = "";

    while(counter <= 900){
        counter = Math.floor(Math.random()*900+100);
        counterS = counter.toString().split("");
        if (counterS[0]==k||counterS[1]==k||counterS[2]==k){
            save += save + counter + ",";
        }
    }
    return save;
}
console.log(randomPosition(6));
