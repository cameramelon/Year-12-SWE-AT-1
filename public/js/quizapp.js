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
            result += `
        <div class="table">
        <h3 class="table-name">${monkeyname}\n</h3>
        <table class="table-table">
        <tr class="table-header">
        <th class="table-column1">Path</th> <th class="table-column2">Upgrade Name</th><th class="table-column1">Path</th> <th class="table-column2">Upgrade Name</th><th class="table-column1">Path</th> <th class="table-column2">Upgrade Name</th>
        </tr>
        <tr class="table-row1"><td class="table-label">1xx</td><td>${u1xx}</td><td class="table-label">x1x</td><td>${ux1x}</td><td class="table-label">xx1</td><td>${uxx1}</td></tr>
        <tr class="table-row2"><td class="table-label">2xx</td><td>${u2xx}</td><td class="table-label">x2x</td><td>${ux2x}</td><td class="table-label">xx2</td><td>${uxx2}</td></tr>
        <tr class="table-row1"><td class="table-label">3xx</td><td>${u3xx}</td><td class="table-label">x3x</td><td>${ux3x}</td><td class="table-label">xx3</td><td>${uxx3}</td></tr>
        <tr class="table-row2"><td class="table-label">4xx</td><td>${u4xx}</td><td class="table-label">x4x</td><td>${ux4x}</td><td class="table-label">xx4</td><td>${uxx4}</td></tr>
        <tr class="table-row1"><td class="table-label">5xx</td><td>${u5xx}</td><td class="table-label">x5x</td><td>${ux5x}</td><td class="table-label">xx5</td><td>${uxx5}</td></tr>`;
            if (Paragon != "") {
                result += `<tr class="table-row2" style="height: 2rem;"><td class="table-label">Paragon</td><td colspan="5">${Paragon}</td></tr>`;
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
