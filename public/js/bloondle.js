let result = "";
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
            result += ``;
        },
    );
    document.querySelector(".container-quiz").innerHTML = result;
}

if ("serviceWorker" in navigator) {
    window.addEventListener("load", function () {
        navigator.serviceWorker.register("../js/serviceworker.js").then((res) => console.log("service worker registered")).catch((err) => console.log("service worker not registered", err));
    });
}


const dict = []
