
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
@prefix : <https://w3id.org/ogc/stac/assets/> .
@prefix dcterms: <http://purl.org/dc/terms/> .
@prefix ns1: <http://www.iana.org/assignments/> .
@prefix ns2: <view:> .
@prefix ns3: <eo:> .
@prefix ns4: <proj:> .
@prefix oa: <http://www.w3.org/ns/oa#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix stac: <https://w3id.org/ogc/stac/core/> .
@prefix xsd: <http://www.w3.org/2001/XMLSchema#> .

<https://example.com/stac/example1/simple-collection> dcterms:description "A simple collection demonstrating core catalog fields with links to a couple of items" ;
    dcterms:extent [ :spatial [ :bbox 1.343885e+00,
                        1.369048e+00,
                        1.729117e+02,
                        1.729547e+02 ] ;
            :temporal [ :interval "2020-12-11T22:38:32.125Z",
                        "2020-12-14T18:02:31.437Z" ] ] ;
    dcterms:format "Collection" ;
    dcterms:title "Simple Example Collection" ;
    rdfs:seeAlso [ rdfs:label "Core Item" ;
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
            oa:hasTarget <https://example.com/stac/example1/collection.json> ],
        [ dcterms:type "application/json" ;
            ns1:relation <http://www.iana.org/assignments/relation/self> ;
            oa:hasTarget <https://raw.githubusercontent.com/radiantearth/stac-spec/v1.1.0/examples/collection.json> ] ;
    :keywords "collection",
        "example",
        "simple" ;
    :license "CC-BY-4.0" ;
    :providers [ dcterms:description "Producers of awesome spatiotemporal assets" ;
            :name "Remote Data, Inc" ;
            :url "http://remotedata.io" ;
            stac:roles "processor",
                "producer" ] ;
    :summaries [ ns3:cloud_cover [ :maximum 1.2e+00 ;
                    :minimum 1.2e+00 ] ;
            :constellation "ion" ;
            :gsd [ :maximum 6.6e-01 ;
                    :minimum 5.12e-01 ] ;
            :instruments "cool_sensor_v1",
                "cool_sensor_v2" ;
            :platform "cool_sat1",
                "cool_sat2" ;
            :statistics [ dcterms:format "object" ;
                    :properties [ :urban [ dcterms:description "Percentage of pixels that detected as urban, e.g. roads and buildings." ;
                                    :maximum 100 ;
                                    :minimum 0 ] ;
                            :vegetation [ dcterms:description "Percentage of pixels that are detected as vegetation, e.g. forests, grasslands, etc." ;
                                    :maximum 100 ;
                                    :minimum 0 ] ;
                            :water [ dcterms:description "Percentage of pixels that are detected as water, e.g. rivers, oceans and ponds." ;
                                    :maximum 100 ;
                                    :minimum 0 ] ] ] ;
            ns4:cpde "EPSG:32659" ;
            ns2:off_nadir [ :maximum 3.8e+00 ;
                    :minimum 3.8e+00 ] ;
            ns2:sun_azimuth [ :maximum 1.357e+02 ;
                    :minimum 1.357e+02 ] ;
            ns2:sun_elevation [ :maximum 5.49e+01 ;
                    :minimum 5.49e+01 ] ] ;
    stac:hasExtension "https://stac-extensions.github.io/eo/v2.0.0/schema.json",
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
  stac_version: https://w3id.org/ogc/stac/core/version
  stac_extensions: https://w3id.org/ogc/stac/core/extensions
  description: http://purl.org/dc/terms/description
  license: http://purl.org/dc/terms/license
  keywords: http://purl.org/dc/terms/subject
  extent: http://purl.org/dc/terms/extent
  links: rdfs:seeAlso
  assets:
    x-jsonld-id: https://w3id.org/ogc/stac/core/hasAsset
    x-jsonld-container: '@id'
    x-jsonld-context:
      href:
        '@id': http://www.w3.org/ns/dcat#downloadURL
        '@type': '@id'
      title: http://purl.org/dc/terms/title
      type: http://purl.org/dc/terms/format
x-jsonld-prefixes:
  stac: https://w3id.org/ogc/stac/core/
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
    "stac_extensions": "stac:hasExtension",
    "type": "dct:format",
    "id": "@id",
    "extent": {
      "@context": {
        "spatial": {
          "@context": {
            "bbox": {}
          }
        },
        "temporal": {
          "@context": {
            "interval": {}
          }
        }
      },
      "@id": "dct:extent"
    },
    "item_assets": {
      "@context": {
        "href": {},
        "type": "@type"
      }
    },
    "links": {
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
        "anchor": {},
        "type": "dct:type",
        "hreflang": "dct:language",
        "title": "rdfs:label",
        "length": "dct:extent"
      },
      "@id": "rdfs:seeAlso"
    },
    "summaries": {
      "@context": {
        "minimum": {},
        "maximum": {}
      }
    },
    "title": "dct:title",
    "description": "dct:description",
    "keywords": {},
    "roles": {
      "@id": "stac:roles",
      "@container": "@set"
    },
    "bands": {
      "@context": {
        "name": {}
      }
    },
    "datetime": {},
    "start_datetime": {},
    "end_datetime": {},
    "created": {},
    "updated": {},
    "data_type": {},
    "nodata": {},
    "statistics": {
      "@context": {
        "minimum": {},
        "maximum": {},
        "mean": {},
        "stddev": {},
        "count": {},
        "valid_percent": {}
      }
    },
    "unit": {},
    "platform": {},
    "instruments": {},
    "constellation": {},
    "mission": {},
    "gsd": {},
    "license": {},
    "providers": {
      "@context": {
        "name": {},
        "url": {}
      }
    },
    "@vocab": "https://w3id.org/ogc/stac/assets/",
    "assets": {
      "@context": {
        "href": {}
      },
      "@id": "stac:hasAsset",
      "@container": "@set"
    },
    "stac_version": "stac:version",
    "media_type": "dct:format",
    "stac": "https://w3id.org/ogc/stac/core/",
    "dct": "http://purl.org/dc/terms/",
    "rdfs": "http://www.w3.org/2000/01/rdf-schema#",
    "oa": "http://www.w3.org/ns/oa#",
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

