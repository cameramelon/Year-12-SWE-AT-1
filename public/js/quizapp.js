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
        <h3>${monkeyname}</h3>
        <table>
        <tr>
        <th>Path</th> <th>Upgrade Name</th> <th>Path</th> <th>Upgrade Name</th> <th>Path</th> <th>Upgrade Name</th>
        </tr>
        <tr><td>1xx</td><td>${u1xx}</td><td>x1x</td><td>${x1x}</td><td>xx1</td><td>${xx1}</td></tr>
        <tr><td>2xx</td><td>${u2xx}</td><td>x2x</td><td>${x2x}</td><td>xx2</td><td>${xx2}</td></tr>
        <tr><td>3xx</td><td>${u3xx}</td><td>x3x</td><td>${x3x}</td><td>xx3</td><td>${xx3}</td></tr>
        <tr><td>4xx</td><td>${u4xx}</td><td>x4x</td><td>${x4x}</td><td>xx4</td><td>${xx4}</td></tr>
        <tr><td>5xx</td><td>${u5xx}</td><td>x5x</td><td>${x5x}</td><td>xx5</td><td>${xx5}</td></tr>
        </table>
        </div>
        `;
        },
    );
    document.querySelector(".container").innerHTML = result;
}

if ("serviceWorker" in navigator) {
    window.addEventListener("load", function () {
        navigator.serviceWorker
            .register("../js/serviceworker.js")
            .then((res) => console.log("service worker registered"))
            .catch((err) => console.log("service worker not registered", err));
    });
}
