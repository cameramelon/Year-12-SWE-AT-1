
-- this was from the original database
database: data_source.db
CREATE TABLE extension(extID INTEGER NOT NULL PRIMARY KEY,name TEXT NOT NULL, hyperlink TEXT NOT NULL,about TEXT NOT NULL,image TEXT NOT NULL,language TEXT NOT NULL);

INSERT INTO extension(extID,name,hyperlink,about,image,language) VALUES (1,"Live Server","https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer","Launch a development local Server with live reload feature for static & dynamic pages","https://ritwickdey.gallerycdn.vsassets.io/extensions/ritwickdey/liveserver/5.7.9/1736542717282/Microsoft.VisualStudio.Services.Icons.Default","HTML CSS JS");
INSERT INTO extension(extID,name,hyperlink,about,image,language) VALUES (2,"Render CR LF","https://marketplace.visualstudio.com/items?itemName=medo64.render-crlf","Displays the line ending symbol and optionally extra whitespace when 'Render whitespace' is turned on.","https://medo64.gallerycdn.vsassets.io/extensions/medo64/render-crlf/1.7.1/1689315206970/Microsoft.VisualStudio.Services.Icons.Default","#BASH");
INSERT INTO extension(extID,name,hyperlink,about,image,language) VALUES (3,"Start GIT BASH","https://marketplace.visualstudio.com/items?itemName=McCarter.start-git-bash","Adds a bash command to VSCode that allows you to start git-bash in the current workspace's root folder.","https://mccarter.gallerycdn.vsassets.io/extensions/mccarter/start-git-bash/1.2.1/1499505567572/Microsoft.VisualStudio.Services.Icons.Default","#BASH");
INSERT INTO extension(extID,name,hyperlink,about,image,language) VALUES (4,"SQLite3 Editor","https://marketplace.visualstudio.com/items?itemName=yy0931.vscode-sqlite3-editor","Edit SQLite3 files like you would in spreadsheet applications.","https://yy0931.gallerycdn.vsassets.io/extensions/yy0931/vscode-sqlite3-editor/1.0.85/1690893830873/Microsoft.VisualStudio.Services.Icons.Default","SQL");

-- my changes
ALTER TABLE extension RENAME TO cards;

-- queries to populate data required for the Upgrades Quiz
DROP TABLE upgrades;
CREATE TABLE upgrades(
    id INTEGER NOT NULL PRIMARY KEY,
    monkeyname TEXT NOT NULL,
    "u1xx" TEXT NOT NULL,
    "u2xx" TEXT NOT NULL,
    "u3xx" TEXT NOT NULL,
    "u4xx" TEXT NOT NULL,
    "u5xx" TEXT NOT NULL,
    "ux1x" TEXT NOT NULL,
    "ux2x" TEXT NOT NULL,
    "ux3x" TEXT NOT NULL,
    "ux4x" TEXT NOT NULL,
    "ux5x" TEXT NOT NULL,
    "uxx1" TEXT NOT NULL,
    "uxx2" TEXT NOT NULL,
    "uxx3" TEXT NOT NULL,
    "uxx4" TEXT NOT NULL,
    "uxx5" TEXT NOT NULL,
    "Paragon" TEXT);


