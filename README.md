GISAppDev-opiskelijaravintolat
==============================
Tekninen toteutus

Opiskelijaravintolat tallennetaan Postgresql-tietokantaan. Ravintoloista tallennetaan sijainti 
osoitteena ja nimi sekä mahdollinen lähde aukioloajoille ja ruokalistoille.
Yhteys tietokantaan toteutetaan PHP:lla, jossa hyödynnetään olemassa olevia frameworkkeja.
PHP:stä ravintoloiden sijainnit ja muut tiedot siirretään client-sidelle, joka toteutetaan 
Javascriptillä. Javascrip-toteutuksessa hyödennetään jQuery-kirjastoa.
Ravintolat näytetään kartalla Google-maps Javascript API:n avulla. Google Maps 
mahdollistaa myös reittien ja käyttäjän sijainnin etsimisen.

Lopullinen applikaatio on html5-sivu, jonka tulisi toimia niin pöytäkoneella kuin mobiiliselaimilla.