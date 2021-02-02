let fruit = ["Jeruk","Mangga","Jambu","Durian","Rambutan"];
let sayur = ["Kangkung","Bayam","Tomat","Bawang","Bayam"];

let newF = ["Jeruk","Mangga","Jambu","Durian","Rambutan"];
let newS = ["Kangkung","Bayam","Tomat","Bawang","Bayam"];

fruit.push("Anggur","Banana","Sirsak");
console.log(fruit);//A. ['Jeruk', 'Mangga', 'Jambu', 'Durian', 'Rambutan', 'Anggur', 'Banana', 'Sirsak']

fruit.pop()
console.log(fruit); //B. ['Jeruk', 'Mangga', 'Jambu', 'Durian', 'Rambutan', 'Anggur', 'Banana']

fruit.splice(2,1)
console.log(fruit);//C. ['Jeruk', 'Mangga', 'Durian', 'Rambutan', 'Anggur', 'Banana']

fruit.splice(2,3)
console.log(fruit);//D. ['Jeruk', 'Mangga', 'Banana']

fruit.splice(2,0,"Rambutan","Bengkuang");
console.log(fruit); //E. ['Jeruk', 'Mangga', 'Rambutan', 'Bengkuang', 'Banana']

fruit.splice(4,1,"Nangka");
console.log(fruit);//F. ['Jeruk', 'Mangga', 'Rambutan', 'Bengkuang', 'Nangka']

var BS = newF.concat(newS)
console.log(BS); //G. join ['Jeruk', 'Mangga', 'Jambu', 'Durian', 'Rambutan', 'Kangkung', 'Bayam', 'Tomat', 'Bawang', 'Bayam']

var rev = BS.reverse()
console.log(rev);//H. reverse

var unrev = rev.reverse();
console.log(unrev);

function nuker (unrev, x, y){
    let pos = 0;
    let pos2 = 0;
    for (let i = 0; i < unrev.length; i++){
        if(unrev[i].toUpperCase()==x.toUpperCase()){
            pos=i;
        }
        if (unrev[i].toUpperCase()==y.toUpperCase()){
            pos2 = i;
        }
    }
    unrev.splice(pos,1,y);
    unrev.splice(pos2,1,x);
    console.log(unrev);
}

nuker(unrev,"TOMAT","Jeruk");




