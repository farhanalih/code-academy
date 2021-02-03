import {listStudent,totalB,totalStu,totalI,totalP,totalR,totStuBootcamp} from './apistudent.js';
import Student,{beasiswa,regular}from './student.js'
function main(){
    //beasiswa
    const Asep = new beasiswa("Asep","Bandung","S1","3.45","","NodeJS","1","2019","3",100000)
    console.log(Asep);
    const Ami = new beasiswa ("Ami","Bogor","S1","3.10","","NodeJS","1","2019","3",100000)
    console.log(Ami);
    const Budi = new beasiswa ("Budi","Depok","S1","3.25","","Java","2","2020","3",100000)
    console.log(Budi);
    const Cindy = new beasiswa ("Cindy","Jakarta","D3","3.30","","Java","2","2020","3",100000)
    console.log(Cindy);
    const Dedy = new beasiswa ("Dedy","Bekasi","S2","2.98","","NodeJS","1","2019","4",100000)
    console.log(Dedy);
    //regular
    const Desta = new regular ("Desta","Jakarta","S1","3.15","","Golang","3","2021","3",5000000)
    console.log(Desta);
    const Shinta = new regular ("Shinta","Jakarta","S1","3.15","","Golang","3","2021","4",5000000)
    console.log(Shinta);
    const Meita = new regular ("Meita","Jakarta","S1","3.00","","Python","3","2021","4",7000000)
    console.log(Meita);

    const nodeJS = totStuBootcamp("NodeJS",Asep,Ami,Budi,Cindy,Dedy,Desta,Shinta,Meita);
    const golang = totStuBootcamp("Golang",Asep,Ami,Budi,Cindy,Dedy,Desta,Shinta,Meita);
    const python = totStuBootcamp("Python",Asep,Ami,Budi,Cindy,Dedy,Desta,Shinta,Meita);

    // console.log(Student.totalStu);
    // console.log(beasiswa.totalB);
    // console.log(regular.totalR);
    // const stu = listStudent(Asep,Ami,Budi,Cindy,Dedy,Desta,Shinta,Meita);
    // console.log(stu);
    console.log("Total Siswa "+totalStu());
    console.log("Total Beasiswa "+totalB());
    console.log("Total Regular "+totalR());
    console.log("Total Intensif " + totalI());
    console.log("Total Net Price "+ totalP());
    console.log("NodeJS : "+nodeJS);
    console.log("Golang : "+golang);
    console.log("Python : "+python);
    
}

main()