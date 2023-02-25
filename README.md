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

![image](https://user-images.githubusercontent.com/47354545/221376592-2e277d1d-b058-4035-909e-35dcce1bffb3.png)
