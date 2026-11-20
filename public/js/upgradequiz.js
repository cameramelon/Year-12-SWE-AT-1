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
        ({id, monkeyname, u1xx, u2xx, u3xx, u4xx, u5xx, ux1x, ux2x, ux3x, ux4x, ux5x, uxx1, uxx2, uxx3, uxx4, uxx5, Paragon} = rows) => {
            dict[id].push(u1xx, u2xx, u3xx, u4xx, u5xx, ux1x, ux2x, ux3x, ux4x, ux5x, uxx1, uxx2, uxx3, uxx4, uxx5, Paragon);
            result += `
                <div class="table">
                <h3 class="table-name">${monkeyname}\n</h3>
                <table class="table-table">
                <tr class="table-header">
                <th class="table-column1">Path</th> <th class="table-column2">Upgrade Name</th><th class="table-column1">Path</th> <th class="table-column2">Upgrade Name</th><th class="table-column1">Path</th> <th class="table-column2">Upgrade Name</th>
                </tr>
                <tr class="table-row1"><td class="table-label">1xx</td><td id="${id}-1"></td><td class="table-label">x1x</td><td id="${id}-6" ></td><td class="table-label">xx1</td><td id="${id}-11"></td></tr>
                <tr class="table-row2"><td class="table-label">2xx</td><td id="${id}-2"></td><td class="table-label">x2x</td><td id="${id}-7" ></td><td class="table-label">xx2</td><td id="${id}-12"></td></tr>
                <tr class="table-row1"><td class="table-label">3xx</td><td id="${id}-3"></td><td class="table-label">x3x</td><td id="${id}-8" ></td><td class="table-label">xx3</td><td id="${id}-13"></td></tr>
                <tr class="table-row2"><td class="table-label">4xx</td><td id="${id}-4"></td><td class="table-label">x4x</td><td id="${id}-9" ></td><td class="table-label">xx4</td><td id="${id}-14"></td></tr>
                <tr class="table-row1"><td class="table-label">5xx</td><td id="${id}-5"></td><td class="table-label">x5x</td><td id="${id}-10"></td><td class="table-label">xx5</td><td id="${id}-15"></td></tr>
            `;
            if (Paragon != "") {
                result += `<tr class="table-row2" style="height: 2rem;"><td class="table-label">Paragon</td><td colspan="5" id="${id}-16"></td></tr>`;
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
        navigator.serviceWorker.register("../js/serviceworker.js").then((res) => console.log("service worker registered")).catch((err) => console.log("service worker not registered", err));
    });
}

// actual code starts here :)
const dict = {1: [""], 2: [""], 3: [""], 4: [""], 5: [""], 6: [""], 7: [""], 8: [""], 9: [""], 10: [""], 11: [""], 12: [""], 13: [""], 14: [""], 15: [""], 16: [""], 17: [""], 18: [""], 19: [""], 20: [""], 21: [""], 22: [""], 23: [""], 24: [""], 25: [""], 26: [""],};
let time = 0;
let count = 0;
let timer;

let target = 1;


function func() {
    const textInput = document.getElementById("input");
    const timerText = document.getElementById("timer");
    const countText = document.getElementById("count");

    timerText.innerHTML = `Time: ${timeFormat(time)}`;
    countText.innerHTML = `Count: ${count}/${target}`;

    Object.values(dict).forEach((value, index) => {
        value.forEach((upgradename) => {
            if (textInput.value.replace(/[^a-zA-Z0-9]/g, "").toUpperCase() === upgradename.replace(/[^a-zA-Z0-9]/g, "").toUpperCase() && textInput.value != "") {
                tablebox = document.getElementById(index + 1 + "-" + value.indexOf(upgradename),);

                if (tablebox.innerHTML != "") {
                    return;
                }

                textInput.value = "";
                tablebox.innerHTML = upgradename;

                tablebox.classList.add("glow");
                setTimeout(() => {tablebox.classList.remove("glow");}, 250);

                count += 1;
            }
        });
    });

    if (count >= target) {
        const winscreen = document.getElementById("winscreen");
        const finalTimeText = document.getElementById("finalTimer");
        const upgradeTimeText = document.getElementById("upgradeTime");

        winscreen.style = "visibility: visible; transition: 0.4s;"

        finalTimeText.innerHTML = `Final Time: ${timeFormat(time)}`;
        upgradeTimeText.innerHTML = `Time: ${timeFormat(time / target)}/upgrade`;
    }
}

function timeFormat(time) {
    let seconds = Math.floor(time % 60);
    let minutes = Math.floor((time % 3600) / 60);
    let hours = Math.floor(time / 3600);

    if (hours >= 1) {
        return `${String(hours).padStart(2, '0')}:${String(minutes).padStart(2, '0')}:${String(seconds).padStart(2, '0')}`;
    }
    else {
        return `${String(minutes).padStart(2, '0')}:${String(seconds).padStart(2, '0')}`;
    }
}


const intervalId = setInterval(func, 1);

setInterval(() => {
    if (count < target) {
        time += 1;
    }
}, 1000);