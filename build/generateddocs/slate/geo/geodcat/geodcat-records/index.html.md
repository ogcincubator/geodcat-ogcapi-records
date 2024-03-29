---
title: GeoDCAT profile of OGC API Records (Schema)

language_tabs:
  - json: JSON
  - jsonld: JSON-LD
  - turtle: RDF/Turtle

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



```json
{
  "@context": [
    "https://opengeospatial.github.io/bblocks/annotated-schemas/geo/common/data_types/geojson/context.jsonld",
    "https://opengeospatial.github.io/bblocks/annotated-schemas/ogc-utils/json-link/context.jsonld"
  ],
  "id": "urn:x-wmo:md:int.wmo.wis::https://geo.woudc.org/def/data/ozone/total-column-ozone/totalozone",
  "conformsTo": [
    "http://www.opengis.net/spec/ogcapi-records-1/1.0/req/record-core"
  ],
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
      "code": "en"
    },
    "externalId": [
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
  "links": [
    {
      "rel": "alternate",
      "type": "text/html",
      "title": "This document as HTML",
      "href": "https://woudc.org/data/dataset_info.php?id=totalozone"
    },
    {
      "rel": "item",
      "type": "image/png",
      "title": "OGC Web Map Service (WMS)",
      "href": "https://geo.woudc.org/ows?service=WMS&version=1.3.0&request=GetMap&crs={crs}&bbox={bbox}&layers=totalozone&width={width}&height={height}&format=image/png",
      "templated": true,
      "variables": {
        "crs": {
          "description": "...",
          "type": "string",
          "enum": [
            "EPSG:4326",
            "EPSG:3857"
          ]
        },
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

<blockquote class="lang-specific json">
  <p class="example-links">
    <a target="_blank" href="https://ogcincubator.github.io/geodcat-ogcapi-records/build/tests/geo/geodcat/geodcat-records/example_1_1.json">Open in new window</a>
    <a target="_blank" href="https://avillar.github.io/TreedocViewer/?dataParser=json&amp;dataUrl=https%3A%2F%2Fogcincubator.github.io%2Fgeodcat-ogcapi-records%2Fbuild%2Ftests%2Fgeo%2Fgeodcat%2Fgeodcat-records%2Fexample_1_1.json&amp;expand=2&amp;option=%7B%22showTable%22%3A+false%7D">View on JSON Viewer</a></p>
</blockquote>




```jsonld
{
  "@context": [
    "https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/geodcat-records/context.jsonld",
    "https://opengeospatial.github.io/bblocks/annotated-schemas/geo/common/data_types/geojson/context.jsonld",
    "https://opengeospatial.github.io/bblocks/annotated-schemas/ogc-utils/json-link/context.jsonld"
  ],
  "id": "urn:x-wmo:md:int.wmo.wis::https://geo.woudc.org/def/data/ozone/total-column-ozone/totalozone",
  "conformsTo": [
    "http://www.opengis.net/spec/ogcapi-records-1/1.0/req/record-core"
  ],
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
      "code": "en"
    },
    "externalId": [
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
  "links": [
    {
      "rel": "alternate",
      "type": "text/html",
      "title": "This document as HTML",
      "href": "https://woudc.org/data/dataset_info.php?id=totalozone"
    },
    {
      "rel": "item",
      "type": "image/png",
      "title": "OGC Web Map Service (WMS)",
      "href": "https://geo.woudc.org/ows?service=WMS&version=1.3.0&request=GetMap&crs={crs}&bbox={bbox}&layers=totalozone&width={width}&height={height}&format=image/png",
      "templated": true,
      "variables": {
        "crs": {
          "description": "...",
          "type": "string",
          "enum": [
            "EPSG:4326",
            "EPSG:3857"
          ]
        },
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

<blockquote class="lang-specific jsonld">
  <p class="example-links">
    <a target="_blank" href="https://ogcincubator.github.io/geodcat-ogcapi-records/build/tests/geo/geodcat/geodcat-records/example_1_1.jsonld">Open in new window</a>
    <a target="_blank" href="https://json-ld.org/playground/#json-ld=https%3A%2F%2Fogcincubator.github.io%2Fgeodcat-ogcapi-records%2Fbuild%2Ftests%2Fgeo%2Fgeodcat%2Fgeodcat-records%2Fexample_1_1.jsonld">View on JSON-LD Playground</a>
</blockquote>




```turtle
@prefix dcat: <http://www.w3.org/ns/dcat#> .
@prefix dct: <http://purl.org/dc/terms/> .
@prefix geojson: <https://purl.org/geojson/vocab#> .
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix xsd: <http://www.w3.org/2001/XMLSchema#> .

<urn:x-wmo:md:int.wmo.wis::https://geo.woudc.org/def/data/ozone/total-column-ozone/totalozone> rdfs:label "Total Ozone - daily observations" ;
    dct:conformsTo <http://www.opengis.net/spec/ogcapi-records-1/1.0/req/record-core> ;
    dct:created "2021-02-08T00:00:00Z" ;
    dct:description "A measurement of the total amount of atmospheric ozone in a given column from the surface to the edge of the atmosphere. Ground based instruments such as spectrophotometers and ozonemeters are used to measure results daily" ;
    dct:language [ ] ;
    dct:modified "2021-02-08T00:00:00Z" ;
    dct:type "Feature",
        "dataset" ;
    dcat:keyword "brewer",
        "column",
        "dobson",
        "level 1.0",
        "ozone",
        "saoz",
        "total" ;
    geojson:geometry [ dct:type "Polygon" ;
            geojson:coordinates ( ( ( -180 -90 ) ( -180 90 ) ( 180 90 ) ( 180 -90 ) ( -180 -90 ) ) ) ] .


```

<blockquote class="lang-specific turtle">
  <p class="example-links">
    <a target="_blank" href="https://ogcincubator.github.io/geodcat-ogcapi-records/build/tests/geo/geodcat/geodcat-records/example_1_1.ttl">Open in new window</a>
</blockquote>


Examples of OGC API Records mapped to GeoDCAT 


# JSON Schema

```yaml--schema
$schema: https://json-schema.org/draft/2020-12/schema
description: Schema for OGCAPI records profile for GeoDCAT - defines all extra elements
  defined by GeoDCAT so that the JSON-LD context can map to GeoDCAT RDF
allOf:
- $ref: https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/dcat-records/schema.yaml
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

