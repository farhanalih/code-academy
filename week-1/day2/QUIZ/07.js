const isUniqueChars = (x) => {
    let y = x.split("");
    cek = true;
    for (let i = 0; i < y.length; i++) {
        for (let j = 0; j < y.length; j++) {
            if (i!==j) {
                if (y[i]===y[j]) {
                    cek = false ;
                    
                }
            }
            
        }
    }
    return console.log(cek);
}

isUniqueChars("abcdefg")// true
isUniqueChars("abcdefgha")//false