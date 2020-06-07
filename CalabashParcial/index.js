const shell = require('shelljs');
const fs = require('fs');
const mutantsArray = [3,4,7,24,55,63,65,124,132,306,569]

const correrPrueba = (num) => {

    fs.copyFile(`./mutantes/com.evancharlton.mileage-mutant${num}.apk`, `./com.evancharlton.mileage-mutant${num}.apk`, (err) => {
        console.log("COPY: ", err);
        if (err) throw err;
    });

    shell.exec(`calabash-android resign com.evancharlton.mileage-mutant${num}.apk`);
    // Si es necesario aca se debe cambiar el nombre del mutante para ejecutar
   
    shell.exec(`calabash-android run com.evancharlton.mileage${num}.apk --format html --out reports${num}.html features/mileage.feature`);
}

correrPrueba(3);

/*
for(let mutant of mutantsArray) {
    correrPrueba(mutant);
}
*/