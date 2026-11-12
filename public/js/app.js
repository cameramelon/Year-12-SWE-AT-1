let result = "";
fetch("./frontEndData.json")
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
            name,
            image,
            hyperlink,
            alt,
            about,
            buttontext,
            language,
        } = rows) => {
            result += `
        <div class="card">
        <img class="card-image" src="${image}" alt="${alt}"/>
        <h1 class="card-name">${name}</h1>
        <p class="card-about">${about}</p>
        <a class="card-link" href="${hyperlink}"><button class="btn">${buttontext}</button></a>
        </div>
        `;
        },
    );
    document.querySelector(".container").innerHTML = result;
}

if ("serviceWorker" in navigator) {
    window.addEventListener("load", function () {
        navigator.serviceWorker
            .register("js/serviceworker.js")
            .then((res) => console.log("service worker registered"))
            .catch((err) => console.log("service worker not registered", err));
    });
}
