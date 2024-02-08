---
title: GeoDCAT profile of OGC API Records (Schema)


toc_footers:
  - Version 0.1
  - <a href='#'>GeoDCAT profile of OGC API Records</a>
  - <a href='https://blocks.ogc.org/register.html'>Building Blocks register</a>

search: true

code_clipboard: true

meta:
  - name: GeoDCAT profile of OGC API Records (Schema)
---


# GeoDCAT profile of OGC API Records `ogc.geo.geodcat.geodcat-records`

GeoDCAT profile of OGC API Records binds the OGC API Records schema to the GeoDCAT profile of DCAT. Additional schema elements are defined for each element of GeoDCAT not directly expressible in OGC API Records schema or other available profile

<p class="status">
    <span data-rainbow-uri="http://www.opengis.net/def/status">Status</span>:
    <a href="http://www.opengis.net/def/status/under-development" target="_blank" data-rainbow-uri>Under development</a>
</p>

<aside class="success">
This building block is <strong><a href="https://github.com/ogcincubator/geodcat-ogcapi-records/blob/master/build/tests/geo/geodcat/geodcat-records/" target="_blank">valid</a></strong>
</aside>

# Description

## GeoDCAT implementation using OGC API records JSON schema

This building block defines a binding from OGC API Records schema to the GeoDCAT profile of DCAT.

This profile extends a building block that uses the official JSON-LD context for DCAT bound to the OGC API Records.

That building block is expected to be stable, whilst the GeoDCAT profile is under development.
# Examples

## GeoDCAT-AP backwards compatibility example.



```turtle
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
      dcat:bbox "<gml:Envelope srsName=\"http://www.opengis.net/def/crs/OGC/1.3/CRS84\"><gml:lowerCorner>-31.285 27.642</gml:lowerCorner><gml:upperCorner>34.099 70.075</gml:upperCorner></gml:Envelope>"^^gsp:gmlLiteral,
        "POLYGON((-31.285 70.075,34.099 70.075,34.099 27.642,-31.285 27.642,-31.285 70.075))"^^gsp:wktLiteral ] ;
  dct:subject <http://inspire.ec.europa.eu/metadata-codelist/TopicCategory/environment>,
    <http://inspire.ec.europa.eu/metadata-codelist/TopicCategory/health>,
    <http://inspire.ec.europa.eu/metadata-codelist/TopicCategory/transportation> ;
  dct:temporal [ a dct:PeriodOfTime ;
      dcat:endDate "2016-12-31"^^xsd:date ;
      dcat:startDate "2016-01-01"^^xsd:date ] ;
  dct:title "Noise contours data reported under Environmental Noise Directive (END) 2017 (raster 10m) - version 2019, Oct. 2019"@en ;
  dct:type <http://inspire.ec.europa.eu/metadata-codelist/ResourceType/dataset> ;
  dcat:contactPoint [ a vcard:Organization ;
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

```

<blockquote class="lang-specific turtle">
  <p class="example-links">
    <a target="_blank" href="https://ogcincubator.github.io/geodcat-ogcapi-records/build/tests/geo/geodcat/geodcat-records/example_1_1.ttl">Open in new window</a>
</blockquote>


This example is a GEODCAT-AP example to test backwards compatibility with SHACL and other RDF constraints


# JSON Schema

```yaml--schema
$schema: https://json-schema.org/draft/2020-12/schema
description: Schema for OGCAPI records profile for GeoDCAT - defines all extra elements
  defined by GeoDCAT so that the JSON-LD context can map to GeoDCAT RDF
allOf:
- $ref: ../dcat-records/schema.json
- description: Other elements required for DCAT

```

> <a target="_blank" href="https://avillar.github.io/TreedocViewer/?dataParser=yaml&amp;dataUrl=https%3A%2F%2Fogcincubator.github.io%2Fgeodcat-ogcapi-records%2Fbuild%2Fannotated%2Fgeo%2Fgeodcat%2Fgeodcat-records%2Fschema.yaml&amp;expand=2&amp;option=%7B%22showTable%22%3A+false%7D">View on YAML Viewer</a>

Links to the schema:

* YAML version: <a href="https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/geodcat-records/schema.yaml" target="_blank">https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/geodcat-records/schema.yaml</a>
* JSON version: <a href="https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/geodcat-records/schema.json" target="_blank">https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/geodcat-records/schema.json</a>


# JSON-LD Context

