import Student,{beasiswa,regular} from './student.js'
export const listStudent =(...list)=>{
    return list;
}

export const totalB = () =>{
    return beasiswa.totalB;
}

export const totalStu = () =>{
    return Student.totalStu;
}

export const totalR = () =>{
    return regular.totalR;
}

export const totalI = () =>{
    return beasiswa.totalI;
}

export const totalP = () =>{
    return regular.totalP;
}

export const totStuBootcamp = (bootcamp,...list) =>{
    let count = 0;
    for (const i of list) {
        if (i.bootc === bootcamp) {
            count ++;
        }
    }
    return count;
}