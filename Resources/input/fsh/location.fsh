Profile: SD_MII_Struktur_Location
Parent: Location
Id: sd-mii-struktur-location
Title: "SD MII Struktur Location"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-struktur/StructureDefinition/location"
* ^status = #draft
* identifier MS
* name 1.. MS
* mode 1..
* mode = #instance (exactly)
* mode ^mustSupport = false
* physicalType 1.. MS
* managingOrganization 1.. MS
* managingOrganization only Reference(Organization or $organisation)
* partOf MS
* availabilityExceptions ^definition = "A description of when the locations opening hours are different to normal, e.g. public holiday availability. Succinctly describing all possible exceptions to normal site availability as detailed in the opening hours Times."