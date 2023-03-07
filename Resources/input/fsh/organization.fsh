Profile: SD_MII_Struktur_Organisation
Parent: Organization
Id: sd-mii-struktur-organisation
Title: "SD MII Struktur Organisation"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-struktur/StructureDefinition/organisation"
* ^version = "0.0.1"
* ^status = #draft
* identifier 1..1 MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains
    Institutionskennzeichen 0..1
    // and Abteilungsidentifikator 0..1 
    // and Versorgungsstellenidentifikator 0..1
* identifier[Institutionskennzeichen] only $identifier-iknr
* type 1..* MS
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
* partOf only Reference(Organization or SD_MII_Struktur_Organisation)

Instance: exa-organisation-krankenhaus
InstanceOf: sd-mii-struktur-organisation
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

// TODO: kopieren zu location.fsh


// TODO: Charité Beispiele - Krankenhaus (Organization), mehrere Standorte (Location), Abteilungen? 


