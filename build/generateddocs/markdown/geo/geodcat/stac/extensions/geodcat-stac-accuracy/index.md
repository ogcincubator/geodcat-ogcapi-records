
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
@prefix accuracy: <https://www.opengis.net/def/ogc-api/stac/accuracy/> .
@prefix dcat: <http://www.w3.org/ns/dcat#> .
@prefix dcterms: <http://purl.org/dc/terms/> .
@prefix geojson: <https://purl.org/geojson/vocab#> .
@prefix ns1: <http://stacspec.org/ontology/core#> .
@prefix ns2: <urn:stac:vocab#> .
@prefix ns3: <http://www.iana.org/assignments/> .
@prefix oa: <http://www.w3.org/ns/oa#> .
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix xsd: <http://www.w3.org/2001/XMLSchema#> .

<https://example.com/stac/accuracy/example-1/item> dcterms:type "Feature" ;
    ns1:datetime "2020-12-11T22:38:32+00:00"^^xsd:dateTime ;
    rdfs:seeAlso [ ns3:relation <http://www.iana.org/assignments/relation/self> ;
            oa:hasTarget <https://example.com/examples/item.json> ] ;
    geojson:bbox ( 1.729e+02 1.3e+00 173 1.4e+00 ) ;
    geojson:geometry [ a geojson:Polygon ;
            geojson:coordinates ( ( ( 1.729e+02 1.3e+00 ) ( 173 1.3e+00 ) ( 173 1.4e+00 ) ( 1.729e+02 1.4e+00 ) ( 1.729e+02 1.3e+00 ) ) ) ] ;
    accuracy:geometric_rmse 1 ;
    accuracy:geometric_x_bias 0 ;
    accuracy:geometric_x_stddev 5e-01 ;
    accuracy:geometric_y_bias 0 ;
    accuracy:geometric_y_stddev 5e-01 ;
    accuracy:measurement_absolute 2e-02 ;
    accuracy:measurement_relative 1e-02 ;
    ns2:extensions "https://stac-extensions.github.io/accuracy/v1.0.0-beta.1/schema.json" ;
    ns2:hasAsset <https://example.com/stac/accuracy/example-1/data> ;
    ns2:version "1.0.0" .

<https://example.com/stac/accuracy/example-1/data> dcat:downloadURL <https://example.com/examples/file.xyz> .


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
  accuracy: https://www.opengis.net/def/ogc-api/stac/accuracy/

```

Links to the schema:

* YAML version: [schema.yaml](https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/stac/extensions/geodcat-stac-accuracy/schema.json)
* JSON version: [schema.json](https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/stac/extensions/geodcat-stac-accuracy/schema.yaml)


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
    "id": "@id",
    "properties": "@nest",
    "geometry": {
      "@context": {
        "type": "@type"
      },
      "@id": "geojson:geometry"
    },
    "bbox": {
      "@container": "@list",
      "@id": "geojson:bbox"
    },
    "links": "rdfs:seeAlso",
    "coordinates": {
      "@container": "@list",
      "@id": "geojson:coordinates"
    },
    "created": "dct:created",
    "updated": "dct:modified",
    "uriTemplate": {
      "@type": "xsd:string",
      "@id": "oa:hasTarget"
    },
    "assets": {
      "@id": "urn:stac:vocab#hasAsset",
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
    "time": {
      "@id": "dct:temporal",
      "@context": {
        "interval": {
          "@id": "w3ctime:hasTime",
          "@container": "@list"
        },
        "resolution": "rec:iso8601period"
      }
    },
    "description": {
      "@container": "@set",
      "@id": "dct:description"
    },
    "keywords": {
      "@container": "@set",
      "@id": "dct:subject"
    },
    "conformsTo": {
      "@container": "@set",
      "@id": "dct:conformsTo",
      "@type": "@id"
    },
    "language": {
      "@id": "rec:language",
      "@context": {
        "code": "rec:languageCode",
        "name": "skos:prefLabel"
      }
    },
    "languages": {
      "@container": "@set",
      "@id": "rec:languages",
      "@context": {
        "code": "rec:languageCode",
        "name": "skos:prefLabel"
      }
    },
    "resourceLanguages": {
      "@container": "@set",
      "@id": "rec:resourceLanguages",
      "@context": {
        "code": "rec:languageCode",
        "name": "skos:prefLabel"
      }
    },
    "externalIds": {
      "@container": "@set",
      "@id": "rec:scopedIdentifier",
      "@context": {
        "scheme": "rec:scheme",
        "value": "rec:id"
      }
    },
    "themes": {
      "@container": "@set",
      "@id": "rec:themes",
      "@context": {
        "concepts": {
          "@id": "rec:concept",
          "@context": {
            "id": {
              "@type": "xsd:string",
              "@id": "rec:conceptID"
            },
            "url": {
              "@type": "@id",
              "@id": "dct:theme"
            }
          }
        },
        "scheme": "rec:scheme"
      }
    },
    "formats": {
      "@container": "@set",
      "@id": "rec:format",
      "@type": "@id"
    },
    "contacts": {
      "@container": "@set",
      "@id": "dcat:contactPoint",
      "@type": "@id"
    },
    "license": "dct:license",
    "rights": "dcat:rights",
    "linkTemplates": "rec:hasLinkTemplate",
    "variables": {
      "@container": "@id",
      "@id": "rec:hasVariable",
      "@context": {
        "@base": "http://example.com/variables/",
        "@vocab": "https://www.opengis.net/def/ogc-api/records/"
      }
    },
    "extent": "dct:extent",
    "datetime": {
      "@id": "http://stacspec.org/ontology/core#datetime",
      "@type": "xsd:dateTime"
    },
    "start_datetime": {
      "@id": "http://stacspec.org/ontology/core#start_datetime",
      "@type": "xsd:dateTime"
    },
    "end_datetime": {
      "@id": "http://stacspec.org/ontology/core#end_datetime",
      "@type": "xsd:dateTime"
    },
    "media_type": "http://stacspec.org/ontology/core#mediaType",
    "stac_version": "urn:stac:vocab#version",
    "stac_extensions": "urn:stac:vocab#extensions",
    "oa": "http://www.w3.org/ns/oa#",
    "rdfs": "http://www.w3.org/2000/01/rdf-schema#",
    "dct": "http://purl.org/dc/terms/",
    "geojson": "https://purl.org/geojson/vocab#",
    "stac": "https://w3id.org/ogc/stac/core/",
    "xsd": "http://www.w3.org/2001/XMLSchema#",
    "dqm": "https://standards.isotc211.org/19157/-3/1/dqc/content/qualityMeasure/",
    "dqv": "http://dqv.org/tdb#",
    "accuracy": "https://www.opengis.net/def/ogc-api/stac/accuracy/",
    "w3ctime": "http://www.w3.org/2006/time#",
    "rec": "https://www.opengis.net/def/ogc-api/records/",
    "dcat": "http://www.w3.org/ns/dcat#",
    "skos": "http://www.w3.org/2004/02/skos/core#",
    "owl": "http://www.w3.org/2002/07/owl#",
    "rdf": "http://www.w3.org/1999/02/22-rdf-syntax-ns#",
    "dctype": "http://purl.org/dc/dcmitype/",
    "vcard": "http://www.w3.org/2006/vcard/ns#",
    "prov": "http://www.w3.org/ns/prov#",
    "foaf": "http://xmlns.com/foaf/0.1/",
    "geo": "http://www.opengis.net/ont/geosparql#",
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

