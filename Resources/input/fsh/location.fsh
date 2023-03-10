Profile: MII_PR_Struktur_Location
Parent: Location
Id: mii-pr-struktur-location
Title: "MII PR Struktur Location"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-struktur/StructureDefinition/location"
* ^status = #draft
* identifier MS
* name 1.. MS
* mode 1.. MS
* mode = #instance (exactly)
* address MS
* address only $address-de-basis
* physicalType 1.. MS
// ToDo: AZ - 10.03.23 - physicalType mit requiredBinding auf HL7 Int ValueSet
* managingOrganization 1.. MS
* managingOrganization only Reference(Organization)
* partOf MS
* availabilityExceptions ^definition = "A description of when the locations opening hours are different to normal, e.g. public holiday availability. Succinctly describing all possible exceptions to normal site availability as detailed in the opening hours Times."


// Example
Instance: mii-exa-organisation-standort
InstanceOf: mii-pr-struktur-location
Usage: #example
Title: "exa-organisation-standort"
Description: "Beispiel Standort Leipzig"
* identifier
  * system = "http://fhir.de/sid/dkgev/standortnummer"
  * value = "771392"
* name = "Universitätsklinikum Leipzig"
* address
  * line
    * extension[Strasse].valueString = "Liebigstraße"
    * extension[Hausnummer].valueString = "20"
  * city = "Leipzig"
  * postalCode = "04103"
  * country = "DE"
* physicalType.coding = $cs-hl7-location-type#si "Site"
* position
  * longitude = 12.386209113038
  * latitude = 51.331383154482
* managingOrganization = Reference(mii-exa-organisation-krankenhaus)
