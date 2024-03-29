Logical: SD_MII_Struktur_LogicalModel
Parent: Element
Id: sd-mii-struktur-logicalmodel
Title: "SD MII Struktur Logical Model"
Description: "Logische Repräsentation des Erweiterungsmoduls Strukturdaten"
* ^status = #draft
* Krankenhaus 1..1 BackboneElement "Ein zugelassenes Krankenhaus" "Ein nach §108 SGB V zugelassenes Krankenhaus."
  * Institutionskennzeichen 1..1 $identifier-iknr "Institutionskennzeichen" "Das bundesweit eindeutige, neunstellige Institutionskennzeichen des Krankenhauses gemäß §293 SGB V."
  * Institutionskennzeichen ^alias[+] = "IK-Nummer"
  * Institutionskennzeichen ^alias[+] = "Haupt-IK"
  * Institutionskennzeichen ^alias[+] = "IK-Nr"
  * Institutionskennzeichen ^example.label = "Universitätsklinikum Leipzig AöR"
  * Institutionskennzeichen ^example.valueIdentifier.use = #official
  * Institutionskennzeichen ^example.valueIdentifier.type.text = "261401052"
  * Name 1..1 string "Krankenhausname" "Der Name des Krankenhauses."
  * Name ^example.label = "Immanuel Krankenhaus Berlin"
  * Name ^example.valueString = "Immanuel Krankenhaus Berlin"
  * Ermaechtigungsgrundlage 1..1 code "Ermächtigungsgrundlage" "Die nach §108 SGB V definierten Ermächtigungsgrundlagen für zugelassene Krankenhäuser. (Hochschulklinik | Plankrankenhaus | Versorungsvertrag)"
  * Ermaechtigungsgrundlage ^example.label = "Ermächtigungsgrundlage"
  * Ermaechtigungsgrundlage ^example.valueCode = #Versorgungsvertrag
  * Leitung 1..3 BackboneElement "Die Leitung des Krankenhauses."
    * Rolle 1..1 Reference(PractitionerRole) "Der Leitungstyp (Medizinisch | Pflegerisch | Verwaltend)."
    * Person 1..1 Reference(Practitioner) "Referenz zur Organisationsleitung"
  * Traeger 1..1 BackboneElement "Trägerschaft des Krankenhauses"
    * Art 1..1 code "Die Art der Trägerschaft des Krankenhauses. (öffentlich | privat | freigemeinnützig)"
    * Name 1..1 string "Der Name des Trägers."
  * Adresse 1..1 BackboneElement "Adresse" "Die Adressen des Krankenhauses, unterschieden nach postalischer und physischer Adresse."
    * Postalisch 1..1 Address "Postalische Adresse" "Die postalische Adresse des Krankenhauses."
    * Physisch 0..* Address "Physische Adresse" "Die physische Adresse des Krankenhauses, an welchem sich der Zugang befindet."
  * Organisation 1..* BackboneElement "Standort" "Struktur- und Leistungsdaten der Standorte."
    * Organisationsidentifikator 1..1 Identifier "Organisationsidentifikator" "Organisationsidentifikator"
    * isPartOf 0..* Reference(Organization) "Referenz zur drüber stehenden Organisation"
    * Organisationstyp 1..* code "(Krankenhausstandort | Zentrum | MVZ | Forschung & Lehre | Verwaltung | Sozialdienst/Seelsorge | Patienten- und Besucherservice | Medizinisches Labor | Technisches Labor | Biobank | Transfusionsmedizin)"
    * Name 1..1 string "Name" "Der Name der Organisation."
    * Leitung 1..3 BackboneElement "Leitung der Organisation"
      * Rolle 1..1 Reference(PractitionerRole) "Der Leitungstyp (Medizinisch | Pflegerisch | Verwaltend)."
      * Person 1..1 Reference(Practitioner) "Referenz zur Organisationsleitung"
    * Webseite 0..1 url "Organisationswebsite"
    * Bettenanzahl 0..1 integer "Bettenanzahl in der Organisation"
    * Fallzahlen 0..1 BackboneElement "Fallzahlen" "Die aggregierten Fallzahlen eines Krankenhausstandortes. Die Angabe des Elements ist nur zulässig, wenn die Organisation eines Organisationstyps Fallzahlen erhebt."
      * Ambulant 1..1 integer "davon ambulant.."
      * Stationaer 1..1 integer "davon stationär.."
      * Teilstationaer 1..1 integer "davon teilstationär.."
    * Adresse 1..1 BackboneElement "Adresse der Organisation"
      * Postalisch 1..1 Address "Postalische Adresse der Organisation"
      * Physisch 1..1 Address "Physische Adresse der Organisation"
    * Abteilung 0..* BackboneElement "Abteilung"
      * Fachabteilungsschluessel 1..1 Identifier "Fachabteilungsschlüssel"
      * OE-Nummer 0..* Identifier "Nummer der Organisationseinheit"
      * Name 1..1 string "Name der Abteilung"
      * Abteilungstyp 0..* code "Abteilungstyp" "(medizinisch | pflegerisch | therapeutisch | diagnostisch | verwaltend | standard)"
      * Versorgungsstufe 0..* code "Versorgungsstufe" "(stationär | ambulant | vorstationär | teilstationär | nachstationär)"
      * Ort 0..* BackboneElement "Ort"
        * Name 1..1 string "Name"
        * isPartOf 0..* Reference(Location) "Location"
        * Typ 1..1 code "(Raum | Flur | Bett)"
      * Diagnose 0..* BackboneElement "Diagnose"
        * ICD10_Code 1..1 Coding "tmp"
        * Anzahl 1..1 integer "tmp"
      * Prozedur 0..* BackboneElement "tmp"
        * OPS_Code 1..1 Coding "tmp"
        * Anzahl 1..1 integer "tmp"
      * Fallzahlen_OE 0..1 BackboneElement "Fallzahlen der Organisationseinheit"
        * Ambulant 1..1 integer "davon ambulant.."
        * Stationaer 1..1 integer "davon stationär.." 
        * Teilstationaer 1..1 integer "davon teilstationär.." 
    * Versorgungsstelle 1..1 BackboneElement "Versorgungsstelle"
      * Versorgungsstellenidentifikator 1..1 Identifier "tmp"
      * Name 1..1 string "tmp"
      * partOf 0..* Reference "Wenn die Versorgungsstelle Teil einer Abteilung ist, wird es hier angegeben."
      * Abteilungsstyp 0..* code "(medizinisch | pflegerisch | therapeutisch | diagnostisch)"
      * Versorgungsstufe 0..* code "(stationär | ambulant | vorstationär | teilstationär | nachstationär)"
      * Ort 0..* BackboneElement "tmp"
      * Ort.Name 1..1 string "tmp"
      * Ort.isPartOf 0..* Reference(Location) "tmp" 
      * Ort.Typ 1..1 Reference(ValueSet) "tmp" 

