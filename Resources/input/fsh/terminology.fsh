CodeSystem: CS_MII_Struktur_Organisationstyp
Id: cs-mii-struktur-organisationstyp
Title: "CS MII Struktur Organisationstyp"
Description: "Organisationstyp"
* ^status = #draft
* #KHS "Krankenhaus"
* #DPT "Department"
* #KLK "Klinik"
* #PKL "Polyklinik"
* #INS "Institut"
* #ABT "Abteilung"
* #SEK "Sektion"
* #BER "Bereich"
* #ASR "Aufsichtsrat"
* #VOR "Vorstand"
* #TLAB "Technisches Labor"
* #STAB "Stabsstelle"
* #ZEIN "Zentrale Einrichtung "
* #MVZ "Medizinisches Versorgungszentrum"

ValueSet: VS_MII_Struktur_Organisationstyp
Id: vs-mii-struktur-organisationstyp
Title: "VS MII Struktur Organisationstyp"
Description: "Organisationstyp"
* ^status = #draft
* include codes from system cs-mii-struktur-organisationstyp
