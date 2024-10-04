
# GeoDCAT mapping for STAC collection (Schema)

`ogc.geo.geodcat.stac.geodcat-stac-collection` *v0.1*

This building block defines mappings from the STAC collections schema to the core GeoDCAT profile of DCAT. It inherits from a general mapping of OGC API Records schema to GeoDCAT, which in turn reuses mappings to DCAT.  This is a work in progress to establish the scope of GeoDCAT to semantically describe existing spatial metadata schemas.

[*Status*](http://www.opengis.net/def/status): Under development

## Description

## STAC bindings for GeDCAT

This building block defines a binding from STAC collection schema to the GeoDCAT profile of DCAT.

This profile extends a building block that uses the official JSON-LD context for DCAT bound to the OGC API Records.


## Examples

### STAC spec simple item
This is the collection example from the STAC specification.  

#### json
```json
{
  "id": "simple-collection",
  "type": "Collection",
  "stac_extensions": [
    "https://stac-extensions.github.io/eo/v2.0.0/schema.json",
    "https://stac-extensions.github.io/projection/v2.0.0/schema.json",
    "https://stac-extensions.github.io/view/v1.0.0/schema.json"
  ],
  "stac_version": "1.1.0",
  "description": "A simple collection demonstrating core catalog fields with links to a couple of items",
  "title": "Simple Example Collection",
  "keywords": [
    "simple",
    "example",
    "collection"
  ],
  "providers": [
    {
      "name": "Remote Data, Inc",
      "description": "Producers of awesome spatiotemporal assets",
      "roles": [
        "producer",
        "processor"
      ],
      "url": "http://remotedata.io"
    }
  ],
  "extent": {
    "spatial": {
      "bbox": [
        [
          172.91173669923782,
          1.3438851951615003,
          172.95469614953714,
          1.3690476620161975
        ]
      ]
    },
    "temporal": {
      "interval": [
        [
          "2020-12-11T22:38:32.125Z",
          "2020-12-14T18:02:31.437Z"
        ]
      ]
    }
  },
  "license": "CC-BY-4.0",
  "summaries": {
    "platform": [
      "cool_sat1",
      "cool_sat2"
    ],
    "constellation": [
      "ion"
    ],
    "instruments": [
      "cool_sensor_v1",
      "cool_sensor_v2"
    ],
    "gsd": {
      "minimum": 0.512,
      "maximum": 0.66
    },
    "eo:cloud_cover": {
      "minimum": 1.2,
      "maximum": 1.2
    },
    "proj:cpde": [
      "EPSG:32659"
    ],
    "view:sun_elevation": {
      "minimum": 54.9,
      "maximum": 54.9
    },
    "view:off_nadir": {
      "minimum": 3.8,
      "maximum": 3.8
    },
    "view:sun_azimuth": {
      "minimum": 135.7,
      "maximum": 135.7
    },
    "statistics": {
      "type": "object",
      "properties": {
        "vegetation": {
          "description": "Percentage of pixels that are detected as vegetation, e.g. forests, grasslands, etc.",
          "minimum": 0,
          "maximum": 100
        },
        "water": {
          "description": "Percentage of pixels that are detected as water, e.g. rivers, oceans and ponds.",
          "minimum": 0,
          "maximum": 100
        },
        "urban": {
          "description": "Percentage of pixels that detected as urban, e.g. roads and buildings.",
          "minimum": 0,
          "maximum": 100
        }
      }
    }
  },
  "links": [
    {
      "rel": "root",
      "href": "./collection.json",
      "type": "application/json",
      "title": "Simple Example Collection"
    },
    {
      "rel": "item",
      "href": "./simple-item.json",
      "type": "application/geo+json",
      "title": "Simple Item"
    },
    {
      "rel": "item",
      "href": "./core-item.json",
      "type": "application/geo+json",
      "title": "Core Item"
    },
    {
      "rel": "item",
      "href": "./extended-item.json",
      "type": "application/geo+json",
      "title": "Extended Item"
    },
    {
      "rel": "self",
      "href": "https://raw.githubusercontent.com/radiantearth/stac-spec/v1.1.0/examples/collection.json",
      "type": "application/json"
    }
  ]
}

```

#### jsonld
```jsonld
{
  "@context": "https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/stac/geodcat-stac-collection/context.jsonld",
  "id": "simple-collection",
  "type": "Collection",
  "stac_extensions": [
    "https://stac-extensions.github.io/eo/v2.0.0/schema.json",
    "https://stac-extensions.github.io/projection/v2.0.0/schema.json",
    "https://stac-extensions.github.io/view/v1.0.0/schema.json"
  ],
  "stac_version": "1.1.0",
  "description": "A simple collection demonstrating core catalog fields with links to a couple of items",
  "title": "Simple Example Collection",
  "keywords": [
    "simple",
    "example",
    "collection"
  ],
  "providers": [
    {
      "name": "Remote Data, Inc",
      "description": "Producers of awesome spatiotemporal assets",
      "roles": [
        "producer",
        "processor"
      ],
      "url": "http://remotedata.io"
    }
  ],
  "extent": {
    "spatial": {
      "bbox": [
        [
          172.91173669923782,
          1.3438851951615003,
          172.95469614953714,
          1.3690476620161975
        ]
      ]
    },
    "temporal": {
      "interval": [
        [
          "2020-12-11T22:38:32.125Z",
          "2020-12-14T18:02:31.437Z"
        ]
      ]
    }
  },
  "license": "CC-BY-4.0",
  "summaries": {
    "platform": [
      "cool_sat1",
      "cool_sat2"
    ],
    "constellation": [
      "ion"
    ],
    "instruments": [
      "cool_sensor_v1",
      "cool_sensor_v2"
    ],
    "gsd": {
      "minimum": 0.512,
      "maximum": 0.66
    },
    "eo:cloud_cover": {
      "minimum": 1.2,
      "maximum": 1.2
    },
    "proj:cpde": [
      "EPSG:32659"
    ],
    "view:sun_elevation": {
      "minimum": 54.9,
      "maximum": 54.9
    },
    "view:off_nadir": {
      "minimum": 3.8,
      "maximum": 3.8
    },
    "view:sun_azimuth": {
      "minimum": 135.7,
      "maximum": 135.7
    },
    "statistics": {
      "type": "object",
      "properties": {
        "vegetation": {
          "description": "Percentage of pixels that are detected as vegetation, e.g. forests, grasslands, etc.",
          "minimum": 0,
          "maximum": 100
        },
        "water": {
          "description": "Percentage of pixels that are detected as water, e.g. rivers, oceans and ponds.",
          "minimum": 0,
          "maximum": 100
        },
        "urban": {
          "description": "Percentage of pixels that detected as urban, e.g. roads and buildings.",
          "minimum": 0,
          "maximum": 100
        }
      }
    }
  },
  "links": [
    {
      "rel": "root",
      "href": "./collection.json",
      "type": "application/json",
      "title": "Simple Example Collection"
    },
    {
      "rel": "item",
      "href": "./simple-item.json",
      "type": "application/geo+json",
      "title": "Simple Item"
    },
    {
      "rel": "item",
      "href": "./core-item.json",
      "type": "application/geo+json",
      "title": "Core Item"
    },
    {
      "rel": "item",
      "href": "./extended-item.json",
      "type": "application/geo+json",
      "title": "Extended Item"
    },
    {
      "rel": "self",
      "href": "https://raw.githubusercontent.com/radiantearth/stac-spec/v1.1.0/examples/collection.json",
      "type": "application/json"
    }
  ]
}
```

#### ttl
```ttl
@prefix dcterms: <http://purl.org/dc/terms/> .
@prefix ns1: <http://www.iana.org/assignments/> .
@prefix oa: <http://www.w3.org/ns/oa#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix stac: <urn:stac:vocab#> .

[] rdfs:label "Simple Example Collection" ;
    dcterms:description "A simple collection demonstrating core catalog fields with links to a couple of items" ;
    dcterms:extent [ ] ;
    dcterms:license "CC-BY-4.0" ;
    dcterms:subject "collection",
        "example",
        "simple" ;
    dcterms:type "Collection" ;
    rdfs:seeAlso [ dcterms:type "application/json" ;
            ns1:relation <http://www.iana.org/assignments/relation/self> ;
            oa:hasTarget <https://raw.githubusercontent.com/radiantearth/stac-spec/v1.1.0/examples/collection.json> ],
        [ rdfs:label "Core Item" ;
            dcterms:type "application/geo+json" ;
            ns1:relation <http://www.iana.org/assignments/relation/item> ;
            oa:hasTarget <https://example.com/stac/example1/core-item.json> ],
        [ rdfs:label "Simple Item" ;
            dcterms:type "application/geo+json" ;
            ns1:relation <http://www.iana.org/assignments/relation/item> ;
            oa:hasTarget <https://example.com/stac/example1/simple-item.json> ],
        [ rdfs:label "Extended Item" ;
            dcterms:type "application/geo+json" ;
            ns1:relation <http://www.iana.org/assignments/relation/item> ;
            oa:hasTarget <https://example.com/stac/example1/extended-item.json> ],
        [ rdfs:label "Simple Example Collection" ;
            dcterms:type "application/json" ;
            ns1:relation <http://www.iana.org/assignments/relation/root> ;
            oa:hasTarget <https://example.com/stac/example1/collection.json> ] ;
    stac:extensions "https://stac-extensions.github.io/eo/v2.0.0/schema.json",
        "https://stac-extensions.github.io/projection/v2.0.0/schema.json",
        "https://stac-extensions.github.io/view/v1.0.0/schema.json" ;
    stac:version "1.1.0" .


```

## Schema

```yaml
$schema: https://json-schema.org/draft/2020-12/schema
description: Schema for OGC API Records profile for GeoDCAT - defines all extra elements
  defined by GeoDCAT so that the JSON-LD context can map to GeoDCAT RDF
anyOf:
- $ref: https://ogcincubator.github.io/bblocks-stac/build/annotated/contrib/stac/collection/schema.yaml
- $ref: https://ogcincubator.github.io/bblocks-stac/build/annotated/contrib/stac/collection-v1-0-0/schema.yaml
- description: STAC core profile bound to GeoDCAT
x-jsonld-extra-terms:
  stac_version: urn:stac:vocab#version
  stac_extensions: urn:stac:vocab#extensions
  description: http://purl.org/dc/terms/description
  license: http://purl.org/dc/terms/license
  keywords: http://purl.org/dc/terms/subject
  extent: http://purl.org/dc/terms/extent
  links: rdfs:seeAlso
  assets:
    x-jsonld-id: urn:stac:vocab#hasAsset
    x-jsonld-container: '@id'
    x-jsonld-context:
      href:
        '@id': http://www.w3.org/ns/dcat#downloadURL
        '@type': '@id'
      title: http://purl.org/dc/terms/title
      type: http://purl.org/dc/terms/format
x-jsonld-prefixes:
  stac: urn:stac:vocab#
  dct: http://purl.org/dc/terms/
  dcat: http://www.w3.org/ns/dcat#

```

Links to the schema:

* YAML version: [schema.yaml](https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/stac/geodcat-stac-collection/schema.json)
* JSON version: [schema.json](https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/stac/geodcat-stac-collection/schema.yaml)


# JSON-LD Context

```jsonld
{
  "@context": {
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
    "type": "dct:type",
    "hreflang": "dct:language",
    "title": "rdfs:label",
    "length": "dct:extent",
    "stac_version": "stac:version",
    "stac_extensions": "stac:extensions",
    "description": "dct:description",
    "license": "dct:license",
    "keywords": "dct:subject",
    "extent": "dct:extent",
    "links": "rdfs:seeAlso",
    "assets": {
      "@id": "stac:hasAsset",
      "@container": "@id",
      "@context": {
        "href": {
          "@id": "dcat:downloadURL",
          "@type": "@id"
        },
        "title": "dct:title",
        "type": "dct:format"
      }
    },
    "oa": "http://www.w3.org/ns/oa#",
    "rdfs": "http://www.w3.org/2000/01/rdf-schema#",
    "dct": "http://purl.org/dc/terms/",
    "stac": "urn:stac:vocab#",
    "dcat": "http://www.w3.org/ns/dcat#",
    "@version": 1.1
  }
}
```

You can find the full JSON-LD context here:
[context.jsonld](https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/stac/geodcat-stac-collection/context.jsonld)

## Sources

* [GeoDCAT Specification](http://www.opengis.net/def/metamodel/profiles/geodcat)
* [GeoDCAT Resources](http://www.opengis.net/def/metamodel/profiles/geodcat)
* [GeoDCAT Specification Repository](https://github.com/opengeospatial/GeoDCAT-SWG)
* [STAC Specification](https://github.com/radiantearth/stac-spec)

# For developers

The source code for this Building Block can be found in the following repository:

* URL: [https://github.com/ogcincubator/geodcat-ogcapi-records](https://github.com/ogcincubator/geodcat-ogcapi-records)
* Path: `_sources/stac/geodcat-stac-collection`

