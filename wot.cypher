CREATE (Andor:Place {name: "Andor", firstSeen: "Book One?"})
CREATE (Cairhien:Place {name: "Cairhien", firstSeen: "Book One?"})
CREATE (Malkier:Place {name: "Malkier", firstSeen: ""})
CREATE (Saldaea:Place {name: "Saldaea", firstSeen: ""})

CREATE (Rand:Person {name: "Rand al'Thor", taveren: 'true', nationality: "Andoran", title: 'Dragon Reborn', dob: "2 Danu 978 NE", firstSeen: "Book One"})
CREATE (Mat:Person {name: 'Mat Cauthon', taveren: 'true', nationality: "Andoran", title: 'General?', dob: "978 NE", firstSeen: "Book One"})
CREATE (Min:Person {name: 'Min Farshaw', taveren: 'true', nationality: "Andoran", title: 'Truthspeaker', dob: "975 NE", firstSeen: "Book One"})
CREATE (Moriraine:Person {name: 'Moriraine Damodred', taveren: 'false', nationality: "Cairhienin", title: 'Aes Sedai', dob: "956 NE", firstSeen: "Prequel"})
CREATE (Lan:Person {name: "al'Lan Mandragoran", taveren: 'false', nationality: "Malkieri", title: 'Lord of the Seven Towers', dob: "953 NE", firstSeen: "Prequel"})
CREATE (Faile:Person {name: "Zarine ni Bashere t'Aybara", taveren: 'false', nationality: "Saldaean", title: 'Lady', dob: "981 NE", firstSeen: "TDR 33"})
CREATE
(Rand)-[:COMES_FROM]->(Andor),
(Mat)-[:COMES_FROM]->(Andor),
(Min)-[:COMES_FROM]->(Andor),
(Moriraine)-[:COMES_FROM]->(Cairhien),
(Lan)-[:COMES_FROM]->(Malkier),
(Faile)-[:COMES_FROM]->(Saldaea)

CALL db.schema.visualization()
MATCH (n1)-[r]->(n2) RETURN r, n1, n2 LIMIT 25
