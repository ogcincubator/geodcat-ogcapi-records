---
title: GeoDCAT profile of OGC API Records (Schema)

language_tabs:
  - json: JSON
  - jsonld: JSON-LD

toc_footers:
  - Version 0.1
  - <a href='#'>GeoDCAT profile of OGC API Records</a>
  - <a href='https://blocks.ogc.org/register.html'>Building Blocks register</a>

search: true

code_clipboard: true

meta:
  - name: GeoDCAT profile of OGC API Records (Schema)
---


# GeoDCAT profile of OGC API Records `ogc.geo.geodcat.dcat-records`

GeoDCAT profile of OGC API Records binds the OGC API Records schema to the GeoDCAT profile of DCAT. Additional schema elements are defined for each element of GeoDCAT not directly expressible in OGC API Records schema or other available profile

<p class="status">
    <span data-rainbow-uri="http://www.opengis.net/def/status">Status</span>:
    <a href="http://www.opengis.net/def/status/under-development" target="_blank" data-rainbow-uri>Under development</a>
</p>

<aside class="success">
This building block is <strong><a href="https://github.com/ogcincubator/geodcat-ogcapi-records/blob/master/build/tests/geo/geodcat/dcat-records/" target="_blank">valid</a></strong>
</aside>

# Description

## GeoDCAT implementation using OGC API records JSON schema

This building block defines a binding from OGC API Records schema to the GeoDCAT profile of DCAT.

The JSON-LD context is derived from the published JSON-LD context constained within the JSON-LD expression of the DCAT vocabulary.

(Note that such a context should be provided as a reusable resource - if no changes are deemed necessary to implement an OGC API records schema then a _proxy_ building block for DCAT will be created to support re-use of this context.)
# Examples

## Generic DCAT example showing binding to OGC API record schema.

This example is a GEODCAT-AP example to test backwards compatibility with SHACL and other RDF constraints



```json
{
  "id": "urn:x-wmo:md:int.wmo.wis::https://geo.woudc.org/def/data/ozone/total-column-ozone/totalozone",
  "conformsTo": [
    "http://www.opengis.net/spec/ogcapi-records-1/1.0/req/record-core"
  ],
  "type": "Feature",
  "time": {
    "interval": [ "1924-08-17T00:00:00Z", ".."],
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
    "language": { "code": "en"} ,
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
        "roles": [ "publisher" ]
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
    <a target="_blank" href="https://ogcincubator.github.io/geodcat-ogcapi-records/build/tests/geo/geodcat/dcat-records/example_1_1.json">Open in new window</a>
    <a target="_blank" href="https://avillar.github.io/TreedocViewer/?dataParser=json&amp;dataUrl=https%3A%2F%2Fogcincubator.github.io%2Fgeodcat-ogcapi-records%2Fbuild%2Ftests%2Fgeo%2Fgeodcat%2Fdcat-records%2Fexample_1_1.json&amp;expand=2&amp;option=%7B%22showTable%22%3A+false%7D">View on JSON Viewer</a></p>
</blockquote>




```jsonld
{
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
  ],
  "@context": "https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/dcat-records/context.jsonld"
}
```

<blockquote class="lang-specific jsonld">
  <p class="example-links">
    <a target="_blank" href="https://ogcincubator.github.io/geodcat-ogcapi-records/build/tests/geo/geodcat/dcat-records/example_1_1.jsonld">Open in new window</a>
    <a target="_blank" href="https://json-ld.org/playground/#json-ld=https%3A%2F%2Fogcincubator.github.io%2Fgeodcat-ogcapi-records%2Fbuild%2Ftests%2Fgeo%2Fgeodcat%2Fdcat-records%2Fexample_1_1.jsonld">View on JSON-LD Playground</a>
</blockquote>




# JSON Schema

```yaml--schema
$schema: https://json-schema.org/draft/2020-12/schema
description: Schema for OGCAPI records profile for GeoDCAT - defines all extra elements
  defined by GeoDCAT so that the JSON-LD context can map to GeoDCAT RDF
allOf:
- $ref: https://raw.githubusercontent.com/opengeospatial/ogcapi-records/master/core/openapi/schemas/recordGeoJSON.yaml
- description: Other elements needed to define common approaches for GeoDCAT - profiles
    can make specific ones mandatory as required
