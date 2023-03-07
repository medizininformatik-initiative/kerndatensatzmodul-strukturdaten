CodeSystem: MII_CS_Struktur_Organisationstyp
Id: mii-cs-struktur-organisationstyp
Title: "MII CS Struktur Organisationstyp"
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

ValueSet: MII_VS_Struktur_Organisationstyp
Id: mii-vs-struktur-organisationstyp
Title: "MII VS Struktur Organisationstyp"
Description: "Organisationstyp"
* ^status = #draft
* include codes from system mii-cs-struktur-organisationstyp
