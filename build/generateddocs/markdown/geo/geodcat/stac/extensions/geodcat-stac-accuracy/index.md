
# GeoDCAT profile of STAC Accuracy extension (Schema)

`ogc.geo.geodcat.stac.extensions.geodcat-stac-accuracy` *v0.1*

This profile binds the schema for the STAC Accuracy extension to a profile of GeoDCAT.  It inherits a common mapping of STAC and OGC API Records Item and Collection objects to the DCAT model. Additional terminology reequired for the semantics of the extension can be mapped to additional ontologies as required. (Note this is a work in progress, the building blocks provide a test harness for these mappings, allowing systematic development of a GeoDCAT core ontology to meet the requirements of these existing metadata schemas.

[*Status*](http://www.opengis.net/def/status): Under development

## Description

## TDB

## Examples

### An example demonstrating EO extension fields in a STAC item.
#### json
```json
{
  "stac_version": "1.0.0",
  "stac_extensions": [
    "https://stac-extensions.github.io/accuracy/v1.0.0-beta.1/schema.json"
  ],
  "type": "Feature",
  "id": "item",
  "bbox": [
    172.9,
    1.3,
    173,
    1.4
  ],
  "geometry": {
    "type": "Polygon",
    "coordinates": [
      [
        [
          172.9,
          1.3
        ],
        [
          173,
          1.3
        ],
        [
          173,
          1.4
        ],
        [
          172.9,
          1.4
        ],
        [
          172.9,
          1.3
        ]
      ]
    ]
  },
  "properties": {
    "datetime": "2020-12-11T22:38:32Z",
    "accuracy:geometric_x_bias": 0,
    "accuracy:geometric_y_bias": 0,
    "accuracy:geometric_x_stddev": 0.5,
    "accuracy:geometric_y_stddev": 0.5,
    "accuracy:geometric_rmse": 1,
    "accuracy:measurement_relative": 0.01,
    "accuracy:measurement_absolute": 0.02
  },
  "links": [
    {
      "href": "https://example.com/examples/item.json",
      "rel": "self"
    }
  ],
  "assets": {
    "data": {
      "href": "https://example.com/examples/file.xyz"
    }
  }
}
```

#### jsonld
```jsonld
{
  "@context": "https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/stac/extensions/geodcat-stac-accuracy/context.jsonld",
  "stac_version": "1.0.0",
  "stac_extensions": [
    "https://stac-extensions.github.io/accuracy/v1.0.0-beta.1/schema.json"
  ],
  "type": "Feature",
  "id": "item",
  "bbox": [
    172.9,
    1.3,
    173,
    1.4
  ],
  "geometry": {
    "type": "Polygon",
    "coordinates": [
      [
        [
          172.9,
          1.3
        ],
        [
          173,
          1.3
        ],
        [
          173,
          1.4
        ],
        [
          172.9,
          1.4
        ],
        [
          172.9,
          1.3
        ]
      ]
    ]
  },
  "properties": {
    "datetime": "2020-12-11T22:38:32Z",
    "accuracy:geometric_x_bias": 0,
    "accuracy:geometric_y_bias": 0,
    "accuracy:geometric_x_stddev": 0.5,
    "accuracy:geometric_y_stddev": 0.5,
    "accuracy:geometric_rmse": 1,
    "accuracy:measurement_relative": 0.01,
    "accuracy:measurement_absolute": 0.02
  },
  "links": [
    {
      "href": "https://example.com/examples/item.json",
      "rel": "self"
    }
  ],
  "assets": {
    "data": {
      "href": "https://example.com/examples/file.xyz"
    }
  }
}
```

#### ttl
```ttl
@prefix : <https://w3id.org/ogc/stac/assets/> .
@prefix accuracy: <https://w3id.org/ogc/stac/extension/accuracy/> .
@prefix dcterms: <http://purl.org/dc/terms/> .
@prefix geojson: <https://purl.org/geojson/vocab#> .
@prefix ns1: <http://www.iana.org/assignments/> .
@prefix oa: <http://www.w3.org/ns/oa#> .
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix stac: <https://w3id.org/ogc/stac/core/> .
@prefix xsd: <http://www.w3.org/2001/XMLSchema#> .

<https://example.com/stac/accuracy/example-1/item> dcterms:date "2020-12-11T22:38:32+00:00"^^xsd:dateTime ;
    dcterms:format "Feature" ;
    rdfs:seeAlso [ ns1:relation <http://www.iana.org/assignments/relation/self> ;
            oa:hasTarget <https://example.com/examples/item.json> ] ;
    geojson:bbox ( 1.729e+02 1.3e+00 173 1.4e+00 ) ;
    geojson:geometry [ a geojson:Polygon ;
            geojson:coordinates ( ( ( 1.729e+02 1.3e+00 ) ( 173 1.3e+00 ) ( 173 1.4e+00 ) ( 1.729e+02 1.4e+00 ) ( 1.729e+02 1.3e+00 ) ) ) ] ;
    stac:hasAsset [ :data [ oa:hasTarget <https://example.com/examples/file.xyz> ] ] ;
    stac:hasExtension "https://stac-extensions.github.io/accuracy/v1.0.0-beta.1/schema.json" ;
    stac:version "1.0.0" ;
    accuracy:geometric_rmse 1 ;
    accuracy:geometric_x_bias 0 ;
    accuracy:geometric_x_stddev 5e-01 ;
    accuracy:geometric_y_bias 0 ;
    accuracy:geometric_y_stddev 5e-01 ;
    accuracy:measurement_absolute 2e-02 ;
    accuracy:measurement_relative 1e-02 .


```

## Schema

```yaml
$schema: https://json-schema.org/draft/2020-12/schema
description: Schema for OGCAPI records profile for GeoDCAT - defines all extra elements
  defined by GeoDCAT so that the JSON-LD context can map to GeoDCAT RDF
allOf:
- $ref: https://ogcincubator.github.io/bblocks-stac/build/annotated/contrib/stac/extensions/accuracy/schema.yaml
- anyOf:
  - $ref: https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/stac/geodcat-stac-item/schema.yaml
  - $ref: https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/stac/geodcat-stac-collection/schema.yaml
x-jsonld-prefixes:
  dqm: https://standards.isotc211.org/19157/-3/1/dqc/content/qualityMeasure/
  dqv: http://dqv.org/tdb#
  accuracy: https://w3id.org/ogc/stac/extension/accuracy/

```

Links to the schema:

* YAML version: [schema.yaml](https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/stac/extensions/geodcat-stac-accuracy/schema.json)
* JSON version: [schema.json](https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/stac/extensions/geodcat-stac-accuracy/schema.yaml)


# JSON-LD Context

```jsonld
{
  "@context": {
    "stac_extensions": "stac:hasExtension",
    "type": "dct:format",
    "id": "@id",
    "extent": "dct:extent",
    "item_assets": {
      "@context": {
        "type": "@type"
      }
    },
    "links": {
      "@context": {
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
        "length": "dct:extent"
      },
      "@id": "rdfs:seeAlso"
    },
    "title": {
      "@id": "dct:title",
      "@container": "@set"
    },
    "description": {
      "@id": "dct:description",
      "@container": "@set"
    },
    "keywords": {
      "@id": "dct:subject",
      "@container": "@set"
    },
    "roles": {
      "@id": "stac:roles",
      "@container": "@set"
    },
    "datetime": {
      "@id": "dct:date",
      "@type": "xsd:dateTime"
    },
    "start_datetime": {
      "@id": "stac:start_datetime",
      "@type": "xsd:dateTime"
    },
    "end_datetime": {
      "@id": "stac:end_datetime",
      "@type": "xsd:dateTime"
    },
    "created": "dct:created",
    "updated": "dct:modified",
    "license": "dct:license",
    "providers": "stac:hasProvider",
    "@vocab": "https://w3id.org/ogc/stac/assets/",
    "assets": {
      "@id": "stac:hasAsset",
      "@container": "@set"
    },
    "stac_version": "stac:version",
    "media_type": "dct:format",
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
    "properties": "@nest",
    "geometry": {
      "@context": {
        "type": "@type",
        "coordinates": {
          "@container": "@list",
          "@id": "geojson:coordinates"
        }
      },
      "@id": "geojson:geometry"
    },
    "bbox": {
      "@container": "@list",
      "@id": "geojson:bbox"
    },
    "conformsTo": {
      "@container": "@set",
      "@id": "dct:conformsTo",
      "@type": "@id"
    },
    "time": "dct:temporal",
    "linkTemplates": {
      "@context": {
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
        "uriTemplate": {
          "@type": "xsd:string",
          "@id": "rec:uriTemplate"
        },
        "varBase": "rec:varBase",
        "variables": {
          "@id": "rec:hasVariable",
          "@container": "@index",
          "@index": "dct:identifier"
        }
      },
      "@id": "rec:hasLinkTemplate"
    },
    "language": {
      "@context": {
        "code": "rec:languageCode",
        "name": "skos:prefLabel"
      },
      "@id": "rec:language"
    },
    "languages": {
      "@context": {
        "code": "rec:languageCode",
        "name": "skos:prefLabel"
      },
      "@container": "@set",
      "@id": "rec:languages"
    },
    "resourceLanguages": {
      "@context": {
        "code": "rec:languageCode",
        "name": "skos:prefLabel"
      },
      "@container": "@set",
      "@id": "rec:resourceLanguages"
    },
    "externalIds": {
      "@context": {
        "scheme": "rec:scheme",
        "value": "rec:id"
      },
      "@container": "@set",
      "@id": "rec:scopedIdentifier"
    },
    "themes": {
      "@context": {
        "concepts": {
          "@context": {
            "id": {
              "@id": "thns:id",
              "@type": "xsd:string"
            },
            "url": {
              "@id": "@id",
              "@type": "@id"
            }
          },
          "@id": "thns:concepts",
          "@container": "@set"
        },
        "scheme": "thns:scheme"
      },
      "@container": "@set",
      "@id": "rec:themes"
    },
    "formats": {
      "@context": {
        "name": "rec:name",
        "mediaType": "rec:mediaType"
      },
      "@container": "@set",
      "@id": "rec:format",
      "@type": "@id"
    },
    "contacts": {
      "@context": {
        "logo": {
          "@context": {
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
            "length": "dct:extent"
          }
        }
      },
      "@container": "@set",
      "@id": "dcat:contactPoint",
      "@type": "@id"
    },
    "rights": "dcat:rights",
    "accessrights": "dct:accessRights",
    "variables": {
      "@container": "@id",
      "@id": "rec:hasVariable",
      "@context": {
        "@base": "http://example.com/variables/",
        "@vocab": "https://www.opengis.net/def/ogc-api/records/"
      }
    },
    "href": {
      "@type": "@id",
      "@id": "oa:hasTarget"
    },
    "stac": "https://w3id.org/ogc/stac/core/",
    "dct": "http://purl.org/dc/terms/",
    "rdfs": "http://www.w3.org/2000/01/rdf-schema#",
    "oa": "http://www.w3.org/ns/oa#",
    "geojson": "https://purl.org/geojson/vocab#",
    "dcat": "http://www.w3.org/ns/dcat#",
    "rec": "https://www.opengis.net/def/ogc-api/records/",
    "skos": "http://www.w3.org/2004/02/skos/core#",
    "xsd": "http://www.w3.org/2001/XMLSchema#",
    "owl": "http://www.w3.org/2002/07/owl#",
    "rdf": "http://www.w3.org/1999/02/22-rdf-syntax-ns#",
    "w3ctime": "http://www.w3.org/2006/time#",
    "dctype": "http://purl.org/dc/dcmitype/",
    "vcard": "http://www.w3.org/2006/vcard/ns#",
    "prov": "http://www.w3.org/ns/prov#",
    "foaf": "http://xmlns.com/foaf/0.1/",
    "thns": "https://w3id.org/ogc/stac/themes/",
    "dqm": "https://standards.isotc211.org/19157/-3/1/dqc/content/qualityMeasure/",
    "dqv": "http://dqv.org/tdb#",
    "accuracy": "https://w3id.org/ogc/stac/extension/accuracy/",
    "@version": 1.1
  }
}
```

You can find the full JSON-LD context here:
[context.jsonld](https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/stac/extensions/geodcat-stac-accuracy/context.jsonld)

## Sources

* [GeoDCAT Specification](http://www.opengis.net/def/metamodel/profiles/geodcat)
* [GeoDCAT Resources](http://www.opengis.net/def/metamodel/profiles/geodcat)
* [GeoDCAT Specification Repository](https://github.com/opengeospatial/GeoDCAT-SWG)

# For developers

The source code for this Building Block can be found in the following repository:

* URL: [https://github.com/ogcincubator/geodcat-ogcapi-records](https://github.com/ogcincubator/geodcat-ogcapi-records)
* Path: `_sources/stac/extensions/geodcat-stac-accuracy`

