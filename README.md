# wot-graph
A neo4j project that maps relationships between The World of Time places, characters, groups, etc.

https://neo4j.com/sandbox/
https://neo4j.com/labs/arrows/

### TODO
- Start with small data set, hand entered, ta'veren/main chars only, etc
- scrape data from wiki
- automate project setup using docker
- setup deployment environment using AWS 
- create and deploy web interface

## Model
- Places
  - Nations in the Westlands
    - Cities
    - Other
  - Locations Outside of the Westlands
    - Cities
    - Other
  - Historical Nations
  - Geographical Regions
  - Settlements
  - Steddings
  - Buildings, Structures, Thoroughfares
- People
  - Name
  - Ta'veren
  - Nationality
  - Affiliation (Groups)
  - Title
  - Ajah  
  - DOB
  - First Seen In
  - Death
    - DOD
    - Book
- Groups


![image](https://user-images.githubusercontent.com/47354545/221379392-0d12cbe7-b7f0-49a0-acd4-19f23b3a6761.png)

![image](https://user-images.githubusercontent.com/47354545/221379420-bb6f89f2-6459-47fe-bc16-95b3650b23f6.png)

Maybe...

![image](https://user-images.githubusercontent.com/47354545/221376592-2e277d1d-b058-4035-909e-35dcce1bffb3.png)

'''
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
'''
