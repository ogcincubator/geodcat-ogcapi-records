
# Generic DCAT profile of OGC API Records (Schema)

`ogc.geo.geodcat.dcat-records` *v0.1*

DCAT profile of OGC API Records binds the OGC API Records schema to the DCAT vocabulary. This is the baseline for semantic equivalence of OGC API records and the DCAT model. GeoDCAT and other profiles reuse this to distinguish between extensions and existing properties.

[*Status*](http://www.opengis.net/def/status): Under development

## Description

## DCAT baseline bound to OGC API records schema

This building block defines a binding from OGC API Records schema to the DCAT Vocabulary.

The JSON-LD context is derived from the [JSON-LD context for DCAT-AP](https://semiceu.github.io/DCAT-AP/releases/3.0.0/context/dcat-ap.jsonld).

It uses the context for a dcat:Dataset as the basis for a Record.

## Examples

### Generic DCAT example showing binding to OGC API record schema.
This example is to test records examples.

This snippet was retrieved from [https://raw.githubusercontent.com/opengeospatial/ogcapi-records/master/core/examples/json/record.json](https://raw.githubusercontent.com/opengeospatial/ogcapi-records/master/core/examples/json/record.json).
#### json
```json
{
  "id": "urn:x-wmo:md:int.wmo.wis::https://geo.woudc.org/def/data/ozone/total-column-ozone/totalozone",
  "type": "Feature",
  "time": {
    "interval": [ "1924-08-17T00:00:00Z", ".."],
    "resolution": "P1D"
  },
  "geometry": {
    "type": "Polygon",
    "coordinates": [ [ [ -180, -90 ], [ -180, 90 ],
          [ 180, 90 ], [ 180, -90 ], [ -180, -90 ] ] ]
  },
  "conformsTo": [
     "http://www.opengis.net/spec/ogcapi-records-1/1.0/req/record-core"
  ],
  "properties": {
    "created": "2021-02-08T00:00:00Z",
    "updated": "2021-02-08T00:00:00Z",
    "type": "dataset",
    "title": "Total Ozone - daily observations",
    "description": "A measurement of the total amount of atmospheric ozone in a given column from the surface to the edge of the atmosphere. Ground based instruments such as spectrophotometers and ozonemeters are used to measure results daily",
    "keywords": [ "total", "ozone", "level 1.0", "column",
                  "dobson", "brewer", "saoz" ],
    "language": {
      "code": "en-CA",
      "name": "English (Canada)"
    },
    "languages": [
      {
        "code": "en-CA",
        "name": "English (Canada)"
      },
      {
        "code": "fr-CA",
        "name": "French (Canada)"
      }
    ],
    "externalIds": [
      {
        "scheme": "WMO:WIS",
        "value": "urn:x-wmo:md:int.wmo.wis::https://geo.woudc.org/def/data/ozone/total-column-ozone/totalozone"
      }
    ],
    "contacts": [
      {
        "name": "World Ozone and Ultraviolet Radiation Data Centre",
        "links": [
           {
             "href": "https://woudc.org",
             "rel": "about",
             "type": "text/html"
           }
        ],
        "contactInstructions": "SEE PAGE: https://woudc.org/contact.php",
        "roles": [ "publisher" ]
      }
    ],
    "themes": [
      {
        "concepts": [
          { "id": "dobson" }, { "id": "brewer" },
          { "id": "vassey" }, { "id": "pion" },
          { "id": "microtops" }, { "id": "spectral" },
          { "id": "hoelper" }, { "id": "saoz" },
          { "id": "filter" }
        ],
        "scheme": "https://geo.woudc.org/codelists.xml#WOUDC_InstrumentCode"
      },
      {
        "concepts": [
          { "id": "atmosphericComposition" }, { "id": "pollution" },
          { "id": "observationPlatform" }, { "id": "rocketSounding" }
        ],
        "scheme": "https://wis.wmo.int/2012/codelists/WMOCodeLists.xml#WMO_CategoryCode"
      }
    ],
    "formats": [ "CSV", "GeoJSON" ],
    "license": "other"
  },
  "linkTemplates": [
    {
      "rel": "describes",
      "type": "image/png",
      "title": "World Ozone and Ultraviolet Radiation Data Centre (WOUDC) stations",
      "uriTemplate": "https://geo.woudc.org/ows?service=WMS&version=1.3.0&request=GetMap&crs={crs}&bbox={bbox}&layers=stations&width={width}&height={height}&format=image/png",
      "variables": {
        "bbox": {
          "description": "...",
          "type": "array",
          "items": {
            "type": "number",
            "format": "double"
          },
          "minItems": 4,
          "maxItems": 4
        },
        "crs": {
          "description": "...",
          "type": "string",
          "enum": [
            "EPSG:4326",
            "EPSG:3857"
          ]
        },
        "width": {
          "description": "...",
          "type": "number",
          "format": "integer",
          "minimum": 600,
          "maximum": 5000
        },
        "height": {
          "description": "...",
          "type": "number",
          "format": "integer",
          "minimum": 600,
          "maximum": 5000
        }
      }
    }
  ],
  "links": [
    {
      "rel": "alternate",
      "type": "text/html",
      "title": "This document as HTML",
      "href": "https://woudc.org/data/dataset_info.php?id=totalozone"
    },
    {
      "rel": "preview",
      "type": "image/png",
      "title": "Total Ozone Preview Image",
      "href": "https://woudc.org/data/preview.png"
    },
    {
      "rel": "enclosure",
      "type": "text/html",
      "title": "Web Accessible Folder (WAF)",
      "href": "https://woudc.org/archive/Archive-NewFormat/TotalOzone_1.0_1",
      "created": "2015-01-23T00:00:00Z",
      "updated": "2015-01-23T00:00:00Z"
    },
    {
      "rel": "search",
      "type": "text/html",
      "title": "Data Search / Download User Interface",
      "href": "https://woudc.org/data/explore.php?dataset=totalozone"
    },
    {
      "rel": "enclosure",
      "type": "application/zip",
      "title": "Static dataset archive file",
      "href": "https://woudc.org/archive/Summaries/dataset-snapshots/totalozone.zip",
      "created": "2015-01-23T00:00:00Z",
      "updated": "2015-01-23T00:00:00Z"
    },
    {
      "rel": "service",
      "type": "application/xml",
      "title": "OGC Web Feature Service (WFS)",
      "href": "https://geo.woudc.org/ows"
    },
    {
      "rel": "license",
      "href": "https://woudc.org/about/data-policy.php"
    }
  ]
}

```

#### jsonld
```jsonld
{
  "id": "urn:x-wmo:md:int.wmo.wis::https://geo.woudc.org/def/data/ozone/total-column-ozone/totalozone",
  "type": "Feature",
  "time": {
    "interval": [
      "1924-08-17T00:00:00Z",
      ".."
    ],
    "resolution": "P1D"
  },
  "geometry": {
    "type": "Polygon",
    "coordinates": [
      [
        [
          -180,
          -90
        ],
        [
          -180,
          90
        ],
        [
          180,
          90
        ],
        [
          180,
          -90
        ],
        [
          -180,
          -90
        ]
      ]
    ]
  },
  "conformsTo": [
    "http://www.opengis.net/spec/ogcapi-records-1/1.0/req/record-core"
  ],
  "properties": {
    "created": "2021-02-08T00:00:00Z",
    "updated": "2021-02-08T00:00:00Z",
    "type": "dataset",
    "title": "Total Ozone - daily observations",
    "description": "A measurement of the total amount of atmospheric ozone in a given column from the surface to the edge of the atmosphere. Ground based instruments such as spectrophotometers and ozonemeters are used to measure results daily",
    "keywords": [
      "total",
      "ozone",
      "level 1.0",
      "column",
      "dobson",
      "brewer",
      "saoz"
    ],
    "language": {
      "code": "en-CA",
      "name": "English (Canada)"
    },
    "languages": [
      {
        "code": "en-CA",
        "name": "English (Canada)"
      },
      {
        "code": "fr-CA",
        "name": "French (Canada)"
      }
    ],
    "externalIds": [
      {
        "scheme": "WMO:WIS",
        "value": "urn:x-wmo:md:int.wmo.wis::https://geo.woudc.org/def/data/ozone/total-column-ozone/totalozone"
      }
    ],
    "contacts": [
      {
        "name": "World Ozone and Ultraviolet Radiation Data Centre",
        "links": [
          {
            "href": "https://woudc.org",
            "rel": "about",
            "type": "text/html"
          }
        ],
        "contactInstructions": "SEE PAGE: https://woudc.org/contact.php",
        "roles": [
          "publisher"
        ]
      }
    ],
    "themes": [
      {
        "concepts": [
          {
            "id": "dobson"
          },
          {
            "id": "brewer"
          },
          {
            "id": "vassey"
          },
          {
            "id": "pion"
          },
          {
            "id": "microtops"
          },
          {
            "id": "spectral"
          },
          {
            "id": "hoelper"
          },
          {
            "id": "saoz"
          },
          {
            "id": "filter"
          }
        ],
        "scheme": "https://geo.woudc.org/codelists.xml#WOUDC_InstrumentCode"
      },
      {
        "concepts": [
          {
            "id": "atmosphericComposition"
          },
          {
            "id": "pollution"
          },
          {
            "id": "observationPlatform"
          },
          {
            "id": "rocketSounding"
          }
        ],
        "scheme": "https://wis.wmo.int/2012/codelists/WMOCodeLists.xml#WMO_CategoryCode"
      }
    ],
    "formats": [
      "CSV",
      "GeoJSON"
    ],
    "license": "other"
  },
  "linkTemplates": [
    {
      "rel": "describes",
      "type": "image/png",
      "title": "World Ozone and Ultraviolet Radiation Data Centre (WOUDC) stations",
      "uriTemplate": "https://geo.woudc.org/ows?service=WMS&version=1.3.0&request=GetMap&crs={crs}&bbox={bbox}&layers=stations&width={width}&height={height}&format=image/png",
      "variables": {
        "bbox": {
          "description": "...",
          "type": "array",
          "items": {
            "type": "number",
            "format": "double"
          },
          "minItems": 4,
          "maxItems": 4
        },
        "crs": {
          "description": "...",
          "type": "string",
          "enum": [
            "EPSG:4326",
            "EPSG:3857"
          ]
        },
        "width": {
          "description": "...",
          "type": "number",
          "format": "integer",
          "minimum": 600,
          "maximum": 5000
        },
        "height": {
          "description": "...",
          "type": "number",
          "format": "integer",
          "minimum": 600,
          "maximum": 5000
        }
      }
    }
  ],
  "links": [
    {
      "rel": "alternate",
      "type": "text/html",
      "title": "This document as HTML",
      "href": "https://woudc.org/data/dataset_info.php?id=totalozone"
    },
    {
      "rel": "preview",
      "type": "image/png",
      "title": "Total Ozone Preview Image",
      "href": "https://woudc.org/data/preview.png"
    },
    {
      "rel": "enclosure",
      "type": "text/html",
      "title": "Web Accessible Folder (WAF)",
      "href": "https://woudc.org/archive/Archive-NewFormat/TotalOzone_1.0_1",
      "created": "2015-01-23T00:00:00Z",
      "updated": "2015-01-23T00:00:00Z"
    },
    {
      "rel": "search",
      "type": "text/html",
      "title": "Data Search / Download User Interface",
      "href": "https://woudc.org/data/explore.php?dataset=totalozone"
    },
    {
      "rel": "enclosure",
      "type": "application/zip",
      "title": "Static dataset archive file",
      "href": "https://woudc.org/archive/Summaries/dataset-snapshots/totalozone.zip",
      "created": "2015-01-23T00:00:00Z",
      "updated": "2015-01-23T00:00:00Z"
    },
    {
      "rel": "service",
      "type": "application/xml",
      "title": "OGC Web Feature Service (WFS)",
      "href": "https://geo.woudc.org/ows"
    },
    {
      "rel": "license",
      "href": "https://woudc.org/about/data-policy.php"
    }
  ],
  "@context": "https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/dcat-records/context.jsonld"
}
```

#### ttl
```ttl
@prefix dcat: <http://www.w3.org/ns/dcat#> .
@prefix dcterms: <http://purl.org/dc/terms/> .
@prefix geojson: <https://purl.org/geojson/vocab#> .
@prefix ns1: <http://www.iana.org/assignments/> .
@prefix oa: <http://www.w3.org/ns/oa#> .
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix time: <http://www.w3.org/2006/time#> .
@prefix xsd: <http://www.w3.org/2001/XMLSchema#> .

<urn:x-wmo:md:int.wmo.wis::https://geo.woudc.org/def/data/ozone/total-column-ozone/totalozone> a <http://example.com/records/dataset>,
        geojson:Feature ;
    rdfs:label "Total Ozone - daily observations" ;
    dcterms:conformsTo <http://www.opengis.net/spec/ogcapi-records-1/1.0/req/record-core> ;
    dcterms:created "2021-02-08T00:00:00Z" ;
    dcterms:description "A measurement of the total amount of atmospheric ozone in a given column from the surface to the edge of the atmosphere. Ground based instruments such as spectrophotometers and ozonemeters are used to measure results daily" ;
    dcterms:language [ dcterms:language "fr-CA" ],
        [ dcterms:language "en-CA" ],
        "en-CA" ;
    dcterms:modified "2021-02-08T00:00:00Z" ;
    dcterms:temporal [ time:hasTime ( "1924-08-17T00:00:00Z" ".." ) ] ;
    rdfs:seeAlso [ rdfs:label "OGC Web Feature Service (WFS)" ;
            dcterms:type "application/xml" ;
            ns1:relation <http://www.iana.org/assignments/relation/service> ;
            oa:hasTarget <https://geo.woudc.org/ows> ],
        [ ns1:relation <http://www.iana.org/assignments/relation/license> ;
            oa:hasTarget <https://woudc.org/about/data-policy.php> ],
        [ rdfs:label "This document as HTML" ;
            dcterms:type "text/html" ;
            ns1:relation <http://www.iana.org/assignments/relation/alternate> ;
            oa:hasTarget <https://woudc.org/data/dataset_info.php?id=totalozone> ],
        [ rdfs:label "Web Accessible Folder (WAF)" ;
            dcterms:created "2015-01-23T00:00:00Z" ;
            dcterms:modified "2015-01-23T00:00:00Z" ;
            dcterms:type "text/html" ;
            ns1:relation <http://www.iana.org/assignments/relation/enclosure> ;
            oa:hasTarget <https://woudc.org/archive/Archive-NewFormat/TotalOzone_1.0_1> ],
        [ rdfs:label "Static dataset archive file" ;
            dcterms:created "2015-01-23T00:00:00Z" ;
            dcterms:modified "2015-01-23T00:00:00Z" ;
            dcterms:type "application/zip" ;
            ns1:relation <http://www.iana.org/assignments/relation/enclosure> ;
            oa:hasTarget <https://woudc.org/archive/Summaries/dataset-snapshots/totalozone.zip> ],
        [ rdfs:label "Total Ozone Preview Image" ;
            dcterms:type "image/png" ;
            ns1:relation <http://www.iana.org/assignments/relation/preview> ;
            oa:hasTarget <https://woudc.org/data/preview.png> ],
        [ rdfs:label "Data Search / Download User Interface" ;
            dcterms:type "text/html" ;
            ns1:relation <http://www.iana.org/assignments/relation/search> ;
            oa:hasTarget <https://woudc.org/data/explore.php?dataset=totalozone> ] ;
    dcat:keyword "brewer",
        "column",
        "dobson",
        "level 1.0",
        "ozone",
        "saoz",
        "total" ;
    geojson:geometry [ a geojson:Polygon ;
            geojson:coordinates ( ( ( -180 -90 ) ( -180 90 ) ( 180 90 ) ( 180 -90 ) ( -180 -90 ) ) ) ] .


```

## Schema

```yaml
$schema: https://json-schema.org/draft/2020-12/schema
description: Schema for OGCAPI records profile for GeoDCAT - defines all extra elements
  defined by GeoDCAT so that the JSON-LD context can map to GeoDCAT RDF
allOf:
- $ref: https://ogcincubator.github.io/bblocks-ogcapi-records/build/annotated/api/records/v1/schemas/recordGeoJSON/schema.yaml
x-jsonld-extra-terms:
  accessRights:
    x-jsonld-id: http://purl.org/dc/terms/accessRights
    x-jsonld-type: '@id'
  time: http://purl.org/dc/terms/temporal
  interval:
    x-jsonld-id: http://www.w3.org/2006/time#hasTime
    x-jsonld-container: '@list'
  conformsTo:
    x-jsonld-container: '@set'
    x-jsonld-id: http://purl.org/dc/terms/conformsTo
    x-jsonld-type: '@id'
  contactPoint:
    x-jsonld-container: '@set'
    x-jsonld-id: http://www.w3.org/ns/dcat#contactPoint
    x-jsonld-type: '@id'
  creator:
    x-jsonld-id: http://purl.org/dc/terms/creator
    x-jsonld-type: '@id'
  datasetDistribution:
    x-jsonld-container: '@set'
    x-jsonld-id: http://www.w3.org/ns/dcat#distribution
    x-jsonld-type: '@id'
  description:
    x-jsonld-container: '@set'
    x-jsonld-id: http://purl.org/dc/terms/description
  documentation:
    x-jsonld-container: '@set'
    x-jsonld-id: http://xmlns.com/foaf/0.1/page
    x-jsonld-type: '@id'
  frequency:
    x-jsonld-id: http://purl.org/dc/terms/accrualPeriodicity
    x-jsonld-type: '@id'
  geographicalCoverage:
    x-jsonld-container: '@set'
    x-jsonld-id: http://purl.org/dc/terms/spatial
    x-jsonld-type: '@id'
  hasVersion:
    x-jsonld-container: '@set'
    x-jsonld-id: http://www.w3.org/ns/dcat#hasVersion
    x-jsonld-type: '@id'
  identifier:
    x-jsonld-container: '@set'
    x-jsonld-id: http://purl.org/dc/terms/identifier
  isReferencedBy:
    x-jsonld-container: '@set'
    x-jsonld-id: http://purl.org/dc/terms/isReferencedBy
    x-jsonld-type: '@id'
  isVersionOf:
    x-jsonld-container: '@set'
    x-jsonld-id: http://www.w3.org/ns/dcat#isVersionOf
    x-jsonld-type: '@id'
  keyword:
    x-jsonld-container: '@set'
    x-jsonld-id: http://www.w3.org/ns/dcat#keyword
  keywords:
    x-jsonld-container: '@set'
    x-jsonld-id: http://www.w3.org/ns/dcat#keyword
  landingPage:
    x-jsonld-container: '@set'
    x-jsonld-id: http://www.w3.org/ns/dcat#landingPage
    x-jsonld-type: '@id'
  language: '@nest'
  languages:
    x-jsonld-container: '@set'
    x-jsonld-id: http://purl.org/dc/terms/language
  code: http://purl.org/dc/terms/language
  modificationDate: http://purl.org/dc/terms/modified
  updated: http://purl.org/dc/terms/modified
  created: http://purl.org/dc/terms/created
  otherIdentifier:
    x-jsonld-container: '@set'
    x-jsonld-id: http://www.w3.org/ns/adms#identifier
    x-jsonld-type: '@id'
  provenance:
    x-jsonld-container: '@set'
    x-jsonld-id: http://purl.org/dc/terms/provenance
    x-jsonld-type: '@id'
  publisher:
    x-jsonld-id: http://purl.org/dc/terms/publisher
    x-jsonld-type: '@id'
  qualifiedAttribution:
    x-jsonld-container: '@set'
    x-jsonld-id: http://www.w3.org/ns/prov#qualifiedAttribution
    x-jsonld-type: '@id'
  qualifiedRelation:
    x-jsonld-container: '@set'
    x-jsonld-id: http://www.w3.org/ns/dcat#qualifiedRelation
    x-jsonld-type: '@id'
  relatedResource:
    x-jsonld-container: '@set'
    x-jsonld-id: http://purl.org/dc/terms/relation
    x-jsonld-type: '@id'
  releaseDate: http://purl.org/dc/terms/issued
  sample:
    x-jsonld-container: '@set'
    x-jsonld-id: http://www.w3.org/ns/adms#sample
    x-jsonld-type: '@id'
  source:
    x-jsonld-container: '@set'
    x-jsonld-id: http://purl.org/dc/terms/source
    x-jsonld-type: '@id'
  spatialResolution:
    x-jsonld-container: '@set'
    x-jsonld-id: http://www.w3.org/ns/dcat#spatialResolutionInMeters
    x-jsonld-type: http://www.w3.org/2001/XMLSchema#decimal
  temporalCoverage:
    x-jsonld-container: '@set'
    x-jsonld-id: http://purl.org/dc/terms/temporal
    x-jsonld-type: '@id'
  temporalResolution:
    x-jsonld-container: '@set'
    x-jsonld-id: http://www.w3.org/ns/dcat#temporalResolution
    x-jsonld-type: http://www.w3.org/2001/XMLSchema#duration
  theme:
    x-jsonld-container: '@set'
    x-jsonld-id: http://www.w3.org/ns/dcat#theme
    x-jsonld-type: '@id'
  title:
    x-jsonld-container: '@set'
    x-jsonld-id: http://purl.org/dc/terms/title
  type:
    x-jsonld-id: http://purl.org/dc/terms/type
    x-jsonld-type: '@id'
  version:
    x-jsonld-container: '@set'
    x-jsonld-id: http://www.w3.org/ns/dcat#version
  versionNotes:
    x-jsonld-container: '@set'
    x-jsonld-id: http://www.w3.org/ns/adms#versionNotes
  wasGeneratedBy:
    x-jsonld-container: '@set'
    x-jsonld-id: http://www.w3.org/ns/prov#wasGeneratedBy
    x-jsonld-type: '@id'
x-jsonld-prefixes:
  dct: http://purl.org/dc/terms/
  w3ctime: http://www.w3.org/2006/time#
  dcat: http://www.w3.org/ns/dcat#
  foaf: http://xmlns.com/foaf/0.1/
  prov: http://www.w3.org/ns/prov#
  xsd: http://www.w3.org/2001/XMLSchema#
  owl: http://www.w3.org/2002/07/owl#
  rdf: http://www.w3.org/1999/02/22-rdf-syntax-ns#
  dctype: http://purl.org/dc/dcmitype/
  skos: http://www.w3.org/2004/02/skos/core#
  rdfs: http://www.w3.org/2000/01/rdf-schema#
  vcard: http://www.w3.org/2006/vcard/ns#

```

Links to the schema:

* YAML version: [schema.yaml](https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/dcat-records/schema.json)
* JSON version: [schema.json](https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/dcat-records/schema.yaml)


# JSON-LD Context

```jsonld
{
  "@context": {
    "type": "@type",
    "coordinates": {
      "@container": "@list",
      "@id": "geojson:coordinates"
    },
    "bbox": {
      "@container": "@list",
      "@id": "geojson:bbox"
    },
    "href": {
      "@type": "@id",
      "@id": "oa:hasTarget"
    },
    "rel": {
      "@context": {
        "@base": "http://www.iana.org/assignments/relation/"
      },
      "@id": "http://www.iana.org/assignments/relation",
      "@type": "@id"
    },
    "hreflang": "dct:language",
    "title": "rdfs:label",
    "length": "dct:extent",
    "created": "dct:created",
    "updated": "dct:modified",
    "uriTemplate": {
      "@type": "xsd:string",
      "@id": "oa:hasTarget"
    },
    "id": "@id",
    "properties": "@nest",
    "geometry": {
      "@context": {},
      "@id": "geojson:geometry"
    },
    "Feature": "geojson:Feature",
    "FeatureCollection": "geojson:FeatureCollection",
    "GeometryCollection": "geojson:GeometryCollection",
    "LineString": "geojson:LineString",
    "MultiLineString": "geojson:MultiLineString",
    "MultiPoint": "geojson:MultiPoint",
    "MultiPolygon": "geojson:MultiPolygon",
    "Point": "geojson:Point",
    "Polygon": "geojson:Polygon",
    "features": {
      "@container": "@set",
      "@id": "geojson:features"
    },
    "links": {
      "@context": {
        "type": "dct:type"
      },
      "@id": "rdfs:seeAlso"
    },
    "accessRights": {
      "@id": "dct:accessRights",
      "@type": "@id"
    },
    "time": "dct:temporal",
    "interval": {
      "@id": "w3ctime:hasTime",
      "@container": "@list"
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
    "language": "@nest",
    "languages": {
      "@container": "@set",
      "@id": "dct:language"
    },
    "code": "dct:language",
    "modificationDate": "dct:modified",
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
    "geojson": "https://purl.org/geojson/vocab#",
    "oa": "http://www.w3.org/ns/oa#",
    "rdfs": "http://www.w3.org/2000/01/rdf-schema#",
    "dct": "http://purl.org/dc/terms/",
    "xsd": "http://www.w3.org/2001/XMLSchema#",
    "w3ctime": "http://www.w3.org/2006/time#",
    "dcat": "http://www.w3.org/ns/dcat#",
    "foaf": "http://xmlns.com/foaf/0.1/",
    "prov": "http://www.w3.org/ns/prov#",
    "owl": "http://www.w3.org/2002/07/owl#",
    "rdf": "http://www.w3.org/1999/02/22-rdf-syntax-ns#",
    "dctype": "http://purl.org/dc/dcmitype/",
    "skos": "http://www.w3.org/2004/02/skos/core#",
    "vcard": "http://www.w3.org/2006/vcard/ns#",
    "@version": 1.1
  }
}
```

You can find the full JSON-LD context here:
[context.jsonld](https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/dcat-records/context.jsonld)

## Sources

* [DCAT v3 Specification](https://www.w3.org/TR/vocab-dcat-3/)
* [API Records Specification Repository](https://github.com/opengeospatial/ogcapi-records)

# For developers

The source code for this Building Block can be found in the following repository:

* URL: [https://github.com/ogcincubator/geodcat-ogcapi-records](https://github.com/ogcincubator/geodcat-ogcapi-records)
* Path: `_sources/dcat-records`