```json--ldContext
{
  "@context": {
    "accessRights": {
      "@id": "dct:accessRights",
      "@type": "@id"
    },
    "conformsTo": {
      "@container": "@set",
      "@id": "dct:conformsTo",
      "@type": "@id"
    },
    "contactPoint": {
      "@container": "@set",
      "@id": "dcat:contactPoint",
      "@type": "@id"
    },
    "creator": {
      "@id": "dct:creator",
      "@type": "@id"
    },
    "datasetDistribution": {
      "@container": "@set",
      "@id": "dcat:distribution",
      "@type": "@id"
    },
    "description": {
      "@container": "@set",
      "@id": "dct:description"
    },
    "documentation": {
      "@container": "@set",
      "@id": "foaf:page",
      "@type": "@id"
    },
    "frequency": {
      "@id": "dct:accrualPeriodicity",
      "@type": "@id"
    },
    "geographicalCoverage": {
      "@container": "@set",
      "@id": "dct:spatial",
      "@type": "@id"
    },
    "hasVersion": {
      "@container": "@set",
      "@id": "dcat:hasVersion",
      "@type": "@id"
    },
    "identifier": {
      "@container": "@set",
      "@id": "dct:identifier"
    },
    "isReferencedBy": {
      "@container": "@set",
      "@id": "dct:isReferencedBy",
      "@type": "@id"
    },
    "isVersionOf": {
      "@container": "@set",
      "@id": "dcat:isVersionOf",
      "@type": "@id"
    },
    "keyword": {
      "@container": "@set",
      "@id": "dcat:keyword"
    },
    "keywords": {
      "@container": "@set",
      "@id": "dcat:keyword"
    },
    "landingPage": {
      "@container": "@set",
      "@id": "dcat:landingPage",
      "@type": "@id"
    },
    "language": {
      "@container": "@set",
      "@id": "dct:language",
      "@type": "@id"
    },
    "modificationDate": "dct:modified",
    "updated": "dct:modified",
    "created": "dct:created",
    "otherIdentifier": {
      "@container": "@set",
      "@id": "http://www.w3.org/ns/adms#identifier",
      "@type": "@id"
    },
    "provenance": {
      "@container": "@set",
      "@id": "dct:provenance",
      "@type": "@id"
    },
    "publisher": {
      "@id": "dct:publisher",
      "@type": "@id"
    },
    "qualifiedAttribution": {
      "@container": "@set",
      "@id": "prov:qualifiedAttribution",
      "@type": "@id"
    },
    "qualifiedRelation": {
      "@container": "@set",
      "@id": "dcat:qualifiedRelation",
      "@type": "@id"
    },
    "relatedResource": {
      "@container": "@set",
      "@id": "dct:relation",
      "@type": "@id"
    },
    "releaseDate": "dct:issued",
    "sample": {
      "@container": "@set",
      "@id": "http://www.w3.org/ns/adms#sample",
      "@type": "@id"
    },
    "source": {
      "@container": "@set",
      "@id": "dct:source",
      "@type": "@id"
    },
    "spatialResolution": {
      "@container": "@set",
      "@id": "dcat:spatialResolutionInMeters",
      "@type": "http://www.w3.org/2001/XMLSchema#decimal"
    },
    "temporalCoverage": {
      "@container": "@set",
      "@id": "dct:temporal",
      "@type": "@id"
    },
    "temporalResolution": {
      "@container": "@set",
      "@id": "dcat:temporalResolution",
      "@type": "http://www.w3.org/2001/XMLSchema#duration"
    },
    "theme": {
      "@container": "@set",
      "@id": "dcat:theme",
      "@type": "@id"
    },
    "title": {
      "@container": "@set",
      "@id": "dct:title"
    },
    "type": {
      "@id": "dct:type",
      "@type": "@id"
    },
    "version": {
      "@container": "@set",
      "@id": "dcat:version"
    },
    "versionNotes": {
      "@container": "@set",
      "@id": "http://www.w3.org/ns/adms#versionNotes"
    },
    "wasGeneratedBy": {
      "@container": "@set",
      "@id": "prov:wasGeneratedBy",
      "@type": "@id"
    },
    "dct": "http://purl.org/dc/terms/",
    "dcat": "http://www.w3.org/ns/dcat#",
    "foaf": "http://xmlns.com/foaf/0.1/",
    "prov": "http://www.w3.org/ns/prov#",
    "xsd": "http://www.w3.org/2001/XMLSchema#",
    "owl": "http://www.w3.org/2002/07/owl#",
    "rdf": "http://www.w3.org/1999/02/22-rdf-syntax-ns#",
    "dctype": "http://purl.org/dc/dcmitype/",
    "skos": "http://www.w3.org/2004/02/skos/core#",
    "rdfs": "http://www.w3.org/2000/01/rdf-schema#",
    "vcard": "http://www.w3.org/2006/vcard/ns#",
    "@version": 1.1
  }
}
```

> <a target="_blank" href="https://json-ld.org/playground/#json-ld=https%3A%2F%2Fogcincubator.github.io%2Fgeodcat-ogcapi-records%2Fbuild%2Fannotated%2Fgeo%2Fgeodcat%2Fgeodcat-records%2Fcontext.jsonld">View on JSON-LD Playground</a>

You can find the full JSON-LD context here:
<a href="https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/geodcat-records/context.jsonld" target="_blank">https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/geodcat-records/context.jsonld</a>

# References

* [GeoDCAT Specification](http://www.opengis.net/def/metamodel/profiles/geodcat)
* [GeoDCAT Resources](http://www.opengis.net/def/metamodel/profiles/geodcat)
* [GeoDCAT Specification Repository](https://github.com/opengeospatial/GeoDCAT-SWG)

# For developers

The source code for this Building Block can be found in the following repository:

* URL: <a href="https://github.com/ogcincubator/geodcat-ogcapi-records" target="_blank">https://github.com/ogcincubator/geodcat-ogcapi-records</a>
* Path:
<code><a href="https://github.com/ogcincubator/geodcat-ogcapi-records/blob/HEAD/_sources/geodcat-records" target="_blank">_sources/geodcat-records</a></code>

