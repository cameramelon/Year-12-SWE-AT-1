const sqlite3 = require("sqlite3").verbose();
const db = new sqlite3.Database("database/data_source.db");

let myString = "[\n";
db.all("SELECT * FROM cards", function (err, rows) {
    let myCounter = 0;
    rows.forEach(function (row) {
        // for debugging
        // console.log(row.extID + ": " + row.name + ": " + row.hyperlink + ": " + row.about + ": " + row.image + ": " + row.language);
        myString =
            myString +
            '{\n"extID":' +
            row.extID +
            ',\n"name":"' +
            row.name +
            '",\n"hyperlink":"' +
            row.hyperlink +
            '",\n"about":"' +
            row.about +
            '",\n"image":"' +
            row.image +
            '",\n"language":"' +
            row.language +
            '",\n"alt":"' +
            row.alt +
            '",\n"buttontext":"' +
            row.buttontext;
        myCounter++;
        if (myCounter == rows.length) {
            myString = myString + '"\n}\n';
        } else {
            myString = myString + '"\n},\n';
        }
    });

    // console.log(myString);
    var fs = require("fs");
    fs.writeFile("public/json/cardData.json", myString + "]", function (err) {
        if (err) {
            console.log(err);
        }
    });
});

let myString2 = "[\n";
db.all("SELECT * FROM upgrades", function (err, rows) {
    let myCounter = 0;
    rows.forEach(function (row) {
        // for debugging
        // console.log(row.extID + ": " + row.name + ": " + row.hyperlink + ": " + row.about + ": " + row.image + ": " + row.language);
        myString2 =
            myString2 +
            '{\n"id":' +
            row.id +
            ',\n"monkeyname":"' +
            row.monkeyname +
            '",\n"u1xx":"' +
            row.u1xx +
            '",\n"u2xx":"' +
            row.u2xx +
            '",\n"u3xx":"' +
            row.u3xx +
            '",\n"u4xx":"' +
            row.u4xx +
            '",\n"u5xx":"' +
            row.u5xx +
            '",\n"ux1x":"' +
            row.ux1x +
            '",\n"ux2x":"' +
            row.ux2x +
            '",\n"ux3x":"' +
            row.ux3x +
            '",\n"ux4x":"' +
            row.ux4x +
            '",\n"ux5x":"' +
            row.ux5x +
            '",\n"uxx1":"' +
            row.uxx1 +
            '",\n"uxx2":"' +
            row.uxx2 +
            '",\n"uxx3":"' +
            row.uxx3 +
            '",\n"uxx4":"' +
            row.uxx4 +
            '",\n"uxx5":"' +
            row.uxx5 +
            '",\n"Paragon":"' +
            row.Paragon;
        myCounter++;
        if (myCounter == rows.length) {
            myString2 = myString2 + '"\n}\n';
        } else {
            myString2 = myString2 + '"\n},\n';
        }
    });

    // console.log(myString);
    var fs = require("fs");
    fs.writeFile(
        "public/json/upgradeData.json",
        myString2 + "]",
        function (err) {
            if (err) {
                console.log(err);
            }
        },
    );
});

const spawn = require("child_process").spawn;
// you can add arguments with spawn('python',["path/to/script.py", arg1, arg2, ...])
const pythonProcess = spawn("python", ["database_manager.py"]);

// Insert additional backend js above the express server configuration

const express = require("express");
const path = require("path");
const app = express();
app.use(express.static(path.join(__dirname, "public")));

app.get("/", function (req, res) {
    res.sendFile(path.join(__dirname, "public/html/home.html"));
});
app.listen(5000, () =>
    console.log(
        "Server is running on Port 5000, visit http://localhost:5000/ or http://127.0.0.1:5000 to access your website",
    ),
);
