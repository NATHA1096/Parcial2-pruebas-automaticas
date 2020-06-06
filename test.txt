const shell = require('shelljs');
const fs = require('fs');

const correrPrueba = (num) => {

    fs.copyFile(`../mutantes/com.evancharlton.mileage-mutant${num}.apk`, `./com.evancharlton.mileage-mutant${num}.apk`, (err) => {
        console.log("COPY: ", err);
        if (err) throw err;
    });

    shell.exec(`calabash-android resign com.evancharlton.mileage-mutant${num}.apk`);
    shell.exec(`calabash-android run com.evancharlton.mileage-mutant${num}.apk`);
}

correrPrueba(1);