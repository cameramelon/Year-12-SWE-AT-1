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
            monkeyname,
            u1xx,
            u2xx,
            u3xx,
            u4xx,
            u5xx,
            x1x,
            x2x,
            x3x,
            x4x,
            x5x,
            xx1,
            xx2,
            xx3,
            xx4,
            xx5,
        } = rows) => {
            result += `
        <div class="table">
        <h3 class="table-name">${monkeyname}\n</h3>
        <table class="table-table">
        <tr class="table-header">
        <th class="table-column1">Path</th> <th class="table-column2">Upgrade Name</th><th class="table-column1">Path</th> <th class="table-column2">Upgrade Name</th><th class="table-column1">Path</th> <th class="table-column2">Upgrade Name</th>
        </tr>
        <tr class="table-row1"><td class="table-label">1xx</td><td>${u1xx}</td><td class="table-label">x1x</td><td>${x1x}</td><td class="table-label">xx1</td><td>${xx1}</td></tr>
        <tr class="table-row2"><td class="table-label">2xx</td><td>${u2xx}</td><td class="table-label">x2x</td><td>${x2x}</td><td class="table-label">xx2</td><td>${xx2}</td></tr>
        <tr class="table-row1"><td class="table-label">3xx</td><td>${u3xx}</td><td class="table-label">x3x</td><td>${x3x}</td><td class="table-label">xx3</td><td>${xx3}</td></tr>
        <tr class="table-row2"><td class="table-label">4xx</td><td>${u4xx}</td><td class="table-label">x4x</td><td>${x4x}</td><td class="table-label">xx4</td><td>${xx4}</td></tr>
        <tr class="table-row1"><td class="table-label">5xx</td><td>${u5xx}</td><td class="table-label">x5x</td><td>${x5x}</td><td class="table-label">xx5</td><td>${xx5}</td></tr>
        <tr class="table-row2" style="height: 2rem;"><td class="table-label">${monkeyname}</td><td colspan="5">${paragon}</td></tr>
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
