
# GeoDCAT profile of STAC Electro-Optical extension (Schema)

`ogc.geo.geodcat.stac.extensions.geodcat-stac-eo` *v0.1*

This profile binds the schema for the STAC Electro-Optical extension to a profile of GeoDCAT.  It inherits a common mapping of STAC and OGC API Records Item and Collection objects to the DCAT model. Additional terminology reequired for the semantics of the extension can be mapped to additional ontologies as required. (Note this is a work in progress, the building blocks provide a test harness for these mappings, allowing systematic development of a GeoDCAT core ontology to meet the requirements of these existing metadata schemas.

[*Status*](http://www.opengis.net/def/status): Under development

## Description

## STAC Electro-Optical extension bindings for GeDCAT

This building block shows a possible profile of GeoDCAT supporting semantic annotation and inclusion of STAC EO resources in a knowledge graph.


## Examples

### A simple Collection demonstrating EO extension fields in a Collection.
#### json
```json
{
  "id": "eo-collection",
  "type": "Collection",
  "stac_extensions": [
    "https://stac-extensions.github.io/eo/v2.0.0/schema.json"
  ],
  "stac_version": "1.1.0",
  "description": "A simple Collection demonstrating EO extension fields in a Collection.",
  "title": "Simple EO Collection",
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
    "eo:cloud_cover": {
      "minimum": 0,
      "maximum": 50
    },
    "bands": [
      {
        "name": "band1",
        "eo:common_name": "blue",
        "eo:center_wavelength": 0.47,
        "eo:full_width_half_max": 0.07,
        "eo:solar_illumination": 1959.66
      },
      {
        "name": "band2",
        "eo:common_name": "green",
        "eo:center_wavelength": 0.56,
        "eo:full_width_half_max": 0.08,
        "eo:solar_illumination": 1823.24
      },
      {
        "name": "band3",
        "eo:common_name": "red",
        "eo:center_wavelength": 0.645,
        "eo:full_width_half_max": 0.09,
        "eo:solar_illumination": 1512.06
      },
      {
        "name": "band4",
        "eo:common_name": "nir",
        "eo:center_wavelength": 0.8,
        "eo:full_width_half_max": 0.152,
        "eo:solar_illumination": 1041.63
      }
    ]
  },
  "item_assets": {
    "analytic": {
      "type": "image/tiff; application=geotiff; profile=cloud-optimized",
      "title": "4-Band Analytic",
      "roles": [
        "data"
      ],
      "bands": [
        {
          "name": "band1",
          "eo:common_name": "blue",
          "eo:center_wavelength": 0.47,
          "eo:full_width_half_max": 0.7,
          "eo:solar_illumination": 1959.66
        },
        {
          "name": "band2",
          "eo:common_name": "green",
          "eo:center_wavelength": 0.56,
          "eo:full_width_half_max": 0.08,
          "eo:solar_illumination": 1823.24
        },
        {
          "name": "band3",
          "common_name": "red",
          "eo:center_wavelength": 0.645,
          "eo:full_width_half_max": 0.9,
          "eo:solar_illumination": 1512.06
        },
        {
          "name": "band4",
          "eo:common_name": "nir",
          "eo:center_wavelength": 0.8,
          "eo:full_width_half_max": 0.152,
          "eo:solar_illumination": 1041.63
        }
      ]
    },
    "thumbnail": {
      "title": "Thumbnail",
      "type": "image/png",
      "roles": [
        "thumbnail"
      ]
    },
    "visual": {
      "type": "image/tiff; application=geotiff; profile=cloud-optimized",
      "title": "3-Band Visual",
      "roles": [
        "visual"
      ],
      "bands": [
        {
          "name": "band3",
          "eo:common_name": "red",
          "eo:center_wavelength": 0.645,
          "eo:full_width_half_max": 0.09
        },
        {
          "name": "band2",
          "eo:common_name": "green",
          "eo:center_wavelength": 0.56,
          "eo:full_width_half_max": 0.08
        },
        {
          "name": "band1",
          "eo:common_name": "blue",
          "eo:center_wavelength": 0.47,
          "eo:full_width_half_max": 0.07
        }
      ]
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
      "href": "./item.json",
      "type": "application/geo+json",
      "title": "20201211_223832_CS2"
    }
  ]
}

```

#### jsonld
```jsonld
{
  "@context": "https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/stac/extensions/geodcat-stac-eo/context.jsonld",
  "id": "eo-collection",
  "type": "Collection",
  "stac_extensions": [
    "https://stac-extensions.github.io/eo/v2.0.0/schema.json"
  ],
  "stac_version": "1.1.0",
  "description": "A simple Collection demonstrating EO extension fields in a Collection.",
  "title": "Simple EO Collection",
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
    "eo:cloud_cover": {
      "minimum": 0,
      "maximum": 50
    },
    "bands": [
      {
        "name": "band1",
        "eo:common_name": "blue",
        "eo:center_wavelength": 0.47,
        "eo:full_width_half_max": 0.07,
        "eo:solar_illumination": 1959.66
      },
      {
        "name": "band2",
        "eo:common_name": "green",
        "eo:center_wavelength": 0.56,
        "eo:full_width_half_max": 0.08,
        "eo:solar_illumination": 1823.24
      },
      {
        "name": "band3",
        "eo:common_name": "red",
        "eo:center_wavelength": 0.645,
        "eo:full_width_half_max": 0.09,
        "eo:solar_illumination": 1512.06
      },
      {
        "name": "band4",
        "eo:common_name": "nir",
        "eo:center_wavelength": 0.8,
        "eo:full_width_half_max": 0.152,
        "eo:solar_illumination": 1041.63
      }
    ]
  },
  "item_assets": {
    "analytic": {
      "type": "image/tiff; application=geotiff; profile=cloud-optimized",
      "title": "4-Band Analytic",
      "roles": [
        "data"
      ],
      "bands": [
        {
          "name": "band1",
          "eo:common_name": "blue",
          "eo:center_wavelength": 0.47,
          "eo:full_width_half_max": 0.7,
          "eo:solar_illumination": 1959.66
        },
        {
          "name": "band2",
          "eo:common_name": "green",
          "eo:center_wavelength": 0.56,
          "eo:full_width_half_max": 0.08,
          "eo:solar_illumination": 1823.24
        },
        {
          "name": "band3",
          "common_name": "red",
          "eo:center_wavelength": 0.645,
          "eo:full_width_half_max": 0.9,
          "eo:solar_illumination": 1512.06
        },
        {
          "name": "band4",
          "eo:common_name": "nir",
          "eo:center_wavelength": 0.8,
          "eo:full_width_half_max": 0.152,
          "eo:solar_illumination": 1041.63
        }
      ]
    },
    "thumbnail": {
      "title": "Thumbnail",
      "type": "image/png",
      "roles": [
        "thumbnail"
      ]
    },
    "visual": {
      "type": "image/tiff; application=geotiff; profile=cloud-optimized",
      "title": "3-Band Visual",
      "roles": [
        "visual"
      ],
      "bands": [
        {
          "name": "band3",
          "eo:common_name": "red",
          "eo:center_wavelength": 0.645,
          "eo:full_width_half_max": 0.09
        },
        {
          "name": "band2",
          "eo:common_name": "green",
          "eo:center_wavelength": 0.56,
          "eo:full_width_half_max": 0.08
        },
        {
          "name": "band1",
          "eo:common_name": "blue",
          "eo:center_wavelength": 0.47,
          "eo:full_width_half_max": 0.07
        }
      ]
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
      "href": "./item.json",
      "type": "application/geo+json",
      "title": "20201211_223832_CS2"
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
@prefix stac: <https://w3id.org/ogc/stac/core/> .

<https://example.com/stac/raster/example-1/eo-collection> a <https://example.com/stac/raster/example-1/Collection> ;
    dcterms:description "A simple Collection demonstrating EO extension fields in a Collection." ;
    dcterms:extent [ ] ;
    dcterms:license "CC-BY-4.0" ;
    dcterms:title "Simple EO Collection" ;
    rdfs:seeAlso [ rdfs:label "20201211_223832_CS2" ;
            dcterms:type "application/geo+json" ;
            ns1:relation <http://www.iana.org/assignments/relation/item> ;
            oa:hasTarget <https://example.com/stac/raster/example-1/item.json> ],
        [ rdfs:label "Simple Example Collection" ;
            dcterms:type "application/json" ;
            ns1:relation <http://www.iana.org/assignments/relation/root> ;
            oa:hasTarget <https://example.com/stac/raster/example-1/collection.json> ] ;
    stac:hasExtension "https://stac-extensions.github.io/eo/v2.0.0/schema.json" ;
    stac:version "1.1.0" .


```


### An example demonstrating EO extension fields in a STAC item.
#### json
```json
{
  "stac_version": "1.1.0",
  "stac_extensions": [
    "https://stac-extensions.github.io/eo/v2.0.0/schema.json"
  ],
  "type": "Feature",
  "id": "20201211_223832_CS2",
  "collection": "eo-collection",
  "bbox": [
    172.91173669923782,
    1.3438851951615003,
    172.95469614953714,
    1.3690476620161975
  ],
  "geometry": {
    "type": "Polygon",
    "coordinates": [
      [
        [
          172.91173669923782,
          1.3438851951615003
        ],
        [
          172.95469614953714,
          1.3438851951615003
        ],
        [
          172.95469614953714,
          1.3690476620161975
        ],
        [
          172.91173669923782,
          1.3690476620161975
        ],
        [
          172.91173669923782,
          1.3438851951615003
        ]
      ]
    ]
  },
  "properties": {
    "datetime": "2020-12-11T22:38:32.125Z",
    "created": "2020-12-12T01:48:13.725Z",
    "updated": "2020-12-12T01:48:13.725Z",
    "platform": "cool_sat2",
    "instruments": [
      "cool_sensor_v1"
    ],
    "gsd": 0.66,
    "eo:cloud_cover": 1.2,
    "eo:snow_cover": 0
  },
  "assets": {
    "analytic": {
      "href": "https://storage.googleapis.com/open-cogs/stac-examples/20201211_223832_CS2_analytic.tif",
      "type": "image/tiff; application=geotiff; profile=cloud-optimized",
      "title": "4-Band Analytic",
      "roles": [
        "data"
      ],
      "eo:cloud_cover": 1.2,
      "bands": [
        {
          "name": "band1",
          "eo:common_name": "blue",
          "eo:center_wavelength": 0.47,
          "eo:full_width_half_max": 0.07,
          "eo:solar_illumination": 1959.66
        },
        {
          "name": "band2",
          "eo:common_name": "green",
          "eo:center_wavelength": 0.56,
          "eo:full_width_half_max": 0.08,
          "eo:solar_illumination": 1823.24
        },
        {
          "name": "band3",
          "eo:common_name": "red",
          "eo:center_wavelength": 0.645,
          "eo:full_width_half_max": 0.09,
          "eo:solar_illumination": 1512.06
        },
        {
          "name": "band4",
          "eo:common_name": "nir",
          "eo:center_wavelength": 0.8,
          "eo:full_width_half_max": 0.152,
          "eo:solar_illumination": 1041.63
        }
      ]
    },
    "thumbnail": {
      "href": "https://storage.googleapis.com/open-cogs/stac-examples/20201211_223832_CS2.jpg",
      "title": "Thumbnail",
      "type": "image/png",
      "roles": [
        "thumbnail"
      ]
    },
    "visual": {
      "href": "https://storage.googleapis.com/open-cogs/stac-examples/20201211_223832_CS2.tif",
      "type": "image/tiff; application=geotiff; profile=cloud-optimized",
      "title": "3-Band Visual",
      "roles": [
        "visual"
      ],
      "bands": [
        {
          "name": "band3",
          "eo:common_name": "red",
          "eo:center_wavelength": 0.645,
          "eo:full_width_half_max": 0.09
        },
        {
          "name": "band2",
          "eo:common_name": "green",
          "eo:center_wavelength": 0.56,
          "eo:full_width_half_max": 0.08
        },
        {
          "name": "band1",
          "eo:common_name": "blue",
          "eo:center_wavelength": 0.47,
          "eo:full_width_half_max": 0.07
        }
      ]
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
      "rel": "parent",
      "href": "./collection.json",
      "type": "application/json",
      "title": "Simple Example Collection"
    },
    {
      "rel": "collection",
      "href": "./collection.json",
      "type": "application/json",
      "title": "Simple Example Collection"
    }
  ]
}
```

#### jsonld
```jsonld
{
  "@context": "https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/stac/extensions/geodcat-stac-eo/context.jsonld",
  "stac_version": "1.1.0",
  "stac_extensions": [
    "https://stac-extensions.github.io/eo/v2.0.0/schema.json"
  ],
  "type": "Feature",
  "id": "20201211_223832_CS2",
  "collection": "eo-collection",
  "bbox": [
    172.91173669923782,
    1.3438851951615003,
    172.95469614953714,
    1.3690476620161975
  ],
  "geometry": {
    "type": "Polygon",
    "coordinates": [
      [
        [
          172.91173669923782,
          1.3438851951615003
        ],
        [
          172.95469614953714,
          1.3438851951615003
        ],
        [
          172.95469614953714,
          1.3690476620161975
        ],
        [
          172.91173669923782,
          1.3690476620161975
        ],
        [
          172.91173669923782,
          1.3438851951615003
        ]
      ]
    ]
  },
  "properties": {
    "datetime": "2020-12-11T22:38:32.125Z",
    "created": "2020-12-12T01:48:13.725Z",
    "updated": "2020-12-12T01:48:13.725Z",
    "platform": "cool_sat2",
    "instruments": [
      "cool_sensor_v1"
    ],
    "gsd": 0.66,
    "eo:cloud_cover": 1.2,
    "eo:snow_cover": 0
  },
  "assets": {
    "analytic": {
      "href": "https://storage.googleapis.com/open-cogs/stac-examples/20201211_223832_CS2_analytic.tif",
      "type": "image/tiff; application=geotiff; profile=cloud-optimized",
      "title": "4-Band Analytic",
      "roles": [
        "data"
      ],
      "eo:cloud_cover": 1.2,
      "bands": [
        {
          "name": "band1",
          "eo:common_name": "blue",
          "eo:center_wavelength": 0.47,
          "eo:full_width_half_max": 0.07,
          "eo:solar_illumination": 1959.66
        },
        {
          "name": "band2",
          "eo:common_name": "green",
          "eo:center_wavelength": 0.56,
          "eo:full_width_half_max": 0.08,
          "eo:solar_illumination": 1823.24
        },
        {
          "name": "band3",
          "eo:common_name": "red",
          "eo:center_wavelength": 0.645,
          "eo:full_width_half_max": 0.09,
          "eo:solar_illumination": 1512.06
        },
        {
          "name": "band4",
          "eo:common_name": "nir",
          "eo:center_wavelength": 0.8,
          "eo:full_width_half_max": 0.152,
          "eo:solar_illumination": 1041.63
        }
      ]
    },
    "thumbnail": {
      "href": "https://storage.googleapis.com/open-cogs/stac-examples/20201211_223832_CS2.jpg",
      "title": "Thumbnail",
      "type": "image/png",
      "roles": [
        "thumbnail"
      ]
    },
    "visual": {
      "href": "https://storage.googleapis.com/open-cogs/stac-examples/20201211_223832_CS2.tif",
      "type": "image/tiff; application=geotiff; profile=cloud-optimized",
      "title": "3-Band Visual",
      "roles": [
        "visual"
      ],
      "bands": [
        {
          "name": "band3",
          "eo:common_name": "red",
          "eo:center_wavelength": 0.645,
          "eo:full_width_half_max": 0.09
        },
        {
          "name": "band2",
          "eo:common_name": "green",
          "eo:center_wavelength": 0.56,
          "eo:full_width_half_max": 0.08
        },
        {
          "name": "band1",
          "eo:common_name": "blue",
          "eo:center_wavelength": 0.47,
          "eo:full_width_half_max": 0.07
        }
      ]
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
      "rel": "parent",
      "href": "./collection.json",
      "type": "application/json",
      "title": "Simple Example Collection"
    },
    {
      "rel": "collection",
      "href": "./collection.json",
      "type": "application/json",
      "title": "Simple Example Collection"
    }
  ]
}
```

#### ttl
```ttl
@prefix dcterms: <http://purl.org/dc/terms/> .
@prefix eo: <https://w3id.org/ogc/stac/eo/> .
@prefix geojson: <https://purl.org/geojson/vocab#> .
@prefix ns1: <http://www.iana.org/assignments/> .
@prefix oa: <http://www.w3.org/ns/oa#> .
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix stac: <https://w3id.org/ogc/stac/core/> .
@prefix xsd: <http://www.w3.org/2001/XMLSchema#> .

<https://example.com/stac/raster/example-1/20201211_223832_CS2> a geojson:Feature ;
    dcterms:created "2020-12-12T01:48:13.725Z" ;
    dcterms:date "2020-12-11T22:38:32.125000+00:00"^^xsd:dateTime ;
    dcterms:modified "2020-12-12T01:48:13.725Z" ;
    rdfs:seeAlso [ rdfs:label "Simple Example Collection" ;
            dcterms:type "application/json" ;
            ns1:relation <http://www.iana.org/assignments/relation/collection> ;
            oa:hasTarget <https://example.com/stac/raster/example-1/collection.json> ],
        [ rdfs:label "Simple Example Collection" ;
            dcterms:type "application/json" ;
            ns1:relation <http://www.iana.org/assignments/relation/parent> ;
            oa:hasTarget <https://example.com/stac/raster/example-1/collection.json> ],
        [ rdfs:label "Simple Example Collection" ;
            dcterms:type "application/json" ;
            ns1:relation <http://www.iana.org/assignments/relation/root> ;
            oa:hasTarget <https://example.com/stac/raster/example-1/collection.json> ] ;
    geojson:bbox ( 1.729117e+02 1.343885e+00 1.729547e+02 1.369048e+00 ) ;
    geojson:geometry [ a geojson:Polygon ;
            geojson:coordinates ( ( ( 1.729117e+02 1.343885e+00 ) ( 1.729547e+02 1.343885e+00 ) ( 1.729547e+02 1.369048e+00 ) ( 1.729117e+02 1.369048e+00 ) ( 1.729117e+02 1.343885e+00 ) ) ) ] ;
    stac:hasAsset [ ] ;
    stac:hasExtension "https://stac-extensions.github.io/eo/v2.0.0/schema.json" ;
    stac:version "1.1.0" ;
    eo:cloud_cover 1.2e+00 ;
    eo:snow_cover 0 .


```

## Schema

```yaml
$schema: https://json-schema.org/draft/2020-12/schema
description: Schema for OGCAPI records profile for GeoDCAT - defines all extra elements
  defined by GeoDCAT so that the JSON-LD context can map to GeoDCAT RDF
allOf:
- $ref: https://ogcincubator.github.io/bblocks-stac/build/annotated/contrib/stac/extensions/eo/schema.yaml
- anyOf:
  - $ref: https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/stac/geodcat-stac-item/schema.yaml
  - $ref: https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/stac/geodcat-stac-collection/schema.yaml

```

Links to the schema:

* YAML version: [schema.yaml](https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/stac/extensions/geodcat-stac-eo/schema.json)
* JSON version: [schema.json](https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/stac/extensions/geodcat-stac-eo/schema.yaml)


# JSON-LD Context

```jsonld
{
  "@context": {
    "stac_extensions": "stac:hasExtension",
    "type": "@type",
    "id": "@id",
    "extent": "dct:extent",
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
    "assets": {
      "@context": {
        "type": "dct:format",
        "roles": {
          "@id": "stac:roles",
          "@container": "@set"
        }
      },
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
        "type": "dct:format",
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
      "@container": "@set",
      "@id": "dcat:contactPoint",
      "@type": "@id"
    },
    "rights": "dcat:rights",
    "eo:bands": {
      "@id": "eo:bands",
      "@context": {
        "@vocab": "https://w3id.org/ogc/stac/eo/"
      }
    },
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
    "eo": "https://w3id.org/ogc/stac/eo/",
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
    "@version": 1.1
  }
}
```

You can find the full JSON-LD context here:
[context.jsonld](https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/stac/extensions/geodcat-stac-eo/context.jsonld)

## Sources

* [GeoDCAT Specification](http://www.opengis.net/def/metamodel/profiles/geodcat)
* [GeoDCAT Resources](http://www.opengis.net/def/metamodel/profiles/geodcat)
* [GeoDCAT Specification Repository](https://github.com/opengeospatial/GeoDCAT-SWG)

# For developers

The source code for this Building Block can be found in the following repository:

* URL: [https://github.com/ogcincubator/geodcat-ogcapi-records](https://github.com/ogcincubator/geodcat-ogcapi-records)
* Path: `_sources/stac/extensions/geodcat-stac-eo`