x-jsonld-extra-terms:
  domain:
    x-jsonld-id: http://www.w3.org/2000/01/rdf-schema#domain
    x-jsonld-type: '@id'
  scopeNote:
    x-jsonld-id: http://www.w3.org/2004/02/skos/core#scopeNote
    x-jsonld-type: http://www.w3.org/1999/02/22-rdf-syntax-ns#langString
  label:
    x-jsonld-id: http://www.w3.org/2000/01/rdf-schema#label
    x-jsonld-type: http://www.w3.org/1999/02/22-rdf-syntax-ns#langString
  isDefinedBy:
    x-jsonld-id: http://www.w3.org/2000/01/rdf-schema#isDefinedBy
    x-jsonld-type: '@id'
  comment:
    x-jsonld-id: http://www.w3.org/2000/01/rdf-schema#comment
    x-jsonld-type: http://www.w3.org/1999/02/22-rdf-syntax-ns#langString
  changeNote:
    x-jsonld-id: http://www.w3.org/2004/02/skos/core#changeNote
    x-jsonld-type: http://www.w3.org/1999/02/22-rdf-syntax-ns#langString
  definition:
    x-jsonld-id: http://www.w3.org/2004/02/skos/core#definition
    x-jsonld-type: http://www.w3.org/1999/02/22-rdf-syntax-ns#langString
  subPropertyOf:
    x-jsonld-id: http://www.w3.org/2000/01/rdf-schema#subPropertyOf
    x-jsonld-type: '@id'
  range:
    x-jsonld-id: http://www.w3.org/2000/01/rdf-schema#range
    x-jsonld-type: '@id'
  name:
    x-jsonld-id: http://xmlns.com/foaf/0.1/name
    x-jsonld-type: http://www.w3.org/2001/XMLSchema#string
  homepage:
    x-jsonld-id: http://xmlns.com/foaf/0.1/homepage
    x-jsonld-type: '@id'
  rest:
    x-jsonld-id: http://www.w3.org/1999/02/22-rdf-syntax-ns#rest
    x-jsonld-type: '@id'
  first:
    x-jsonld-id: http://www.w3.org/1999/02/22-rdf-syntax-ns#first
    x-jsonld-type: '@id'
  seeAlso:
    x-jsonld-id: http://www.w3.org/2000/01/rdf-schema#seeAlso
    x-jsonld-type: '@id'
  editorialNote:
    x-jsonld-id: http://www.w3.org/2004/02/skos/core#editorialNote
    x-jsonld-type: http://www.w3.org/1999/02/22-rdf-syntax-ns#langString
  altLabel:
    x-jsonld-id: http://www.w3.org/2004/02/skos/core#altLabel
    x-jsonld-type: http://www.w3.org/1999/02/22-rdf-syntax-ns#langString
  workInfoHomepage:
    x-jsonld-id: http://xmlns.com/foaf/0.1/workInfoHomepage
    x-jsonld-type: '@id'
  affiliation:
    x-jsonld-id: http://schema.org/affiliation
    x-jsonld-type: '@id'
  rangeIncludes:
    x-jsonld-id: http://schema.org/rangeIncludes
    x-jsonld-type: '@id'
  unionOf:
    x-jsonld-id: http://www.w3.org/2002/07/owl#unionOf
    x-jsonld-type: '@id'
  creator:
    x-jsonld-id: http://purl.org/dc/terms/creator
    x-jsonld-type: '@id'
  versionInfo:
    x-jsonld-id: http://www.w3.org/2002/07/owl#versionInfo
    x-jsonld-type: http://www.w3.org/1999/02/22-rdf-syntax-ns#langString
  contributor:
    x-jsonld-id: http://purl.org/dc/terms/contributor
    x-jsonld-type: '@id'
  modified:
    x-jsonld-id: http://purl.org/dc/terms/modified
    x-jsonld-type: http://www.w3.org/2001/XMLSchema#date
  imports:
    x-jsonld-id: http://www.w3.org/2002/07/owl#imports
    x-jsonld-type: '@id'
  license:
    x-jsonld-id: http://purl.org/dc/terms/license
    x-jsonld-type: '@id'
  maker:
    x-jsonld-id: http://xmlns.com/foaf/0.1/maker
    x-jsonld-type: '@id'
  subClassOf:
    x-jsonld-id: http://www.w3.org/2000/01/rdf-schema#subClassOf
    x-jsonld-type: '@id'
  propertyChainAxiom:
    x-jsonld-id: http://www.w3.org/2002/07/owl#propertyChainAxiom
    x-jsonld-type: '@id'
  onProperty:
    x-jsonld-id: http://www.w3.org/2002/07/owl#onProperty
    x-jsonld-type: '@id'
  cardinality:
    x-jsonld-id: http://www.w3.org/2002/07/owl#cardinality
    x-jsonld-type: http://www.w3.org/2001/XMLSchema#nonNegativeInteger
  allValuesFrom:
    x-jsonld-id: http://www.w3.org/2002/07/owl#allValuesFrom
    x-jsonld-type: '@id'
