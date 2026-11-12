-- database: data_source.db
--CREATE TABLE extension(extID INTEGER NOT NULL PRIMARY KEY,name TEXT NOT NULL, hyperlink TEXT NOT NULL,about TEXT NOT NULL,image TEXT NOT NULL,language TEXT NOT NULL);

--INSERT INTO extension(extID,name,hyperlink,about,image,language) VALUES (1,"Live Server","https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer","Launch a development local Server with live reload feature for static & dynamic pages","https://ritwickdey.gallerycdn.vsassets.io/extensions/ritwickdey/liveserver/5.7.9/1736542717282/Microsoft.VisualStudio.Services.Icons.Default","HTML CSS JS");
--INSERT INTO extension(extID,name,hyperlink,about,image,language) VALUES (2,"Render CR LF","https://marketplace.visualstudio.com/items?itemName=medo64.render-crlf","Displays the line ending symbol and optionally extra whitespace when 'Render whitespace' is turned on.","https://medo64.gallerycdn.vsassets.io/extensions/medo64/render-crlf/1.7.1/1689315206970/Microsoft.VisualStudio.Services.Icons.Default","#BASH");
--INSERT INTO extension(extID,name,hyperlink,about,image,language) VALUES (3,"Start GIT BASH","https://marketplace.visualstudio.com/items?itemName=McCarter.start-git-bash","Adds a bash command to VSCode that allows you to start git-bash in the current workspace's root folder.","https://mccarter.gallerycdn.vsassets.io/extensions/mccarter/start-git-bash/1.2.1/1499505567572/Microsoft.VisualStudio.Services.Icons.Default","#BASH");
--INSERT INTO extension(extID,name,hyperlink,about,image,language) VALUES (4,"SQLite3 Editor","https://marketplace.visualstudio.com/items?itemName=yy0931.vscode-sqlite3-editor","Edit SQLite3 files like you would in spreadsheet applications.","https://yy0931.gallerycdn.vsassets.io/extensions/yy0931/vscode-sqlite3-editor/1.0.85/1690893830873/Microsoft.VisualStudio.Services.Icons.Default","SQL");

