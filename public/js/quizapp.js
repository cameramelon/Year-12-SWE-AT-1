const dict = {
    1: [""],
    2: [""],
    3: [""],
    4: [""],
    5: [""],
    6: [""],
    7: [""],
    8: [""],
    9: [""],
    10: [""],
    11: [""],
    12: [""],
    13: [""],
    14: [""],
    15: [""],
    16: [""],
    17: [""],
    18: [""],
    19: [""],
    20: [""],
    21: [""],
    22: [""],
    23: [""],
    24: [""],
    25: [""],
    26: [""],
};

let result = "";
fetch("../json/upgradeData.json")
    .then(function (response) {
        return response.json();
    })
    .then(function (data) {
        appendData(data);
    })
    .catch(function (err) {
        console.log("error: " + err);
    });

function appendData(data) {
    data.forEach(
        ({
            id,
            monkeyname,
            u1xx,
            u2xx,
            u3xx,
            u4xx,
            u5xx,
            ux1x,
            ux2x,
            ux3x,
            ux4x,
            ux5x,
            uxx1,
            uxx2,
            uxx3,
            uxx4,
            uxx5,
            Paragon,
        } = rows) => {
            dict[id].push(
                u1xx,
                u2xx,
                u3xx,
                u4xx,
                u5xx,
                ux1x,
                ux2x,
                ux3x,
                ux4x,
                ux5x,
                uxx1,
                uxx2,
                uxx3,
                uxx4,
                uxx5,
                Paragon,
            );
            result += `
        <div class="table">
        <h3 class="table-name">${monkeyname}\n</h3>
        <table class="table-table">
        <tr class="table-header">
        <th class="table-column1">Path</th> <th class="table-column2">Upgrade Name</th><th class="table-column1">Path</th> <th class="table-column2">Upgrade Name</th><th class="table-column1">Path</th> <th class="table-column2">Upgrade Name</th>
        </tr>
        <tr class="table-row1"><td class="table-label" id="${id}-1">1xx</td><td>-</td><td class="table-label" id="${id}-6" >x1x</td><td>-</td><td class="table-label" id="${id}-11">xx1</td><td>-</td></tr>
        <tr class="table-row2"><td class="table-label" id="${id}-2">2xx</td><td>-</td><td class="table-label" id="${id}-7" >x2x</td><td>-</td><td class="table-label" id="${id}-12">xx2</td><td>-</td></tr>
        <tr class="table-row1"><td class="table-label" id="${id}-3">3xx</td><td>-</td><td class="table-label" id="${id}-8" >x3x</td><td>-</td><td class="table-label" id="${id}-13">xx3</td><td>-</td></tr>
        <tr class="table-row2"><td class="table-label" id="${id}-4">4xx</td><td>-</td><td class="table-label" id="${id}-9" >x4x</td><td>-</td><td class="table-label" id="${id}-14">xx4</td><td>-</td></tr>
        <tr class="table-row1"><td class="table-label" id="${id}-5">5xx</td><td>-</td><td class="table-label" id="${id}-10">x5x</td><td>-</td><td class="table-label" id="${id}-15">xx5</td><td>-</td></tr>`;
            if (Paragon != "-") {
                result += `<tr class="table-row2" style="height: 2rem;"><td class="table-label" id="${id}-16">Paragon</td><td colspan="5">-</td></tr>`;
            }
            result += `
        </table>
        </div>
        `;
        },
    );
    document.querySelector(".container-quiz").innerHTML = result;
}

if ("serviceWorker" in navigator) {
    window.addEventListener("load", function () {
        navigator.serviceWorker
            .register("../js/serviceworker.js")
            .then((res) => console.log("service worker registered"))
            .catch((err) => console.log("service worker not registered", err));
    });
}

function test() {
    const textInput = document.getElementById("input");
    const title = document.getElementById("title");

    Object.values(dict).forEach((value, index) => {
        value.forEach((upgradename) => {
            if (textInput.value === upgradename && textInput.value != "") {
                title.innerHTML = "Match found";

                tablebox = document.getElementById(
                    index + 1 + "-" + value.indexOf(upgradename),
                );
                console.log(index + 1 + "-" + value.indexOf(upgradename));
                tablebox.innerHTML = upgradename;
            }
        });
    });
}

const intervalId = setInterval(test, 1);
