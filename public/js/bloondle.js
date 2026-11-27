let result = "";
const dict = []

fetch("../json/bloondleData.json")
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
        ({id, hint1, hint2, hint3, hint4, hint5} = rows) => {
            dict[id] = `${hint1}-${hint2}-${hint3}-${hint4}-${hint5}`;
        },
    );

    // console.log(dict);
}

if ("serviceWorker" in navigator) {
    window.addEventListener("load", function () {
        navigator.serviceWorker.register("../js/serviceworker.js").then((res) => console.log("service worker registered")).catch((err) => console.log("service worker not registered", err));
    });
}


const round = getRandomInt(21, 99);
console.log(round);

let hintcount = 0;


function revealHint(id) {
    const hint1 = document.getElementById("hint1");
    const hint2 = document.getElementById("hint2");
    const hint3 = document.getElementById("hint3");
    const hint4 = document.getElementById("hint4");
    const hint5 = document.getElementById("hint5");

    const hints = dict[round].split("-");

    const bloons = hints[0].split(",");
    const uniqueBloons = [...new Set(bloons)];
    const bloonNumbers = hints[4].split(",");

    if (id == 1) {  // Bloon types present
        hint1.innerHTML = "There are ";
        uniqueBloons.forEach((bloon) => {
            hint1.innerHTML += `${bloon}s`;

            if (uniqueBloons.indexOf(bloon) < uniqueBloons.length - 2) {
                hint1.innerHTML += `, `;
            }
            if (uniqueBloons.indexOf(bloon) == uniqueBloons.length - 2) {
                hint1.innerHTML += ` and `;
            }
            if (uniqueBloons.indexOf(bloon) == uniqueBloons.length - 1) {
                hint1.innerHTML += `.`;
            }
        });
    }

    if (id == 2) {  // Round time
        hint2.innerHTML = `This round lasts for ${hints[1]} seconds.`;
    }

    if (id == 3) {  // RBE
        hint3.innerHTML = `This round contains ${hints[2]} RBE.`;
    }

    if (id == 4) {  // Cash
        hint4.innerHTML = `When this round starts, you will have $${hints[3]}.`
    }

    if (id == 5) {  // Bloon Groups
        let index = 0;

        hint5.innerHTML = `This round spawns `
        bloonNumbers.forEach((number) => {
            index += 1;
            hint5.innerHTML += `${number} ${bloons[index - 1]}s`;

            if (index < bloonNumbers.length - 1) {
                hint5.innerHTML += `, `;
            }
            if (index == bloonNumbers.length - 1) {
                hint5.innerHTML += ` and `;
            }
            if (index == bloonNumbers.length) {
                hint5.innerHTML += `.`;
            }
        });
    }

    hintcount += 1;
}

const button1 = document.getElementById("button1");
const button2 = document.getElementById("button2");
const button3 = document.getElementById("button3");
const button4 = document.getElementById("button4");
const button5 = document.getElementById("button5");

const buttons = [button1, button2, button3, button4, button5];

function func() {
    buttons.forEach((button) => {
        if (buttons.indexOf(button) == hintcount) {
            button.style = "visibility: visible;";
        }
        else {
            button.style = "visibility: hidden;";
        }
    })
}

button1.addEventListener('click', () => {
    revealHint(1);
});

button2.addEventListener('click', () => {
    revealHint(2);
});

button3.addEventListener('click', () => {
    revealHint(3);
});

button4.addEventListener('click', () => {
    revealHint(4);
});

button5.addEventListener('click', () => {
    revealHint(5);
});

function getRandomInt(min, max) {
  return Math.floor(Math.random() * (max - min + 1)) + min;
}

const intervalId = setInterval(func, 1);
