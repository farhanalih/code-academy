const isPermutation = (x,y) =>{
    const xi = x.split("");
    const yj = y.split("");
    cek = false;
    let count = 0;

    if (xi.length===yj.length) {
        for (const i of xi) {
            for (const j of yj) {
                if (i===j) {
                    count ++ 
                    break;
                }
            }
        }
        if (count===x.length) {
            cek = true;
        }
    }
    return cek;
}

console.log(isPermutation("aba","aab"));