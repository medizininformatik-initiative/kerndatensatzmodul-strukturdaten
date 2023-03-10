// Profil Institution
Profile: MII_PR_Struktur_Organisation
Parent: Organization
Id: mii-pr-struktur-organisation
Title: "MII PR Struktur Organisation"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-struktur/StructureDefinition/organisation"
* ^version = "0.0.1"
* ^status = #draft
* identifier 1.. MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains
    Institutionskennzeichen 0..1
    // and Abteilungsidentifikator 0..1 
    // and Versorgungsstellenidentifikator 0..1
* identifier[Institutionskennzeichen] only $identifier-iknr
* type 1.. MS
* type ^slicing.discriminator.type = #pattern
* type ^slicing.discriminator.path = "$this"
* type ^slicing.rules = #open
* type ^binding.strength = #extensible
* type contains
    Organisationstyp 1..1 MS 
    // and Abteilungstyp 0..1 
    // and Versorgungsstufe 0..1
* type[Organisationstyp] from $vs-organisationstyp (extensible)
* name 1.. MS
* alias ^comment = "There are no dates associated with the alias/historic names, as this is not intended to track when names were used, but to assist in searching so that older names can still result in identifying the organization.\r\n\r\n- Kürzel der Universitätsklinika"
* telecom ..1 MS
* telecom.value ^comment = "Additional text data such as phone extension numbers, or notes about use of the contact are sometimes included in the value.\r\n\r\n- Webseite der Organization"
* address MS
* address only $address-de-basis
* partOf only Reference(Organization)

// Profil Abteilung
Profile: MII_PR_Struktur_Abteilung
Parent: Organization
Id: mii-pr-struktur-abteilung
Title: "MII PR Struktur Abteilung"
Description: "Profil für eine Abteilung"
* identifier MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains Abteilungsidentifikator 0..1 MS
* identifier[Abteilungsidentifikator]
  * system 1.. MS
  * value 1.. MS
* type ^slicing.discriminator.type = #pattern
* type ^slicing.discriminator.path = "$this"
* type ^slicing.rules = #open
// * type ^slicing.description = ""
* type ^slicing.ordered = false
* type contains organisationstyp 0..1 MS
          and fachabteilungsschluessel 0..1 MS
* type[organisationstyp].coding = $cs-hl7-organization-type#dept
* type[organisationstyp].coding 
  * system 1.. MS
  * code 1.. MS
* type[fachabteilungsschluessel] from $vs-de-basis-fachabteilungsschluessel-erweitert (required)
* type[fachabteilungsschluessel].coding 
  * system 1.. MS
  * code 1.. MS
* name 1.. MS
* alias ^comment = "There are no dates associated with the alias/historic names, as this is not intended to track when names were used, but to assist in searching so that older names can still result in identifying the organization.\r\n\r\n- Kürzel der Universitätsklinika"
* telecom ..1 MS
* telecom.value ^comment = "Additional text data such as phone extension numbers, or notes about use of the contact are sometimes included in the value.\r\n\r\n- Webseite der Organization"
* address MS
* address only $address-de-basis
* partOf only Reference(Organization)

// TODO: create abstract base organization resource!! 
// TODO: wäre das Ganze auch mit einem einzelnen Profil möglich? 



// Profil Versorgungsstelle

Instance: mii-exa-organisation-krankenhaus
InstanceOf: mii-pr-struktur-organisation
Usage: #example
Title: "Beispiel Krankenhaus"
Description: "Beispiel Krankenhaus Universitätsklinikum Leipzig"
* identifier[Institutionskennzeichen]
  * system = "http://fhir.de/sid/arge-ik/iknr"
  * value = "261401052"
* type[Organisationstyp].coding = $cs-organisationstyp#KHS
* name = "Universitätsklinikum Leipzig"
* address
  * line
    * extension[Strasse].valueString = "Liebigstraße"
    * extension[Hausnummer].valueString = "20"
  * city = "Leipzig"
  * postalCode = "04103"
  * country = "DE"



// TODO: Charité Beispiele - Krankenhaus (Organization), mehrere Standorte (Location), Abteilungen? 