-- all 404 upgrades in the game
    INSERT INTO upgrades(id, monkeyname, "u1xx", "u2xx", "u3xx", "u4xx", "u5xx", "ux1x", "ux2x", "ux3x", "ux4x", "ux5x", "uxx1", "uxx2", "uxx3", "uxx4", "uxx5", "Paragon") VALUES (1,  "Dart Monkey", "Sharp Shots", "Razor Sharp Shots", "Spike-o-pult", "Juggernaut", "Ultra-Juggernaut", "Quick Shots", "Very Quick Shots", "Triple Shot", "Super Monkey Fan Club", "Plasma Monkey Fan Club", "Long Range Darts", "Enhanced Eyesight", "Crossbow", "Sharp Shooter", "Crossbow Master", "Apex Plasma Master");
    INSERT INTO upgrades(id, monkeyname, "u1xx", "u2xx", "u3xx", "u4xx", "u5xx", "ux1x", "ux2x", "ux3x", "ux4x", "ux5x", "uxx1", "uxx2", "uxx3", "uxx4", "uxx5", "Paragon") VALUES (2,  "Boomerang Monkey", "Improved Rangs", "Glaives", "Glaive Ricochet", "M.O.A.R Glaives", "Glaive Lord", "Faster Throwing", "Faster Rangs", "Bionic Boomerang", "Turbo Charge", "Perma Charge", "Long Range Rangs", "Red Hot Rangs", "Kylie Boomerang", "MOAB Press", "MOAB Domination", "Glaive Dominus");
    INSERT INTO upgrades(id, monkeyname, "u1xx", "u2xx", "u3xx", "u4xx", "u5xx", "ux1x", "ux2x", "ux3x", "ux4x", "ux5x", "uxx1", "uxx2", "uxx3", "uxx4", "uxx5", "Paragon") VALUES (3,  "Bomb Shooter", "Bigger Bombs", "Heavy Bombs", "Really Big Bombs", "Bloon Impact", "Bloon Crush", "Faster Reload", "Missile Launcher", "MOAB Mauler", "MOAB Assassin", "MOAB Eliminator", "Extra Range", "Frag Bombs", "Cluster Bombs", "Recursive Cluster", "Bomb Blitz", "Ballistic Obliteration Missile Bunker");
    INSERT INTO upgrades(id, monkeyname, "u1xx", "u2xx", "u3xx", "u4xx", "u5xx", "ux1x", "ux2x", "ux3x", "ux4x", "ux5x", "uxx1", "uxx2", "uxx3", "uxx4", "uxx5", "Paragon") VALUES (4,  "Tack Shooter", "Faster Shooting", "Even Faster Shooting", "Hot Shots", "Ring of Fire", "Inferno Ring", "Long Range Tacks", "Super Range Tacks", "Blade Shooter", "Blade Maelstrom", "Super Maelstrom", "More Tacks", "Even More Tacks", "Tack Sprayer", "Overdrive", "The Tack Zone", "Crucible of Steel and Flame");
    INSERT INTO upgrades(id, monkeyname, "u1xx", "u2xx", "u3xx", "u4xx", "u5xx", "ux1x", "ux2x", "ux3x", "ux4x", "ux5x", "uxx1", "uxx2", "uxx3", "uxx4", "uxx5", "Paragon") VALUES (5,  "Ice Monkey", "Permafrost", "Cold Snap", "Ice Shards", "Embrittlement", "Super Brittle", "Enhanced Freeze", "Deep Freeze", "Arctic Wind", "Snowstorm", "Absolute Zero", "Larger Radius", "Re-Freeze", "Cryo Cannon", "Icicles", "Icicle Impale", "Herald of Everfrost");
    INSERT INTO upgrades(id, monkeyname, "u1xx", "u2xx", "u3xx", "u4xx", "u5xx", "ux1x", "ux2x", "ux3x", "ux4x", "ux5x", "uxx1", "uxx2", "uxx3", "uxx4", "uxx5", "Paragon") VALUES (6,  "Glue Gunner", "Glue Soak", "Corrosive Glue", "Bloon Dissolver", "Bloon Liquefier", "The Bloon Solver", "Bigger Globs", "Glue Splatter", "Glue Hose", "Glue Strike", "Glue Storm", "Stickier Glue", "Stronger Glue", "MOAB Glue", "Relentless Glue", "Super Glue", "");
    INSERT INTO upgrades(id, monkeyname, "u1xx", "u2xx", "u3xx", "u4xx", "u5xx", "ux1x", "ux2x", "ux3x", "ux4x", "ux5x", "uxx1", "uxx2", "uxx3", "uxx4", "uxx5", "Paragon") VALUES (7,  "Desperado", "Quickdraw", "Standoff", "Big Iron", "Twin Sixes", "The Blazing Sun", "Eagle Eye", "Bullseye", "Deadeye", "Bounty Hunter", "Golden Justice", "Wanderer", "Nomad", "Enforcer", "Avenger", "Desert Phantom", "");
    INSERT INTO upgrades(id, monkeyname, "u1xx", "u2xx", "u3xx", "u4xx", "u5xx", "ux1x", "ux2x", "ux3x", "ux4x", "ux5x", "uxx1", "uxx2", "uxx3", "uxx4", "uxx5", "Paragon") VALUES (8,  "Sniper Monkey", "Full Metal Jacket", "Large Calibre", "Deadly Precision", "Maim MOAB", "Cripple MOAB", "Night Vision Goggles", "Shrapnel Shot", "Bouncing Bullet", "Supply Drop", "Elite Sniper", "Fast Firing", "Even Faster Firing", "Semi-Automatic", "Full Auto Rifle", "Elite Defender", "S.P.I.D.E.R Monkey");
    INSERT INTO upgrades(id, monkeyname, "u1xx", "u2xx", "u3xx", "u4xx", "u5xx", "ux1x", "ux2x", "ux3x", "ux4x", "ux5x", "uxx1", "uxx2", "uxx3", "uxx4", "uxx5", "Paragon") VALUES (9,  "Monkey Sub", "Longer Range", "Advanced Intel", "Submerge and Support", "Bloontonium Reactor", "Energizer", "Barbed Darts", "Heat-Tipped Darts", "Ballistic Missile", "First Strike Capability", "Pre-Emptive Strike", "Twin Guns", "Airburst Darts", "Triple Guns", "Armor Piercing Darts", "Sub Commander", "Nautic Siege Core");
    INSERT INTO upgrades(id, monkeyname, "u1xx", "u2xx", "u3xx", "u4xx", "u5xx", "ux1x", "ux2x", "ux3x", "ux4x", "ux5x", "uxx1", "uxx2", "uxx3", "uxx4", "uxx5", "Paragon") VALUES (10, "Monkey Buccaneer", "Faster Shooting", "Double Shot", "Destroyer", "Aircraft Carrier", "Carrier Flagship", "Grape Shot", "Hot Shot", "Cannon Ship", "Monkey Pirates", "Pirate Lord", "Long Range", "Crow's Nest", "Merchantman", "Favored Trades", "Trade Empire", "Navarch of the Seas");
    INSERT INTO upgrades(id, monkeyname, "u1xx", "u2xx", "u3xx", "u4xx", "u5xx", "ux1x", "ux2x", "ux3x", "ux4x", "ux5x", "uxx1", "uxx2", "uxx3", "uxx4", "uxx5", "Paragon") VALUES (11, "Monkey Ace", "Rapid Fire", "Lots More Darts", "Fighter Plane", "Operation: Dart Storm", "Sky Shredder", "Exploding Pineapple", "Spy Plane", "Bomber Ace", "Ground Zero", "Tsar Bomba", "Sharper Darts", "Centered Path", "Neva-Miss Targeting", "Spectre", "Flying Fortress", "Goliath Doomship");
    INSERT INTO upgrades(id, monkeyname, "u1xx", "u2xx", "u3xx", "u4xx", "u5xx", "ux1x", "ux2x", "ux3x", "ux4x", "ux5x", "uxx1", "uxx2", "uxx3", "uxx4", "uxx5", "Paragon") VALUES (12, "Heli Pilot", "Quad Darts", "Pursuit", "Razor Rotors", "Apache Dartship", "Apache Prime", "Bigger Jets", "IFR", "Downdraft", "Support Chinook", "Special Poperations", "Faster Darts", "Faster Firing", "MOAB Shove", "Comanche Defense", "Comanche Commander", "");
    INSERT INTO upgrades(id, monkeyname, "u1xx", "u2xx", "u3xx", "u4xx", "u5xx", "ux1x", "ux2x", "ux3x", "ux4x", "ux5x", "uxx1", "uxx2", "uxx3", "uxx4", "uxx5", "Paragon") VALUES (13, "Mortar Monkey", "Bigger Blast", "Bloon Buster", "Shell Shock", "The Big One", "The Biggest One", "Faster Reload", "Rapid Reload", "Heavy Shells", "Artillery Battery", "Pop and Awe", "Increased Accuracy", "Burny Stuff", "Signal Flare", "Shattering Shells", "Blooncineration", "");
    INSERT INTO upgrades(id, monkeyname, "u1xx", "u2xx", "u3xx", "u4xx", "u5xx", "ux1x", "ux2x", "ux3x", "ux4x", "ux5x", "uxx1", "uxx2", "uxx3", "uxx4", "uxx5", "Paragon") VALUES (14, "Dartling Gunner", "Focused Firing", "Laser Shock", "Laser Cannon", "Plasma Accelerator", "Ray of Doom", "Advanced Targeting", "Faster Barrel Spin", "Hydra Rocket Pods", "Rocket Storm", "M.A.D", "Faster Swivel", "Powerful Darts", "Buckshot", "Bloon Area Denial System", "Bloon Exclusion Zone", "");
    INSERT INTO upgrades(id, monkeyname, "u1xx", "u2xx", "u3xx", "u4xx", "u5xx", "ux1x", "ux2x", "ux3x", "ux4x", "ux5x", "uxx1", "uxx2", "uxx3", "uxx4", "uxx5", "Paragon") VALUES (15, "Wizard Monkey", "Guided Magic", "Arcane Blast", "Arcane Mastery", "Arcane Spike", "Archmage", "Fireball", "Wall of Fire", "Dragon's Breath", "Summon Phoenix", "Wizard Lord Phoenix", "Intense Magic", "Monkey Sense", "Shimmer", "Necromancer: Unpopped Army", "Prince of Darkness", "Magus Perfectus");
    INSERT INTO upgrades(id, monkeyname, "u1xx", "u2xx", "u3xx", "u4xx", "u5xx", "ux1x", "ux2x", "ux3x", "ux4x", "ux5x", "uxx1", "uxx2", "uxx3", "uxx4", "uxx5", "Paragon") VALUES (16, "Super Monkey", "Laser Blasts", "Plasma Blasts", "Sun Avatar", "Sun Temple", "True Sun God", "Super Range", "Epic Range", "Robo Monkey", "Tech Terror", "The Anti-Bloon", "Knockback", "Ultravision", "Dark Knight", "Dark Champion", "Legend of the Night", "");
    INSERT INTO upgrades(id, monkeyname, "u1xx", "u2xx", "u3xx", "u4xx", "u5xx", "ux1x", "ux2x", "ux3x", "ux4x", "ux5x", "uxx1", "uxx2", "uxx3", "uxx4", "uxx5", "Paragon") VALUES (17, "Ninja Monkey", "Ninja Discipline", "Sharp Shurikens", "Double Shot", "Bloonjitsu", "Grandmaster Ninja", "Distraction", "Counter-Espionage", "Shinobi Tactics", "Bloon Sabotage", "Grand Saboteur", "Seeking Shurikens", "Caltrops", "Flash Bomb", "Sticky Bomb", "Master Bomber", "Ascended Shadow");
    INSERT INTO upgrades(id, monkeyname, "u1xx", "u2xx", "u3xx", "u4xx", "u5xx", "ux1x", "ux2x", "ux3x", "ux4x", "ux5x", "uxx1", "uxx2", "uxx3", "uxx4", "uxx5", "Paragon") VALUES (18, "Alchemist", "Bigger Potions", "Acidic Mixture Dip", "Berserker Brew", "Stronger Stimulant", "Permanent Brew", "Stronger Acid", "Perishing Potions", "Unstable Concoction", "Transforming Tonic", "Total Transformation", "Faster Throwing", "Acid Pool", "Lead to Gold", "Rubber to Gold", "Bloon Master Alchemist", "");
    INSERT INTO upgrades(id, monkeyname, "u1xx", "u2xx", "u3xx", "u4xx", "u5xx", "ux1x", "ux2x", "ux3x", "ux4x", "ux5x", "uxx1", "uxx2", "uxx3", "uxx4", "uxx5", "Paragon") VALUES (19, "Druid", "Hard Thorns", "Heart of Thunder", "Druid of the Storm", "Ball Lightning", "Monarch of Storms", "Thorn Swarm", "Heart of Oak", "Druid of the Jungle", "Jungle's Bounty", "Spirit of the Forest", "Druidic Reach", "Heart of Vengeance", "Druid of Wrath", "Poplust", "Avatar of Wrath", "Root of All Nature");
    INSERT INTO upgrades(id, monkeyname, "u1xx", "u2xx", "u3xx", "u4xx", "u5xx", "ux1x", "ux2x", "ux3x", "ux4x", "ux5x", "uxx1", "uxx2", "uxx3", "uxx4", "uxx5", "Paragon") VALUES (20, "Mermonkey", "Trident Efficiency", "Trident Swiftness", "Abyss Dweller", "Abyssal Warrior", "Lord of the Abyss", "Sharper Prongs", "Tidal Chill", "Riptide Champion", "Arctic Knight", "Popseidon", "Echosense Precision", "Echosense Network", "Alluring Melody", "Symphonic Resonance", "The Final Harmonic", "");
    INSERT INTO upgrades(id, monkeyname, "u1xx", "u2xx", "u3xx", "u4xx", "u5xx", "ux1x", "ux2x", "ux3x", "ux4x", "ux5x", "uxx1", "uxx2", "uxx3", "uxx4", "uxx5", "Paragon") VALUES (21, "Skywarden", "Aerial Attunement", "Zephyr Sense", "Wind Weaver", "Galesage", "Farwind Seer", "Storm's Pulse", "Thundering Arc", "Galvanic Conduit", "Thunder's Decree", "Stormwrath Archon", "Shatterpoint", "Icebore", "Coldchain", "Frozen Verdict", "Winter's Mercy", "");
    INSERT INTO upgrades(id, monkeyname, "u1xx", "u2xx", "u3xx", "u4xx", "u5xx", "ux1x", "ux2x", "ux3x", "ux4x", "ux5x", "uxx1", "uxx2", "uxx3", "uxx4", "uxx5", "Paragon") VALUES (22, "Monkey Village", "Bigger Radius", "Jungle Drums", "Primary Training", "Primary Mentoring", "Primary Expertise", "Grow Blocker", "Radar Scanner", "Monkey Intelligence Bureau", "Call to Arms", "Homeland Defense", "Monkey Business", "Monkey Commerce", "Monkey Town", "Monkey City", "Monkeyopolis", "");
    INSERT INTO upgrades(id, monkeyname, "u1xx", "u2xx", "u3xx", "u4xx", "u5xx", "ux1x", "ux2x", "ux3x", "ux4x", "ux5x", "uxx1", "uxx2", "uxx3", "uxx4", "uxx5", "Paragon") VALUES (23, "Banana Farm", "Increased Production", "Greater Production", "Banana Plantation", "Banana Research Facility", "Banana Central", "Long Life Bananas", "Valuable Bananas", "Monkey Bank", "IMF Loan", "Monkey-Nomics", "EZ Collect", "Banana Salvage", "Marketplace", "Central Market", "Monkey Wall Street", "");
    INSERT INTO upgrades(id, monkeyname, "u1xx", "u2xx", "u3xx", "u4xx", "u5xx", "ux1x", "ux2x", "ux3x", "ux4x", "ux5x", "uxx1", "uxx2", "uxx3", "uxx4", "uxx5", "Paragon") VALUES (24, "Spike Factory", "Bigger Stacks", "White Hot Spikes", "Spiked Balls", "Spiked Mines", "Super Mines", "Faster Production", "Even Faster Production", "MOAB Shredr", "Spike Storm", "Carpet of Spikes", "Long Reach", "Smart Spikes", "Long Life Spikes", "Deadly Spikes", "Perma-Spike", "Mega Massive Munitions Factory");
    INSERT INTO upgrades(id, monkeyname, "u1xx", "u2xx", "u3xx", "u4xx", "u5xx", "ux1x", "ux2x", "ux3x", "ux4x", "ux5x", "uxx1", "uxx2", "uxx3", "uxx4", "uxx5", "Paragon") VALUES (25, "Engineer Monkey", "Sentry Gun", "Faster Engineering", "Sprockets", "Sentry Expert", "Sentry Champion", "Larger Service Area", "Deconstruction", "Cleansing Foam", "Overclock", "Ultraboost", "Oversize Nails", "Pin", "Double Gun", "Bloon Trap", "XXXL Trap", "Master Builder");
    INSERT INTO upgrades(id, monkeyname, "u1xx", "u2xx", "u3xx", "u4xx", "u5xx", "ux1x", "ux2x", "ux3x", "ux4x", "ux5x", "uxx1", "uxx2", "uxx3", "uxx4", "uxx5", "Paragon") VALUES (26, "Beast Handler", "Piranha", "Barracuda", "Great White", "Orca", "Megalodon", "Microraptor", "Adasaurus", "Velociraptor", "Tyrannosaurus Rex", "Giganotosaurus", "Gyrfalcon", "Horned Owl", "Golden Eagle", "Giant Condor", "Pouakai", "");