DROP TABLE upgrades;
CREATE TABLE upgrades(
    id INTEGER NOT NULL PRIMARY KEY,
    monkeyname TEXT NOT NULL,
    "1xx" TEXT NOT NULL,
    "2xx" TEXT NOT NULL,
    "3xx" TEXT NOT NULL,
    "4xx" TEXT NOT NULL,
    "5xx" TEXT NOT NULL,
    "x1x" TEXT NOT NULL,
    "x2x" TEXT NOT NULL,
    "x3x" TEXT NOT NULL,
    "x4x" TEXT NOT NULL,
    "x5x" TEXT NOT NULL,
    "xx1" TEXT NOT NULL,
    "xx2" TEXT NOT NULL,
    "xx3" TEXT NOT NULL,
    "xx4" TEXT NOT NULL,
    "xx5" TEXT NOT NULL);

    INSERT INTO upgrades(id, monkeyname, "1xx", "2xx", "3xx", "4xx", "5xx", "x1x", "x2x", "x3x", "x4x", "x5x", "xx1", "xx2", "xx3", "xx4", "xx5") VALUES (1,  "Dart Monkey", "Sharp Shots", "Razor Sharp Shots", "Spike-o-pult", "Juggernaut", "Ultra-Juggernaut", "Quick Shots", "Very Quick Shots", "Triple Shot", "Super Monkey Fan Club", "Plasma Monkey Fan Club", "Long Range Darts", "Enhanced Eyesight", "Crossbow", "Sharp Shooter", "Crossbow Master");
    INSERT INTO upgrades(id, monkeyname, "1xx", "2xx", "3xx", "4xx", "5xx", "x1x", "x2x", "x3x", "x4x", "x5x", "xx1", "xx2", "xx3", "xx4", "xx5") VALUES (2,  "Boomerang Monkey", "Improved Rangs", "Glaives", "Glaive Ricochet", "M.O.A.R Glaives", "Glaive Lord", "Faster Throwing", "Faster Rangs", "Bionic Boomerang", "Turbo Charge", "Perma Charge", "Long Range Rangs", "Red Hot Rangs", "Kylie Boomerang", "MOAB Press", "MOAB Domination");
    INSERT INTO upgrades(id, monkeyname, "1xx", "2xx", "3xx", "4xx", "5xx", "x1x", "x2x", "x3x", "x4x", "x5x", "xx1", "xx2", "xx3", "xx4", "xx5") VALUES (3,  "Bomb Shooter", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
    INSERT INTO upgrades(id, monkeyname, "1xx", "2xx", "3xx", "4xx", "5xx", "x1x", "x2x", "x3x", "x4x", "x5x", "xx1", "xx2", "xx3", "xx4", "xx5") VALUES (4,  "Tack Shooter", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
    INSERT INTO upgrades(id, monkeyname, "1xx", "2xx", "3xx", "4xx", "5xx", "x1x", "x2x", "x3x", "x4x", "x5x", "xx1", "xx2", "xx3", "xx4", "xx5") VALUES (5,  "Ice Monkey", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
    INSERT INTO upgrades(id, monkeyname, "1xx", "2xx", "3xx", "4xx", "5xx", "x1x", "x2x", "x3x", "x4x", "x5x", "xx1", "xx2", "xx3", "xx4", "xx5") VALUES (6,  "Glue Gunner", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
    INSERT INTO upgrades(id, monkeyname, "1xx", "2xx", "3xx", "4xx", "5xx", "x1x", "x2x", "x3x", "x4x", "x5x", "xx1", "xx2", "xx3", "xx4", "xx5") VALUES (7,  "Desperado", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
    INSERT INTO upgrades(id, monkeyname, "1xx", "2xx", "3xx", "4xx", "5xx", "x1x", "x2x", "x3x", "x4x", "x5x", "xx1", "xx2", "xx3", "xx4", "xx5") VALUES (8,  "Sniper Monkey", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
    INSERT INTO upgrades(id, monkeyname, "1xx", "2xx", "3xx", "4xx", "5xx", "x1x", "x2x", "x3x", "x4x", "x5x", "xx1", "xx2", "xx3", "xx4", "xx5") VALUES (9,  "Monkey Sub", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
    INSERT INTO upgrades(id, monkeyname, "1xx", "2xx", "3xx", "4xx", "5xx", "x1x", "x2x", "x3x", "x4x", "x5x", "xx1", "xx2", "xx3", "xx4", "xx5") VALUES (10, "Monkey Buccaneer", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
    INSERT INTO upgrades(id, monkeyname, "1xx", "2xx", "3xx", "4xx", "5xx", "x1x", "x2x", "x3x", "x4x", "x5x", "xx1", "xx2", "xx3", "xx4", "xx5") VALUES (11, "Monkey Ace", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
    INSERT INTO upgrades(id, monkeyname, "1xx", "2xx", "3xx", "4xx", "5xx", "x1x", "x2x", "x3x", "x4x", "x5x", "xx1", "xx2", "xx3", "xx4", "xx5") VALUES (12, "Heli Pilot", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
    INSERT INTO upgrades(id, monkeyname, "1xx", "2xx", "3xx", "4xx", "5xx", "x1x", "x2x", "x3x", "x4x", "x5x", "xx1", "xx2", "xx3", "xx4", "xx5") VALUES (13, "Mortar Monkey", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
    INSERT INTO upgrades(id, monkeyname, "1xx", "2xx", "3xx", "4xx", "5xx", "x1x", "x2x", "x3x", "x4x", "x5x", "xx1", "xx2", "xx3", "xx4", "xx5") VALUES (14, "Dartling Gunner", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
    INSERT INTO upgrades(id, monkeyname, "1xx", "2xx", "3xx", "4xx", "5xx", "x1x", "x2x", "x3x", "x4x", "x5x", "xx1", "xx2", "xx3", "xx4", "xx5") VALUES (15, "Wizard Monkey", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
    INSERT INTO upgrades(id, monkeyname, "1xx", "2xx", "3xx", "4xx", "5xx", "x1x", "x2x", "x3x", "x4x", "x5x", "xx1", "xx2", "xx3", "xx4", "xx5") VALUES (16, "Super Monkey", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
    INSERT INTO upgrades(id, monkeyname, "1xx", "2xx", "3xx", "4xx", "5xx", "x1x", "x2x", "x3x", "x4x", "x5x", "xx1", "xx2", "xx3", "xx4", "xx5") VALUES (17, "Ninja Monkey", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
    INSERT INTO upgrades(id, monkeyname, "1xx", "2xx", "3xx", "4xx", "5xx", "x1x", "x2x", "x3x", "x4x", "x5x", "xx1", "xx2", "xx3", "xx4", "xx5") VALUES (18, "Alchemist", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
    INSERT INTO upgrades(id, monkeyname, "1xx", "2xx", "3xx", "4xx", "5xx", "x1x", "x2x", "x3x", "x4x", "x5x", "xx1", "xx2", "xx3", "xx4", "xx5") VALUES (19, "Druid", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
    INSERT INTO upgrades(id, monkeyname, "1xx", "2xx", "3xx", "4xx", "5xx", "x1x", "x2x", "x3x", "x4x", "x5x", "xx1", "xx2", "xx3", "xx4", "xx5") VALUES (20, "Mermonkey", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
    INSERT INTO upgrades(id, monkeyname, "1xx", "2xx", "3xx", "4xx", "5xx", "x1x", "x2x", "x3x", "x4x", "x5x", "xx1", "xx2", "xx3", "xx4", "xx5") VALUES (21, "Skywarden", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
    INSERT INTO upgrades(id, monkeyname, "1xx", "2xx", "3xx", "4xx", "5xx", "x1x", "x2x", "x3x", "x4x", "x5x", "xx1", "xx2", "xx3", "xx4", "xx5") VALUES (22, "Monkey Village", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
    INSERT INTO upgrades(id, monkeyname, "1xx", "2xx", "3xx", "4xx", "5xx", "x1x", "x2x", "x3x", "x4x", "x5x", "xx1", "xx2", "xx3", "xx4", "xx5") VALUES (23, "Banana Farm", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
    INSERT INTO upgrades(id, monkeyname, "1xx", "2xx", "3xx", "4xx", "5xx", "x1x", "x2x", "x3x", "x4x", "x5x", "xx1", "xx2", "xx3", "xx4", "xx5") VALUES (24, "Spike Factory", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
    INSERT INTO upgrades(id, monkeyname, "1xx", "2xx", "3xx", "4xx", "5xx", "x1x", "x2x", "x3x", "x4x", "x5x", "xx1", "xx2", "xx3", "xx4", "xx5") VALUES (25, "Engineer Monkey", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
    INSERT INTO upgrades(id, monkeyname, "1xx", "2xx", "3xx", "4xx", "5xx", "x1x", "x2x", "x3x", "x4x", "x5x", "xx1", "xx2", "xx3", "xx4", "xx5") VALUES (26, "Beast Handler", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "");