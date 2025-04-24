
# GeoDCAT-AP profile (Model)

`ogc.geo.geodcat.geodcat-ap` *v0.1*

Provides a CI/CT/CD environment for the testing compatibility of GeoDCAT-AP with a regions neutral GeoDCAT definition.

[*Status*](http://www.opengis.net/def/status): Under development

## Description

## GeoDCAT-AP 

This building block provides a framework to test compatibility og GeoDCAT-AP with GeoDCAT, and to make this relationship transparent to any implementation of GeoDCAT-AP using OGC standards.

## Examples

### GeoDCAT-AP example
This example from GeoDCAT-AP
#### ttl
```ttl
@prefix adms: <http://www.w3.org/ns/adms#> .
@prefix dcat: <http://www.w3.org/ns/dcat#> .
@prefix dct: <http://purl.org/dc/terms/> .
@prefix foaf: <http://xmlns.com/foaf/0.1/> .
@prefix geodcat: <http://data.europa.eu/930/> .
@prefix gsp: <http://www.opengis.net/ont/geosparql#> .
@prefix locn: <http://www.w3.org/ns/locn#> .
@prefix prov: <http://www.w3.org/ns/prov#> .
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix record: <https://some.catalogue/record/> .
@prefix resource: <https://some.catalogue/resource/> .
@prefix vcard: <http://www.w3.org/2006/vcard/ns#> .
@prefix xml: <http://www.w3.org/XML/1998/namespace> .
@prefix xsd: <http://www.w3.org/2001/XMLSchema#> .
@prefix skos: <http://www.w3.org/2004/02/skos/core#> .

resource:eea_r_3035_10_m_noise-contours-end2017_i_2016_v01_r00 a dcat:Dataset ;
  geodcat:custodian <http://publications.europa.eu/resource/authority/corporate-body/EEA> ;
  dct:accrualPeriodicity <http://publications.europa.eu/resource/authority/frequency/IRREG> ;
  dct:conformsTo <http://www.opengis.net/def/crs/EPSG/0/3035> ;
  dct:created "2019-10-31"^^xsd:date ;
  dct:description """
    The data set includes the rasterized noise contours which have been
    reported by countries under the terms of the Environmental Noise
    Directive (END) by the 33 EEA member countries (EEA-33) excluding
    Turkey for the third round of noise mapping in 2017. The data set
    includes submissions from the countries until 01/01/2019.
    ...
  """@en ;
  dct:identifier "eea_r_3035_10_m_noise-contours-end2017_i_2016_v01_r00" ;
  dct:language <http://publications.europa.eu/resource/authority/language/ENG> ;
  dct:provenance [ a dct:ProvenanceStatement ;
      rdfs:label "The raster data sets have been created out of the Noise Spatial Database, which in turn contains all versions delivered by the relevant countries (EU and EFTA) to Reportnet (CDR). The data from Reportnet is automatically incorporated into the database, with the exception of those data sets which require a manual review (due to problems with naming conventions or Coordinate Reference System). The data set covers any submission by the countries until 01/01/2019."@en ] ;
  dct:spatial [ a dct:Location ;
      dcat:bbox "<gml:Envelope srsName=\"http://www.opengis.net/def/crs/OGC/1.3/CRS84\"><gml:lowerCorner>-31.285 27.642</gml:lowerCorner><gml:upperCorner>34.099 70.075</gml:upperCorner></gml:Envelope>"^^gsp:gmlLiteral ] ;
  dct:subject <http://inspire.ec.europa.eu/metadata-codelist/TopicCategory/environment>,
    <http://inspire.ec.europa.eu/metadata-codelist/TopicCategory/health>,
    <http://inspire.ec.europa.eu/metadata-codelist/TopicCategory/transportation> ;
  dct:temporal [ a dct:PeriodOfTime ;
      dcat:endDate "2016-12-31"^^xsd:date ;
      dcat:startDate "2016-01-01"^^xsd:date ] ;
  dct:title "Noise contours data reported under Environmental Noise Directive (END) 2017 (raster 10m) - version 2019, Oct. 2019"@en ;
  dct:type <http://inspire.ec.europa.eu/metadata-codelist/ResourceType/dataset> ;
  dcat:contactPoint [ a vcard:Organization, vcard:Kind ;
      vcard:fn "European Environment Agency"@en ;
      vcard:hasAddress [ a vcard:Address ;
          vcard:country-name "Denmark" ;
          vcard:locality "Copenhagen" ;
          vcard:postal-code "1050" ;
          vcard:region "K" ;
          vcard:street-address "Kongens Nytorv 6" ] ;
      vcard:hasEmail <mailto:info@eea.europa.eu> ;
      vcard:hasURL <http://www.eea.europa.eu> ] ;
  dcat:distribution [ a dcat:Distribution ;
      dct:accessRights <http://inspire.ec.europa.eu/metadata-codelist/LimitationsOnPublicAccess/INSPIRE_Directive_Article13_1e> ;
      dct:description "NoiseContours_air_lnight"@en ;
      dct:format <http://publications.europa.eu/resource/authority/file-type/TIFF> ;
      dct:license [ a dct:LicenseDocument ;
          rdfs:label "The full noise contour maps data set is in principle only available for EEA internal use. A public version of the data set may in the future be available, excluding those data sets for which there is any limitation or restriction in their use (beyond acknowledgement)."@en ] ;
      adms:representationTechnique <http://inspire.ec.europa.eu/metadata-codelist/SpatialRepresentationType/grid> ;
      dcat:accessService [ a dcat:DataService ;
          dct:title "Dataservice for Noise contours" ;
          dct:conformsTo <http://www.opengeospatial.org/standards/wms> ;
          dcat:endpointDescription <https://noise.discomap.eea.europa.eu/arcgis/services/noiseStoryMap/NoiseContours_air_lnight/ImageServer/WMSServer?request=GetCapabilities&service=WMS> ;
          dcat:endpointURL <https://noise.discomap.eea.europa.eu/arcgis/services/noiseStoryMap/NoiseContours_air_lnight/ImageServer/WMSServer> ] ;
      dcat:accessURL <https://noise.discomap.eea.europa.eu/arcgis/services/noiseStoryMap/NoiseContours_air_lnight/ImageServer/WMSServer?request=GetCapabilities&service=WMS> ] ;
  dcat:keyword "Environmental Noise Directive"@en,
    "Noise map"@en,
    "agglomerations"@en,
    "noise contour"@en,
    "noise source"@en ;
  dcat:spatialResolutionInMeters 10.0 ;
  dcat:theme <http://inspire.ec.europa.eu/theme/hh>,
    <http://publications.europa.eu/resource/authority/data-theme/HEAL>,
    <http://www.eionet.europa.eu/gemet/concept/2884> ;
  prov:wasUsedBy [ a prov:Activity ;
      prov:generated [ a prov:Entity ;
          dct:description "See the referenced specification"@en ;
          dct:type <http://inspire.ec.europa.eu/metadata-codelist/DegreeOfConformity/notEvaluated> ] ;
      prov:qualifiedAssociation [ a prov:Association ;
          prov:hadPlan [ a prov:Plan ;
              prov:wasDerivedFrom <http://data.europa.eu/eli/reg/2010/1089> ] ] ] ;
  foaf:isPrimaryTopicOf record:e7807ecb-a8e6-4a33-baa2-d119eec9ce24 ;
  foaf:page <https://noise.eea.europa.eu/> .

<http://www.opengis.net/def/crs/EPSG/0/3035> a dct:Standard .
<http://www.opengeospatial.org/standards/wms> a dct:Standard .

<http://publications.europa.eu/resource/authority/frequency/IRREG> a dct:Frequency .

<http://publications.europa.eu/resource/authority/language/ENG> a dct:LinguisticSystem .

<http://inspire.ec.europa.eu/metadata-codelist/ResourceType/dataset> a skos:Concept;
  skos:prefLabel "dataset"@en .

<https://noise.eea.europa.eu/> a foaf:Document .

<http://publications.europa.eu/resource/authority/data-theme/HEAL> a skos:Concept ;
  skos:prefLabel "HEAL"@en .

<http://inspire.ec.europa.eu/theme/hh> a skos:Concept ;
  skos:prefLabel "hh"@en .

<http://www.eionet.europa.eu/gemet/concept/2884> a skos:Concept ;
  skos:prefLabel "2884"@en .

<http://publications.europa.eu/resource/authority/file-type/TIFF> a dct:MediaTypeOrExtent .

<https://noise.discomap.eea.europa.eu/arcgis/services/noiseStoryMap/NoiseContours_air_lnight/ImageServer/WMSServer?request=GetCapabilities&service=WMS> a rdfs:Resource .

<https://noise.discomap.eea.europa.eu/arcgis/services/noiseStoryMap/NoiseContours_air_lnight/ImageServer/WMSServer> a rdfs:Resource .
```

## Sources

* [GeoDCAT Specification](http://www.opengis.net/def/metamodel/profiles/geodcat)
* [GeoDCAT Specification Repository](https://github.com/opengeospatial/GeoDCAT-SWG)
* [DCAT-AP JSON-LD context](https://semiceu.github.io/DCAT-AP/releases/3.0.0/context/dcat-ap.jsonld)

# For developers

The source code for this Building Block can be found in the following repository:

* URL: [https://github.com/NielsHoffmann/geodcat-ogcapi-records](https://github.com/NielsHoffmann/geodcat-ogcapi-records)
* Path: `_sources/geodcat-ap`

