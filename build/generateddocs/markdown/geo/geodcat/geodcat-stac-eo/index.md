
# GeoDCAT profile of STAC Electro-Optical extension (Schema)

`ogc.geo.geodcat.geodcat-stac-eo` *v0.1*

GeoDCAT profile of STAC Electro-Optical extension binds the STAC schema to the an "Electro-Optical extension" GeoDCAT profile.

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
    "https://stac-extensions.github.io/item-assets/v1.0.0/schema.json",
    "https://stac-extensions.github.io/eo/v1.1.0/schema.json"
  ],
  "stac_version": "1.0.0",
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
    "eo:bands": [
      {
        "name": "band1",
        "common_name": "blue",
        "center_wavelength": 0.47,
        "full_width_half_max": 0.07,
        "solar_illumination": 1959.66
      },
      {
        "name": "band2",
        "common_name": "green",
        "center_wavelength": 0.56,
        "full_width_half_max": 0.08,
        "solar_illumination": 1823.24
      },
      {
        "name": "band3",
        "common_name": "red",
        "center_wavelength": 0.645,
        "full_width_half_max": 0.09,
        "solar_illumination": 1512.06
      },
      {
        "name": "band4",
        "common_name": "nir",
        "center_wavelength": 0.8,
        "full_width_half_max": 0.152,
        "solar_illumination": 1041.63
      }
    ]
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
  ],
  "item_assets": {
    "analytic": {
      "type": "image/tiff; application=geotiff; profile=cloud-optimized",
      "title": "4-Band Analytic",
      "roles": [
        "data"
      ],
      "eo:bands": [
        {
          "name": "band1",
          "common_name": "blue",
          "center_wavelength": 0.47,
          "full_width_half_max": 0.7,
          "solar_illumination": 1959.66
        },
        {
          "name": "band2",
          "common_name": "green",
          "center_wavelength": 0.56,
          "full_width_half_max": 0.08,
          "solar_illumination": 1823.24
        },
        {
          "name": "band3",
          "common_name": "red",
          "center_wavelength": 0.645,
          "full_width_half_max": 0.9,
          "solar_illumination": 1512.06
        },
        {
          "name": "band4",
          "common_name": "nir",
          "center_wavelength": 0.8,
          "full_width_half_max": 0.152,
          "solar_illumination": 1041.63
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
      "eo:bands": [
        {
          "name": "band3",
          "common_name": "red",
          "center_wavelength": 0.645,
          "full_width_half_max": 0.09
        },
        {
          "name": "band2",
          "common_name": "green",
          "center_wavelength": 0.56,
          "full_width_half_max": 0.08
        },
        {
          "name": "band1",
          "common_name": "blue",
          "center_wavelength": 0.47,
          "full_width_half_max": 0.07
        }
      ]
    }
  }
}

```

#### jsonld
```jsonld
{
  "id": "eo-collection",
  "type": "Collection",
  "stac_extensions": [
    "https://stac-extensions.github.io/item-assets/v1.0.0/schema.json",
    "https://stac-extensions.github.io/eo/v1.1.0/schema.json"
  ],
  "stac_version": "1.0.0",
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
    "eo:bands": [
      {
        "name": "band1",
        "common_name": "blue",
        "center_wavelength": 0.47,
        "full_width_half_max": 0.07,
        "solar_illumination": 1959.66
      },
      {
        "name": "band2",
        "common_name": "green",
        "center_wavelength": 0.56,
        "full_width_half_max": 0.08,
        "solar_illumination": 1823.24
      },
      {
        "name": "band3",
        "common_name": "red",
        "center_wavelength": 0.645,
        "full_width_half_max": 0.09,
        "solar_illumination": 1512.06
      },
      {
        "name": "band4",
        "common_name": "nir",
        "center_wavelength": 0.8,
        "full_width_half_max": 0.152,
        "solar_illumination": 1041.63
      }
    ]
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
  ],
  "item_assets": {
    "analytic": {
      "type": "image/tiff; application=geotiff; profile=cloud-optimized",
      "title": "4-Band Analytic",
      "roles": [
        "data"
      ],
      "eo:bands": [
        {
          "name": "band1",
          "common_name": "blue",
          "center_wavelength": 0.47,
          "full_width_half_max": 0.7,
          "solar_illumination": 1959.66
        },
        {
          "name": "band2",
          "common_name": "green",
          "center_wavelength": 0.56,
          "full_width_half_max": 0.08,
          "solar_illumination": 1823.24
        },
        {
          "name": "band3",
          "common_name": "red",
          "center_wavelength": 0.645,
          "full_width_half_max": 0.9,
          "solar_illumination": 1512.06
        },
        {
          "name": "band4",
          "common_name": "nir",
          "center_wavelength": 0.8,
          "full_width_half_max": 0.152,
          "solar_illumination": 1041.63
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
      "eo:bands": [
        {
          "name": "band3",
          "common_name": "red",
          "center_wavelength": 0.645,
          "full_width_half_max": 0.09
        },
        {
          "name": "band2",
          "common_name": "green",
          "center_wavelength": 0.56,
          "full_width_half_max": 0.08
        },
        {
          "name": "band1",
          "common_name": "blue",
          "center_wavelength": 0.47,
          "full_width_half_max": 0.07
        }
      ]
    }
  },
  "@context": "https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/geodcat-stac-eo/context.jsonld"
}
```

#### ttl
```ttl
@prefix dcterms: <http://purl.org/dc/terms/> .
@prefix ns1: <http://www.iana.org/assignments/> .
@prefix oa: <http://www.w3.org/ns/oa#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix stac: <urn:stac:vocab#> .

<https://example.com/stac/raster/example-1/eo-collection> a <https://example.com/stac/raster/example-1/Collection> ;
    rdfs:label "Simple EO Collection" ;
    dcterms:description "A simple Collection demonstrating EO extension fields in a Collection." ;
    dcterms:extent [ ] ;
    dcterms:license "CC-BY-4.0" ;
    rdfs:seeAlso [ rdfs:label "Simple Example Collection" ;
            dcterms:type "application/json" ;
            ns1:relation <http://www.iana.org/assignments/relation/root> ;
            oa:hasTarget <https://example.com/stac/raster/example-1/collection.json> ],
        [ rdfs:label "20201211_223832_CS2" ;
            dcterms:type "application/geo+json" ;
            ns1:relation <http://www.iana.org/assignments/relation/item> ;
            oa:hasTarget <https://example.com/stac/raster/example-1/item.json> ] ;
    stac:extensions "https://stac-extensions.github.io/eo/v1.1.0/schema.json",
        "https://stac-extensions.github.io/item-assets/v1.0.0/schema.json" ;
    stac:version "1.0.0" .


```


### An example demonstrating EO extension fields in a STAC item.
#### json
```json
{
  "stac_version": "1.0.0",
  "stac_extensions": [
    "https://stac-extensions.github.io/eo/v1.1.0/schema.json"
  ],
  "type": "Feature",
  "id": "20201211_223832_CS2",
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
  "collection": "eo-collection",
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
  ],
  "assets": {
    "analytic": {
      "href": "https://storage.googleapis.com/open-cogs/stac-examples/20201211_223832_CS2_analytic.tif",
      "type": "image/tiff; application=geotiff; profile=cloud-optimized",
      "title": "4-Band Analytic",
      "roles": [
        "data"
      ],
      "eo:bands": [
        {
          "name": "band1",
          "common_name": "blue",
          "center_wavelength": 0.47,
          "full_width_half_max": 0.07,
          "solar_illumination": 1959.66
        },
        {
          "name": "band2",
          "common_name": "green",
          "center_wavelength": 0.56,
          "full_width_half_max": 0.08,
          "solar_illumination": 1823.24
        },
        {
          "name": "band3",
          "common_name": "red",
          "center_wavelength": 0.645,
          "full_width_half_max": 0.09,
          "solar_illumination": 1512.06
        },
        {
          "name": "band4",
          "common_name": "nir",
          "center_wavelength": 0.8,
          "full_width_half_max": 0.152,
          "solar_illumination": 1041.63
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
      "eo:bands": [
        {
          "name": "band3",
          "common_name": "red",
          "center_wavelength": 0.645,
          "full_width_half_max": 0.09
        },
        {
          "name": "band2",
          "common_name": "green",
          "center_wavelength": 0.56,
          "full_width_half_max": 0.08
        },
        {
          "name": "band1",
          "common_name": "blue",
          "center_wavelength": 0.47,
          "full_width_half_max": 0.07
        }
      ]
    }
  }
}

```

#### jsonld
```jsonld
{
  "stac_version": "1.0.0",
  "stac_extensions": [
    "https://stac-extensions.github.io/eo/v1.1.0/schema.json"
  ],
  "type": "Feature",
  "id": "20201211_223832_CS2",
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
  "collection": "eo-collection",
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
  ],
  "assets": {
    "analytic": {
      "href": "https://storage.googleapis.com/open-cogs/stac-examples/20201211_223832_CS2_analytic.tif",
      "type": "image/tiff; application=geotiff; profile=cloud-optimized",
      "title": "4-Band Analytic",
      "roles": [
        "data"
      ],
      "eo:bands": [
        {
          "name": "band1",
          "common_name": "blue",
          "center_wavelength": 0.47,
          "full_width_half_max": 0.07,
          "solar_illumination": 1959.66
        },
        {
          "name": "band2",
          "common_name": "green",
          "center_wavelength": 0.56,
          "full_width_half_max": 0.08,
          "solar_illumination": 1823.24
        },
        {
          "name": "band3",
          "common_name": "red",
          "center_wavelength": 0.645,
          "full_width_half_max": 0.09,
          "solar_illumination": 1512.06
        },
        {
          "name": "band4",
          "common_name": "nir",
          "center_wavelength": 0.8,
          "full_width_half_max": 0.152,
          "solar_illumination": 1041.63
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
      "eo:bands": [
        {
          "name": "band3",
          "common_name": "red",
          "center_wavelength": 0.645,
          "full_width_half_max": 0.09
        },
        {
          "name": "band2",
          "common_name": "green",
          "center_wavelength": 0.56,
          "full_width_half_max": 0.08
        },
        {
          "name": "band1",
          "common_name": "blue",
          "center_wavelength": 0.47,
          "full_width_half_max": 0.07
        }
      ]
    }
  },
  "@context": "https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/geodcat-stac-eo/context.jsonld"
}
```

#### ttl
```ttl
@prefix dcat: <http://www.w3.org/ns/dcat#> .
@prefix dcterms: <http://purl.org/dc/terms/> .
@prefix geojson: <https://purl.org/geojson/vocab#> .
@prefix ns1: <eo:> .
@prefix ns2: <http://www.iana.org/assignments/> .
@prefix oa: <http://www.w3.org/ns/oa#> .
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix stac: <urn:stac:vocab#> .
@prefix xsd: <http://www.w3.org/2001/XMLSchema#> .

<https://example.com/stac/raster/example-1/20201211_223832_CS2> a geojson:Feature ;
    ns1:cloud_cover 1.2e+00 ;
    ns1:snow_cover 0 ;
    dcterms:created "2020-12-12T01:48:13.725Z" ;
    dcterms:modified "2020-12-12T01:48:13.725Z" ;
    rdfs:seeAlso [ rdfs:label "Simple Example Collection" ;
            dcterms:type "application/json" ;
            ns2:relation <http://www.iana.org/assignments/relation/collection> ;
            oa:hasTarget <https://example.com/stac/raster/example-1/collection.json> ],
        [ rdfs:label "Simple Example Collection" ;
            dcterms:type "application/json" ;
            ns2:relation <http://www.iana.org/assignments/relation/parent> ;
            oa:hasTarget <https://example.com/stac/raster/example-1/collection.json> ],
        [ rdfs:label "Simple Example Collection" ;
            dcterms:type "application/json" ;
            ns2:relation <http://www.iana.org/assignments/relation/root> ;
            oa:hasTarget <https://example.com/stac/raster/example-1/collection.json> ] ;
    geojson:bbox ( 1.729117e+02 1.343885e+00 1.729547e+02 1.369048e+00 ) ;
    geojson:geometry [ a geojson:Polygon ;
            geojson:coordinates ( ( ( 1.729117e+02 1.343885e+00 ) ( 1.729547e+02 1.343885e+00 ) ( 1.729547e+02 1.369048e+00 ) ( 1.729117e+02 1.369048e+00 ) ( 1.729117e+02 1.343885e+00 ) ) ) ] ;
    stac:extensions "https://stac-extensions.github.io/eo/v1.1.0/schema.json" ;
    stac:hasAsset <https://example.com/stac/raster/example-1/analytic>,
        <https://example.com/stac/raster/example-1/thumbnail>,
        <https://example.com/stac/raster/example-1/visual> ;
    stac:version "1.0.0" .

<https://example.com/stac/raster/example-1/analytic> ns1:bands [ ],
        [ ],
        [ ],
        [ ] ;
    dcterms:format "image/tiff; application=geotiff; profile=cloud-optimized" ;
    dcterms:title "4-Band Analytic" ;
    dcat:downloadURL <https://storage.googleapis.com/open-cogs/stac-examples/20201211_223832_CS2_analytic.tif> .

<https://example.com/stac/raster/example-1/thumbnail> dcterms:format "image/png" ;
    dcterms:title "Thumbnail" ;
    dcat:downloadURL <https://storage.googleapis.com/open-cogs/stac-examples/20201211_223832_CS2.jpg> .

<https://example.com/stac/raster/example-1/visual> ns1:bands [ ],
        [ ],
        [ ] ;
    dcterms:format "image/tiff; application=geotiff; profile=cloud-optimized" ;
    dcterms:title "3-Band Visual" ;
    dcat:downloadURL <https://storage.googleapis.com/open-cogs/stac-examples/20201211_223832_CS2.tif> .


```

## Schema

```yaml
$schema: https://json-schema.org/draft/2020-12/schema
description: Schema for OGCAPI records profile for GeoDCAT - defines all extra elements
  defined by GeoDCAT so that the JSON-LD context can map to GeoDCAT RDF
allOf:
- $ref: https://ogcincubator.github.io/bblocks-stac/build/annotated/contrib/stac/extensions/eo/schema.yaml
- $ref: https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/geodcat-stac-item/schema.yaml

```

Links to the schema:

* YAML version: [schema.yaml](https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/geodcat-stac-eo/schema.json)
* JSON version: [schema.json](https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/geodcat-stac-eo/schema.yaml)


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
    "type": "@type",
    "hreflang": "dct:language",
    "title": "rdfs:label",
    "length": "dct:extent",
    "id": "@id",
    "properties": "@nest",
    "geometry": {
      "@context": {},
      "@id": "geojson:geometry"
    },
    "bbox": {
      "@container": "@list",
      "@id": "geojson:bbox"
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
    "stac_version": "stac:version",
    "stac_extensions": "stac:extensions",
    "license": "dct:license",
    "extent": "dct:extent",
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
    "geojson": "https://purl.org/geojson/vocab#",
    "xsd": "http://www.w3.org/2001/XMLSchema#",
    "dcat": "http://www.w3.org/ns/dcat#",
    "foaf": "http://xmlns.com/foaf/0.1/",
    "prov": "http://www.w3.org/ns/prov#",
    "owl": "http://www.w3.org/2002/07/owl#",
    "rdf": "http://www.w3.org/1999/02/22-rdf-syntax-ns#",
    "dctype": "http://purl.org/dc/dcmitype/",
    "skos": "http://www.w3.org/2004/02/skos/core#",
    "vcard": "http://www.w3.org/2006/vcard/ns#",
    "stac": "urn:stac:vocab#",
    "@version": 1.1
  }
}
```

You can find the full JSON-LD context here:
[context.jsonld](https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/geodcat-stac-eo/context.jsonld)

## Sources

* [GeoDCAT Specification](http://www.opengis.net/def/metamodel/profiles/geodcat)
* [GeoDCAT Resources](http://www.opengis.net/def/metamodel/profiles/geodcat)
* [GeoDCAT Specification Repository](https://github.com/opengeospatial/GeoDCAT-SWG)

# For developers

The source code for this Building Block can be found in the following repository:

* URL: [https://github.com/ogcincubator/geodcat-ogcapi-records](https://github.com/ogcincubator/geodcat-ogcapi-records)
* Path: `_sources/geodcat-stac-eo`

