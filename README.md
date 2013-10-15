GISAppDev-opiskelijaravintolat
==============================

Kehitettävän palvelun tarkoituksena on tarjota käyttäjälle tiedot häntä lähimpänä sijaitsevista 
opiskelijaravintoloista ja niiden ruokalistoista ja aukioloajoista mahdollisimman helposti ja 
nopeasti. Samalla palvelu näyttää käyttäjälle reittiohjeet kyseisiin ravintoloihin. Palvelu tulee 
toimimaan myös, ja ensisijaisesti, puhelimissa. Käyttäjien on myös mahdollista lisätä palautetta 
ravintoloista palvelun muiden käyttäjien nähtäväksi. 

Opiskelijoilla lounaspaikan valinta tehdään usein nopeasti siinä hetkessä kun syömään ollaan 
menossa. Hankkeen ydinajatuksena onkin tarjota opiskelijoille palvelu, jossa hän yhdellä 
napinpainalluksella saa reitit lähimpiin opiskelijaravintoloihin, niiden ruokalistat ja aukioloajat. 
Nopeuden ja käytettävyyden maksimoimiseksi palvelun tulee olla ulkoasultaan hyvin pelkistetty. 
Palvelu siis etsii käyttäjän laitteen antamien sijaintitietojen 
perusteella lähimpiä opiskelijaravintoloita.

Tekninen toteutus

Opiskelijaravintolat tallennetaan Postgresql-tietokantaan. Ravintoloista tallennetaan sijainti 
osoitteena ja nimi sekä mahdollinen lähde aukioloajoille ja ruokalistoille.
Yhteys tietokantaan toteutetaan PHP:lla, jossa mahdollisesti hyödynnetään olemassa olevaa frameworkkia.
PHP:stä ravintoloiden sijainnit ja muut tiedot siirretään client-sidelle, joka toteutetaan 
Javascriptillä. Javascrip-toteutuksessa hyödennetään jQuery-kirjastoa.
Ravintolat näytetään kartalla Google-maps Javascript API:n avulla. Google Maps 
mahdollistaa myös reittien ja käyttäjän sijainnin etsimisen.

Lopullinen applikaatio on html5-sivu, jonka tulisi toimia niin pöytäkoneella kuin mobiiliselaimilla.

---