x-jsonld-prefixes:
  dct: http://purl.org/dc/terms/
  owl: http://www.w3.org/2002/07/owl#
  rdf: http://www.w3.org/1999/02/22-rdf-syntax-ns#
  dctype: http://purl.org/dc/dcmitype/
  xsd: http://www.w3.org/2001/XMLSchema#
  skos: http://www.w3.org/2004/02/skos/core#
  rdfs: http://www.w3.org/2000/01/rdf-schema#
  vcard: http://www.w3.org/2006/vcard/ns#
  dcat: http://www.w3.org/ns/dcat#
  prov: http://www.w3.org/ns/prov#
  foaf: http://xmlns.com/foaf/0.1/
  sdo: http://schema.org/

```

> <a target="_blank" href="https://avillar.github.io/TreedocViewer/?dataParser=yaml&amp;dataUrl=https%3A%2F%2Fogcincubator.github.io%2Fgeodcat-ogcapi-records%2Fbuild%2Fannotated%2Fgeo%2Fgeodcat%2Fdcat-records%2Fschema.yaml&amp;expand=2&amp;option=%7B%22showTable%22%3A+false%7D">View on YAML Viewer</a>

Links to the schema:

* YAML version: <a href="https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/dcat-records/schema.yaml" target="_blank">https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/dcat-records/schema.yaml</a>
* JSON version: <a href="https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/dcat-records/schema.json" target="_blank">https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/dcat-records/schema.json</a>


# JSON-LD Context

```json--ldContext
{
  "@context": {
    "domain": {
      "@id": "rdfs:domain",
      "@type": "@id"
    },
    "scopeNote": {
      "@id": "skos:scopeNote",
      "@type": "http://www.w3.org/1999/02/22-rdf-syntax-ns#langString"
    },
    "label": {
      "@id": "rdfs:label",
      "@type": "http://www.w3.org/1999/02/22-rdf-syntax-ns#langString"
    },
    "isDefinedBy": {
      "@id": "rdfs:isDefinedBy",
      "@type": "@id"
    },
    "comment": {
      "@id": "rdfs:comment",
      "@type": "http://www.w3.org/1999/02/22-rdf-syntax-ns#langString"
    },
    "changeNote": {
      "@id": "skos:changeNote",
      "@type": "http://www.w3.org/1999/02/22-rdf-syntax-ns#langString"
    },
    "definition": {
      "@id": "skos:definition",
      "@type": "http://www.w3.org/1999/02/22-rdf-syntax-ns#langString"
    },
    "subPropertyOf": {
      "@id": "rdfs:subPropertyOf",
      "@type": "@id"
    },
    "range": {
      "@id": "rdfs:range",
      "@type": "@id"
    },
    "name": {
      "@id": "foaf:name",
      "@type": "http://www.w3.org/2001/XMLSchema#string"
    },
    "homepage": {
      "@id": "foaf:homepage",
      "@type": "@id"
    },
    "rest": {
      "@id": "rdf:rest",
      "@type": "@id"
    },
    "first": {
      "@id": "rdf:first",
      "@type": "@id"
    },
    "seeAlso": {
      "@id": "rdfs:seeAlso",
      "@type": "@id"
    },
    "editorialNote": {
      "@id": "skos:editorialNote",
      "@type": "http://www.w3.org/1999/02/22-rdf-syntax-ns#langString"
    },
    "altLabel": {
      "@id": "skos:altLabel",
      "@type": "http://www.w3.org/1999/02/22-rdf-syntax-ns#langString"
    },
    "workInfoHomepage": {
      "@id": "foaf:workInfoHomepage",
      "@type": "@id"
    },
    "affiliation": {
      "@id": "sdo:affiliation",
      "@type": "@id"
    },
    "rangeIncludes": {
      "@id": "sdo:rangeIncludes",
      "@type": "@id"
    },
    "unionOf": {
      "@id": "owl:unionOf",
      "@type": "@id"
    },
    "creator": {
      "@id": "dct:creator",
      "@type": "@id"
    },
    "versionInfo": {
      "@id": "owl:versionInfo",
      "@type": "http://www.w3.org/1999/02/22-rdf-syntax-ns#langString"
    },
    "contributor": {
      "@id": "dct:contributor",
      "@type": "@id"
    },
    "modified": {
      "@id": "dct:modified",
      "@type": "http://www.w3.org/2001/XMLSchema#date"
    },
    "imports": {
      "@id": "owl:imports",
      "@type": "@id"
    },
    "license": {
      "@id": "dct:license",
      "@type": "@id"
    },
    "maker": {
      "@id": "foaf:maker",
      "@type": "@id"
    },
    "subClassOf": {
      "@id": "rdfs:subClassOf",
      "@type": "@id"
    },
    "propertyChainAxiom": {
      "@id": "owl:propertyChainAxiom",
      "@type": "@id"
    },
    "onProperty": {
      "@id": "owl:onProperty",
      "@type": "@id"
    },
    "cardinality": {
      "@id": "owl:cardinality",
      "@type": "http://www.w3.org/2001/XMLSchema#nonNegativeInteger"
    },
    "allValuesFrom": {
      "@id": "owl:allValuesFrom",
      "@type": "@id"
    },
    "dct": "http://purl.org/dc/terms/",
    "owl": "http://www.w3.org/2002/07/owl#",
    "rdf": "http://www.w3.org/1999/02/22-rdf-syntax-ns#",
    "dctype": "http://purl.org/dc/dcmitype/",
    "xsd": "http://www.w3.org/2001/XMLSchema#",
    "skos": "http://www.w3.org/2004/02/skos/core#",
    "rdfs": "http://www.w3.org/2000/01/rdf-schema#",
    "vcard": "http://www.w3.org/2006/vcard/ns#",
    "dcat": "http://www.w3.org/ns/dcat#",
    "prov": "http://www.w3.org/ns/prov#",
    "foaf": "http://xmlns.com/foaf/0.1/",
    "sdo": "http://schema.org/",
    "@version": 1.1
  }
}
```

> <a target="_blank" href="https://json-ld.org/playground/#json-ld=https%3A%2F%2Fogcincubator.github.io%2Fgeodcat-ogcapi-records%2Fbuild%2Fannotated%2Fgeo%2Fgeodcat%2Fdcat-records%2Fcontext.jsonld">View on JSON-LD Playground</a>

You can find the full JSON-LD context here:
<a href="https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/dcat-records/context.jsonld" target="_blank">https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/dcat-records/context.jsonld</a>

# References

* [GeoDCAT Specification](http://www.opengis.net/def/metamodel/profiles/geodcat)
* [GeoDCAT Resources](http://www.opengis.net/def/metamodel/profiles/geodcat)
* [GeoDCAT Specification Repository](https://github.com/opengeospatial/GeoDCAT-SWG)

# For developers

The source code for this Building Block can be found in the following repository:

* URL: <a href="https://github.com/ogcincubator/geodcat-ogcapi-records" target="_blank">https://github.com/ogcincubator/geodcat-ogcapi-records</a>
* Path:
<code><a href="https://github.com/ogcincubator/geodcat-ogcapi-records/blob/HEAD/_sources/dcat-records" target="_blank">_sources/dcat-records</a></code>