-- data for bloondle (rounds) (100 different rounds I have to populate YIPPEE!!!!!!)
DROP TABLE bloondlerounds();
CREATE TABLE bloondlerounds(
    id INTEGER NOT NULL PRIMARY KEY,
    hint1 TEXT NOT NULL,
    hint2 INTEGER NOT NULL,
    hint3 INTEGER NOT NULL,
    hint4 INTEGER NOT NULL,
    hint5 TEXT NOT NULL
);

-- Hint 1: description of bloons present, Hint 2: RBE, Hint 3: time round lasts, Hint 4: how much you will have by then, Hint 5: literally just what is in the round
-- Excludes rounds with a single bloon (40, 60, 80, 100 etc.)

-- 1: bloons present, 2: time, 3: RBE, 4: cash, 5: numbers

INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (21, "Yellow,Pink", 18.12, 230, 4133, "40,18");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (22, "White", 8, 176, 4484, "16");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (23, "White,Black", 6.82, 154, 4782, "7,7");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (24, "Camo Green,Blue", 9, 43, 5059, "1,20");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (25, "Regrow Yellow,Purple", 21.14, 210, 5226, "25,10");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (26, "Pink,Zebra", 14.51, 207, 5561, "23,4");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (27, "Red,Blue,Green,Yellow", 34.26, 535, 5894, "100,60,45,45");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (28, "Lead", 5, 138, 6556, "6");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (29, "Yellow,Regrow Yellow", 15.25, 260, 6822, "50,15");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (30, "Lead", 13.07, 207, 7211, "9");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (31, "Black,White,Zebra,Regrow Zebra", 15.91, 406, 7548, "8,8,8,2");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (32, "Black,White,Purple", 27.96, 495, 8085, "15,20,10");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (33, "Camo Red,Camo Yellow", 25.34, 72, 8712, "20,13");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (34, "Yellow,Zebra", 36, 778, 8917, "160,6");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (35, "White,Rainbow,Pink,Black", 33.76, 1015, 9829, "25,5,35,30");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (36, "Pink,Camo Regrow Green,Pink,Camo Regrow Green,Pink", 20.99, 760, 10979, "40,10,40,10,60");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (37, "Black,White,Lead,Zebra,Camo White", 43.51, 1202, 11875, "25,25,15,10,7");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (38, "White,Pink,Lead,Zebra,Ceramic", 29.06, 1157, 13214, "17,42,14,10,2");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (39, "Black,White,Zebra,Rainbow,Regrow Rainbow", 37.93, 1620, 14491, "10,10,20,18,2");
--INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (40, );
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (41, "Black,Zebra", 46.2, 2040, 16771, "60,60");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (42, "Regrow Rainbow,Camo Rainbow", 11.6, 517, 18952, "6,5");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (43, "Rainbow, Ceramic", 9.26, 1198, 19611, "10,7");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (44, "Zebra,Zebra,Zebra,Zebra,Zebra" 23.67, 1150, 20899, "10,10,10,10,10");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (45, "Rainbow,Camo Purple,Pink,Fortified Lead", 53.1, 2289, 22183, "25,10,180,4");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (46, "Fortified Ceramic", 7, 684, 24605, "6");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (47, "Ceramic,Camo Pink", 24.65, 1598, 25321, "12,70");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (48, "Regrow Pink,Regrow Camo Purple,Rainbow,Fortified Ceramic", 55.72, 2752, 26958, "40,30,40,3");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (49, "Green,Rainbow,Ceramic,Zebra,Rainbow,Regrow Rainbow", 50, 4771, 29801, "343,10,18,20,10,10");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (50, "MOAB,Fortified Lead,Red,Ceramic,MOAB", 28.48, 340, 34559, "1,8,20,20,1");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (51, "Camo Ceramic,Regrow Rainbow", 24.14, 2030, 37575, "15,10");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (52, "Rainbow,MOAB,Ceramic,MOAB,Ceramic", 20.56, 3447, 38673.5, "25,1,5,1,5");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (53, "Camo Pink,MOAB,MOAB,MOAB", 35, 2248, 40269, "80,1,1,1");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (54, "Ceramic,MOAB,MOAB", 19.41, 4872, 41193.5, "35,1,1");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (55, "Ceramic,Ceramic,Ceramic,Ceramic,MOAB", 29.28, 5296, 43391, "10,10,10,15,1");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (56, "Camo Rainbow,MOAB", 15.68, 2496, 45874, "40,1");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (57, "MOAB,Rainbow,MOAB", 26.23, 4344, 47160.5, "2,40,2");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (58, "Ceramic,MOAB,Fortified Ceramic", 43.98, 5780, 49019.5, "15,5,10");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (59, "Ceramic,Camo Lead,Regrow Ceramic", 26.16, 4270, 51317.5, "20,50,10");
--INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (60);
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (61, "Regrow Zebra,MOAB", 20, 6530, 54399, "150,5");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (62, "Purple,MOAB,Fortified MOAB,Camo Rainbow", 48.29, 8247, 55631, "250,5,2,15");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (63, "Lead,Ceramic,Ceramic,Ceramic", 42.25, 14413, 57017.4, "75,40,40,42");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (64, "MOAB,Fortified MOAB", 9.53, 6264, 59843.4, "6,3");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (65, "Zebra,Rainbow,Ceramic,MOAB,BFB", 62, 18966, 60693.2, "100,70,50,3,2");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (66, "MOAB,MOAB,MOAB,Fortified MOAB", 22.75, 7496, 63764.8, "2,2,4,3");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (67, "MOAB,Regrow Camo Fortified Ceramic,MOAB", 26.44, 6410, 64769, "4,13,4");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (68, "MOAB,BFB", 7.94, 5628, 65792.6, "4,1");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (69, "Fortified Lead,Regrow Black,Ceramic", 42.13, 6680, 66570.4, "40,40,50");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (70, "Camo Regrow White,Rainbow,MOAB", 41.14, 13184, 67961.4, "120,200,4");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (71, "Ceramic,MOAB", 16.55, 9280, 70580.2, "30,10");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (72, "Regrow Ceramic,BFB,BFB", 21.7, 10280, 72083.2, "38,1,1");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (73, "MOAB,BFB,MOAB", 26.67, 11256, 73587.2, "7,2,1");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (74, "Ceramic,Camo Regrow Fortified Ceramic,BFB,Fortified Ceramic", 82.39, 18054, 74979.8, "50,25,1,60");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (75, "BFB,Lead,Fortified MOAB,BFB,Fortified Lead,Fortified MOAB,BFB", 22.59, 25402, 78023.8, "1,14,1,3,14,2,3");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (76, "Regrow Ceramic", 1.78, 6240, 80691.2, "60");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (77, "MOAB,BFB", 58.92, 22596, 82007.2, "11,5");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (78, "Rainbow,Ceramic,BFB,Purple,Camo Ceramic", 90, 26382, 84547.4, "150,75,1,80,72");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (79, "Rainbow,BFB,Fortified BFB", 60, 45804, 89409.4, "500,4,2");
--INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (80);
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (81, "BFB,BFB", 26.47, 44506, 97518.6, "9,8");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (82, "BFB,Fortified BFB", 35.68, 52320, 102884.6, "10,5");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (83, "Ceramic,Regrow Ceramic,Fortified Ceramic,MOAB", 60.2, 25080, 107641.6, "40,40,40,30");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (84, "MOAB,BFB", 25, 51480, 112390.6, "50,10");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (85, "ZOMG", 10, 30704, 119434.6, "2");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (86, "Fortified BFB", 20.85, 27040, 122060, "5");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (87, "ZOMG", 10, 63008, 123008.5, "4");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (88, "BFB,MOAB,ZOMG", 14.55, 63600, 125365.9, "8,18,2");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (89, "Fortified MOAB,Fortified BFB", 20.74, 64384, 128949.9, "20,8");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (90, "Camo Regrow Fortified Lead,DDT", 11.9, 2756, 131120.9, "50,3");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (91, "Fortified Ceramic,BFB", 30, 71160, 131460.2, "100,20");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (92, "Fortified MOAB,ZOMG", 35, 117408, 135651.2, "50,4");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (93, "Fortified BFB,DDT", 20, 62936, 140188.6, "10,6");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (94, "BFB,ZOMG", 15, 178112, 142135.2, "25,6");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (95, "Camo Regrow Purple,Camo Regrow Fortified Lead,Fortified MOAB,DDT", 50.81, 80860, 149802.3, "500,250,50,30");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (96, "BFB,Fortified MOAB,BFB,Fortified MOAB,BFB,MOAB", 32.12, 238952, 153520.3, "10,20,10,20,10,6");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (97, "Fortified ZOMG", 5, 69984, 163475.9, "2");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (98, "Fortified BFB,Fortified ZOMG", 30, 327456, 164893.1, "30,8");
INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (99, "MOAB,Fortified DDT", 12, 47424, 174546.9, "60,9");
--INSERT INTO bloondlerounds(id, hint1, hint2, hint3, hint4, hint5) VALUES (100);