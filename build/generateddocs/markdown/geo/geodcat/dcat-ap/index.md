
# DCAT-AP 3.0 profile (Model)

`ogc.geo.geodcat.dcat-ap` *v0.2*

DCAT-AP 3.0 (european profile of DCAT)

[*Status*](http://www.opengis.net/def/status): Under development

## Description

## DCAT-AP 3.0

This building block provides a framework to test compatibility of GeoDCAT with DCAT-AP 3.0, and to make this relationship transparent to any implementation of GeoDCAT-AP using OGC standards.

## Examples

### DCAT-AP 3.0 example
This is an example conforming to DCAT-AP 3.0

It shows a Dataset with multilingual properties as well as a Distribution. 
The specific DCAT-AP related property is dcatap:applicableLegislation and there are a number of required properties defined via shacl.
#### ttl
```ttl

@prefix exampleMS: <https://data.exampleMS.gov/id/data/>.
@prefix adms: <http://www.w3.org/ns/adms#>.
@prefix dcat: <http://www.w3.org/ns/dcat#>.
@prefix dcatap: <http://data.europa.eu/r5r/>.
@prefix dct: <http://purl.org/dc/terms/>.
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix foaf: <http://xmlns.com/foaf/0.1/> .
@prefix skos: <http://www.w3.org/2004/02/skos/core#> .
@prefix vcard: <http://www.w3.org/2006/vcard/ns#> .
@prefix xsd: <http://www.w3.org/2001/XMLSchema#>.
@prefix eli: <http://data.europa.eu/eli/ontology#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .

exampleMS:1T2p3o4B a dcat:Dataset;
   dct:title "Naam van de dataset"@nl;
   dct:title "Title of the dataset"@en;
   dct:accessRights <http://publications.europa.eu/resource/authority/access-right/PUBLIC>;
   dcatap:applicableLegislation <http://data.europa.eu/eli/reg_impl/2023/138/oj>;
   dct:conformsTo <http://data.europa.eu/eli/reg/2010/1089>;
   dcat:contactPoint [
     a <https://json-ld.org/playground/Organization>, vcard:Kind ;
     vcard:fn "Mijn Organisatie"@nl ;
     vcard:fn "My Organization"@en ;
     vcard:hasEmail <mailto:opendata@mijnorganisatie.nl> ;
     vcard:hasURL "http://mijnorganisatie.org/" ;
     vcard:organization-name "Mijn Organisatie"@nl ;
     vcard:organization-name "My Organization"@en
     ] ; 
   dct:creator [
     dct:type <http://purl.org/adms/publishertype/LocalAuthority> ;
     a foaf:Agent ;
     foaf:name "Mijn Organisatie"@nl;
     foaf:name "My Organization"@en
     ] ;
   dct:description "beschrijving van de dataset"@nl;
   dct:description "description of the dataset in english"@en;
   dct:identifier "https://data.exampleMS.gov/id/dataset/1T2p3o4B";
   dcat:keyword "trefwoord 1"@nl;
   dcat:keyword "trefwoord 2"@nl;
   dcat:keyword "keyword 1"@en;
   dcat:keyword "keyword 2"@en;
   dct:language <http://publications.europa.eu/resource/authority/language/NLD> ;
   dct:publisher [
     dct:type <http://purl.org/adms/publishertype/LocalAuthority> ;
     a foaf:Agent ;
     foaf:name "Mijn Organisatie"@nl;
     foaf:name "My Organization"@en
     ] ;
   dct:spatial <https://www.geonames.org/2750405>;
   dct:spatial [a dct:Location ;
                  dcat:bbox "POLYGON ((3.053 47.975,7.24 47.975,7.24 53.504,3.053 53.504,3.053 47.975))"^^rdf:wktLiteral;
  ] ;
   dct:temporal [ a dct:PeriodOfTime ;
     dcat:startDate "2016-03-28"^^xsd:date ;
     dcat:endDate   "2018-08-25"^^xsd:date ;
     ] ;
   dcat:theme <http://publications.europa.eu/resource/authority/data-theme/EDUC>;
   dcat:distribution exampleMS:1T2p3o4B-dist-SHP
   .

exampleMS:1T2p3o4B-dist-SHP a dcat:Distribution ;
  dcat:accessURL <https://orgea.exampleMS.gov/files/1T2p3o4B.shp> ;
  dcatap:applicableLegislation <http://data.europa.eu/eli/reg_impl/2023/138/oj>;
  dcat:downloadURL <https://orgea.exampleMS.gov/files/1T2p3o4B.shp> ;
  dct:language <http://publications.europa.eu/resource/authority/language/NLD> ;
  dct:license <http://creativecommons.org/publicdomain/zero/1.0/deed.nl> ;
  dct:conformsTo <http://inspire.ec.europa.eu/schemas/hy/4.0/HydroBase.xsd> ;
  dcat:mediaType <https://www.iana.org/assignments/media-types/application/vnd.shp>
  .

<https://orgea.exampleMS.gov/files/1T2p3o4B.shp> a rdfs:Resource .

<http://creativecommons.org/publicdomain/zero/1.0/deed.nl> a dct:LicenseDocument .

<http://publications.europa.eu/resource/authority/access-right/PUBLIC> a dct:RightsStatement .

<http://publications.europa.eu/resource/authority/language/NLD> a dct:LinguisticSystem .


<http://data.europa.eu/eli/reg_impl/2023/138/oj> a eli:LegalResource .


<http://data.europa.eu/eli/reg/2010/1089> a dct:Standard .


<https://www.geonames.org/2750405> a dct:Location .


<http://purl.org/adms/publishertype/LocalAuthority> a skos:Concept ;
 skos:prefLabel"Local Authority"@en .

<http://publications.europa.eu/resource/authority/data-theme/EDUC> a skos:Concept ;
 skos:prefLabel "EDUC"@en .

<https://www.iana.org/assignments/media-types/application/vnd.shp> a dct:MediaType .

<http://inspire.ec.europa.eu/schemas/hy/4.0/HydroBase.xsd> a dct:Standard .
```

## Sources

* [DCAT-AP 3.0 Specification](https://semiceu.github.io/DCAT-AP/releases/3.0.0/)
* [DCAT-AP 3.0 JSON-LD context](https://semiceu.github.io/DCAT-AP/releases/3.0.0/context/dcat-ap.jsonld)

# For developers

The source code for this Building Block can be found in the following repository:

* URL: [https://github.com/NielsHoffmann/geodcat-ogcapi-records](https://github.com/NielsHoffmann/geodcat-ogcapi-records)
* Path: `_sources/dcat-ap`

