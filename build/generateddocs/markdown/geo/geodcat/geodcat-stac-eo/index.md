
# GeoDCAT profile of STAC Electro-Optical extension (Schema)

`ogc.geo.geodcat.geodcat-stac-eo` *v0.1*

GeoDCAT profile of STAC Electro-Optical extension binds the STAC schema to the an "Electro-Optical extension" GeoDCAT profile.

[*Status*](http://www.opengis.net/def/status): Under development

## Description

## STAC Electro-Optical extension bindings for GeDCAT

This building block shows a possible profile of GeoDCAT supporting semantic annotation and inclusion of STAC EO resources in a knowledge graph.


## Examples

### Example of Electro-Optical using projection extension
#### json
```json
{
  "type": "Feature",
  "stac_version": "1.0.0",
  "id": "proj-example",
  "properties": {
    "datetime": "2018-10-01T01:08:32.033000Z",
    "proj:epsg": 32614,
    "proj:wkt2": "PROJCS[\"WGS 84 / UTM zone 14N\",GEOGCS[\"WGS 84\",DATUM[\"WGS_1984\",SPHEROID[\"WGS 84\",6378137,298.257223563,AUTHORITY[\"EPSG\",\"7030\"]],AUTHORITY[\"EPSG\",\"6326\"]],PRIMEM[\"Greenwich\",0,AUTHORITY[\"EPSG\",\"8901\"]],UNIT[\"degree\",0.01745329251994328,AUTHORITY[\"EPSG\",\"9122\"]],AUTHORITY[\"EPSG\",\"4326\"]],UNIT[\"metre\",1,AUTHORITY[\"EPSG\",\"9001\"]],PROJECTION[\"Transverse_Mercator\"],PARAMETER[\"latitude_of_origin\",0],PARAMETER[\"central_meridian\",-99],PARAMETER[\"scale_factor\",0.9996],PARAMETER[\"false_easting\",500000],PARAMETER[\"false_northing\",0],AUTHORITY[\"EPSG\",\"32614\"],AXIS[\"Easting\",EAST],AXIS[\"Northing\",NORTH]]",
    "proj:projjson": {
      "$schema": "https://proj.org/schemas/v0.2/projjson.schema.json",
      "type": "ProjectedCRS",
      "name": "WGS 84 / UTM zone 14N",
      "base_crs": {
        "name": "WGS 84",
        "datum": {
          "type": "GeodeticReferenceFrame",
          "name": "World Geodetic System 1984",
          "ellipsoid": {
            "name": "WGS 84",
            "semi_major_axis": 6378137,
            "inverse_flattening": 298.257223563
          }
        },
        "coordinate_system": {
          "subtype": "ellipsoidal",
          "axis": [
            {
              "name": "Geodetic latitude",
              "abbreviation": "Lat",
              "direction": "north",
              "unit": "degree"
            },
            {
              "name": "Geodetic longitude",
              "abbreviation": "Lon",
              "direction": "east",
              "unit": "degree"
            }
          ]
        },
        "id": {
          "authority": "EPSG",
          "code": 4326
        }
      },
      "conversion": {
        "name": "UTM zone 14N",
        "method": {
          "name": "Transverse Mercator",
          "id": {
            "authority": "EPSG",
            "code": 9807
          }
        },
        "parameters": [
          {
            "name": "Latitude of natural origin",
            "value": 0,
            "unit": "degree",
            "id": {
              "authority": "EPSG",
              "code": 8801
            }
          },
          {
            "name": "Longitude of natural origin",
            "value": -99,
            "unit": "degree",
            "id": {
              "authority": "EPSG",
              "code": 8802
            }
          },
          {
            "name": "Scale factor at natural origin",
            "value": 0.9996,
            "unit": "unity",
            "id": {
              "authority": "EPSG",
              "code": 8805
            }
          },
          {
            "name": "False easting",
            "value": 500000,
            "unit": "metre",
            "id": {
              "authority": "EPSG",
              "code": 8806
            }
          },
          {
            "name": "False northing",
            "value": 0,
            "unit": "metre",
            "id": {
              "authority": "EPSG",
              "code": 8807
            }
          }
        ]
      },
      "coordinate_system": {
        "subtype": "Cartesian",
        "axis": [
          {
            "name": "Easting",
            "abbreviation": "E",
            "direction": "east",
            "unit": "metre"
          },
          {
            "name": "Northing",
            "abbreviation": "N",
            "direction": "north",
            "unit": "metre"
          }
        ]
      },
      "area": "World - N hemisphere - 102°W to 96°W - by country",
      "bbox": {
        "south_latitude": 0,
        "west_longitude": -102,
        "north_latitude": 84,
        "east_longitude": -96
      },
      "id": {
        "authority": "EPSG",
        "code": 32614
      }
    },
    "proj:geometry": {
      "coordinates": [
        [
          [
            169200,
            3712800
          ],
          [
            403200,
            3712800
          ],
          [
            403200,
            3951000
          ],
          [
            169200,
            3951000
          ],
          [
            169200,
            3712800
          ]
        ]
      ],
      "type": "Polygon"
    },
    "proj:bbox": [
      169200,
      3712800,
      403200,
      3951000
    ],
    "proj:centroid": {
      "lat": 34.595302781575604,
      "lon": -101.34448382627504
    },
    "proj:shape": [
      8391,
      8311
    ],
    "proj:transform": [
      30,
      0,
      224985,
      0,
      -30,
      6790215,
      0,
      0,
      1
    ]
  },
  "geometry": {
    "type": "Polygon",
    "coordinates": [
      [
        [
          152.52758,
          60.63437
        ],
        [
          149.1755,
          61.19016
        ],
        [
          148.13933,
          59.51584
        ],
        [
          151.33786,
          58.97792
        ],
        [
          152.52758,
          60.63437
        ]
      ]
    ]
  },
  "links": [
    {
      "rel": "root",
      "href": "../../catalog.json",
      "type": "application/json",
      "title": "Example Catalog"
    },
    {
      "rel": "parent",
      "href": "../collection.json",
      "type": "application/json",
      "title": "Collection of Extension Items"
    },
    {
      "rel": "collection",
      "href": "../collection.json",
      "type": "application/json",
      "title": "Collection of Extension Items"
    }
  ],
  "assets": {
    "B1": {
      "href": "https://landsat-pds.s3.amazonaws.com/c1/L8/107/018/LC08_L1TP_107018_20181001_20181001_01_RT/LC08_L1TP_107018_20181001_20181001_01_RT_B1.TIF",
      "type": "image/tiff; application=geotiff",
      "title": "Band 1 (coastal)",
      "eo:bands": [
        {
          "name": "B1",
          "common_name": "coastal",
          "center_wavelength": 0.44,
          "full_width_half_max": 0.02
        }
      ]
    },
    "B8": {
      "href": "https://landsat-pds.s3.amazonaws.com/c1/L8/107/018/LC08_L1TP_107018_20181001_20181001_01_RT/LC08_L1TP_107018_20181001_20181001_01_RT_B8.TIF",
      "type": "image/tiff; application=geotiff",
      "title": "Band 8 (panchromatic)",
      "eo:bands": [
        {
          "name": "B8",
          "center_wavelength": 0.59,
          "full_width_half_max": 0.18
        }
      ],
      "proj:shape": [
        16781,
        16621
      ],
      "proj:transform": [
        15,
        0,
        224992.5,
        0,
        -15,
        6790207.5,
        0,
        0,
        1
      ]
    }
  },
  "bbox": [
    148.13933,
    59.51584,
    152.52758,
    60.63437
  ],
  "stac_extensions": [
    "https://stac-extensions.github.io/eo/v1.0.0/schema.json",
    "https://stac-extensions.github.io/projection/v1.0.0/schema.json"
  ],
  "collection": "landsat-8-l1"
}

```

#### jsonld
```jsonld
{
  "type": "Feature",
  "stac_version": "1.0.0",
  "id": "proj-example",
  "properties": {
    "datetime": "2018-10-01T01:08:32.033000Z",
    "proj:epsg": 32614,
    "proj:wkt2": "PROJCS[\"WGS 84 / UTM zone 14N\",GEOGCS[\"WGS 84\",DATUM[\"WGS_1984\",SPHEROID[\"WGS 84\",6378137,298.257223563,AUTHORITY[\"EPSG\",\"7030\"]],AUTHORITY[\"EPSG\",\"6326\"]],PRIMEM[\"Greenwich\",0,AUTHORITY[\"EPSG\",\"8901\"]],UNIT[\"degree\",0.01745329251994328,AUTHORITY[\"EPSG\",\"9122\"]],AUTHORITY[\"EPSG\",\"4326\"]],UNIT[\"metre\",1,AUTHORITY[\"EPSG\",\"9001\"]],PROJECTION[\"Transverse_Mercator\"],PARAMETER[\"latitude_of_origin\",0],PARAMETER[\"central_meridian\",-99],PARAMETER[\"scale_factor\",0.9996],PARAMETER[\"false_easting\",500000],PARAMETER[\"false_northing\",0],AUTHORITY[\"EPSG\",\"32614\"],AXIS[\"Easting\",EAST],AXIS[\"Northing\",NORTH]]",
    "proj:projjson": {
      "$schema": "https://proj.org/schemas/v0.2/projjson.schema.json",
      "type": "ProjectedCRS",
      "name": "WGS 84 / UTM zone 14N",
      "base_crs": {
        "name": "WGS 84",
        "datum": {
          "type": "GeodeticReferenceFrame",
          "name": "World Geodetic System 1984",
          "ellipsoid": {
            "name": "WGS 84",
            "semi_major_axis": 6378137,
            "inverse_flattening": 298.257223563
          }
        },
        "coordinate_system": {
          "subtype": "ellipsoidal",
          "axis": [
            {
              "name": "Geodetic latitude",
              "abbreviation": "Lat",
              "direction": "north",
              "unit": "degree"
            },
            {
              "name": "Geodetic longitude",
              "abbreviation": "Lon",
              "direction": "east",
              "unit": "degree"
            }
          ]
        },
        "id": {
          "authority": "EPSG",
          "code": 4326
        }
      },
      "conversion": {
        "name": "UTM zone 14N",
        "method": {
          "name": "Transverse Mercator",
          "id": {
            "authority": "EPSG",
            "code": 9807
          }
        },
        "parameters": [
          {
            "name": "Latitude of natural origin",
            "value": 0,
            "unit": "degree",
            "id": {
              "authority": "EPSG",
              "code": 8801
            }
          },
          {
            "name": "Longitude of natural origin",
            "value": -99,
            "unit": "degree",
            "id": {
              "authority": "EPSG",
              "code": 8802
            }
          },
          {
            "name": "Scale factor at natural origin",
            "value": 0.9996,
            "unit": "unity",
            "id": {
              "authority": "EPSG",
              "code": 8805
            }
          },
          {
            "name": "False easting",
            "value": 500000,
            "unit": "metre",
            "id": {
              "authority": "EPSG",
              "code": 8806
            }
          },
          {
            "name": "False northing",
            "value": 0,
            "unit": "metre",
            "id": {
              "authority": "EPSG",
              "code": 8807
            }
          }
        ]
      },
      "coordinate_system": {
        "subtype": "Cartesian",
        "axis": [
          {
            "name": "Easting",
            "abbreviation": "E",
            "direction": "east",
            "unit": "metre"
          },
          {
            "name": "Northing",
            "abbreviation": "N",
            "direction": "north",
            "unit": "metre"
          }
        ]
      },
      "area": "World - N hemisphere - 102\u00b0W to 96\u00b0W - by country",
      "bbox": {
        "south_latitude": 0,
        "west_longitude": -102,
        "north_latitude": 84,
        "east_longitude": -96
      },
      "id": {
        "authority": "EPSG",
        "code": 32614
      }
    },
    "proj:geometry": {
      "coordinates": [
        [
          [
            169200,
            3712800
          ],
          [
            403200,
            3712800
          ],
          [
            403200,
            3951000
          ],
          [
            169200,
            3951000
          ],
          [
            169200,
            3712800
          ]
        ]
      ],
      "type": "Polygon"
    },
    "proj:bbox": [
      169200,
      3712800,
      403200,
      3951000
    ],
    "proj:centroid": {
      "lat": 34.595302781575604,
      "lon": -101.34448382627504
    },
    "proj:shape": [
      8391,
      8311
    ],
    "proj:transform": [
      30,
      0,
      224985,
      0,
      -30,
      6790215,
      0,
      0,
      1
    ]
  },
  "geometry": {
    "type": "Polygon",
    "coordinates": [
      [
        [
          152.52758,
          60.63437
        ],
        [
          149.1755,
          61.19016
        ],
        [
          148.13933,
          59.51584
        ],
        [
          151.33786,
          58.97792
        ],
        [
          152.52758,
          60.63437
        ]
      ]
    ]
  },
  "links": [
    {
      "rel": "root",
      "href": "../../catalog.json",
      "type": "application/json",
      "title": "Example Catalog"
    },
    {
      "rel": "parent",
      "href": "../collection.json",
      "type": "application/json",
      "title": "Collection of Extension Items"
    },
    {
      "rel": "collection",
      "href": "../collection.json",
      "type": "application/json",
      "title": "Collection of Extension Items"
    }
  ],
  "assets": {
    "B1": {
      "href": "https://landsat-pds.s3.amazonaws.com/c1/L8/107/018/LC08_L1TP_107018_20181001_20181001_01_RT/LC08_L1TP_107018_20181001_20181001_01_RT_B1.TIF",
      "type": "image/tiff; application=geotiff",
      "title": "Band 1 (coastal)",
      "eo:bands": [
        {
          "name": "B1",
          "common_name": "coastal",
          "center_wavelength": 0.44,
          "full_width_half_max": 0.02
        }
      ]
    },
    "B8": {
      "href": "https://landsat-pds.s3.amazonaws.com/c1/L8/107/018/LC08_L1TP_107018_20181001_20181001_01_RT/LC08_L1TP_107018_20181001_20181001_01_RT_B8.TIF",
      "type": "image/tiff; application=geotiff",
      "title": "Band 8 (panchromatic)",
      "eo:bands": [
        {
          "name": "B8",
          "center_wavelength": 0.59,
          "full_width_half_max": 0.18
        }
      ],
      "proj:shape": [
        16781,
        16621
      ],
      "proj:transform": [
        15,
        0,
        224992.5,
        0,
        -15,
        6790207.5,
        0,
        0,
        1
      ]
    }
  },
  "bbox": [
    148.13933,
    59.51584,
    152.52758,
    60.63437
  ],
  "stac_extensions": [
    "https://stac-extensions.github.io/eo/v1.0.0/schema.json",
    "https://stac-extensions.github.io/projection/v1.0.0/schema.json"
  ],
  "collection": "landsat-8-l1",
  "@context": "https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/geodcat-stac-eo/context.jsonld"
}
```

#### ttl
```ttl
@prefix dcat: <http://www.w3.org/ns/dcat#> .
@prefix dcterms: <http://purl.org/dc/terms/> .
@prefix geojson: <https://purl.org/geojson/vocab#> .
@prefix ns1: <proj:> .
@prefix ns2: <eo:> .
@prefix ns3: <http://www.iana.org/assignments/> .
@prefix oa: <http://www.w3.org/ns/oa#> .
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix stac: <urn:stac:vocab#> .
@prefix xsd: <http://www.w3.org/2001/XMLSchema#> .

<https://example.com/stac/raster/example-1/proj-example> a geojson:Feature ;
    rdfs:seeAlso [ rdfs:label "Collection of Extension Items" ;
            dcterms:type "application/json" ;
            ns3:relation <http://www.iana.org/assignments/relation/parent> ;
            oa:hasTarget <https://example.com/stac/raster/collection.json> ],
        [ rdfs:label "Example Catalog" ;
            dcterms:type "application/json" ;
            ns3:relation <http://www.iana.org/assignments/relation/root> ;
            oa:hasTarget <https://example.com/stac/catalog.json> ],
        [ rdfs:label "Collection of Extension Items" ;
            dcterms:type "application/json" ;
            ns3:relation <http://www.iana.org/assignments/relation/collection> ;
            oa:hasTarget <https://example.com/stac/raster/collection.json> ] ;
    geojson:bbox ( 1.481393e+02 5.951584e+01 1.525276e+02 6.063437e+01 ) ;
    geojson:geometry [ a geojson:Polygon ;
            geojson:coordinates ( ( ( 1.525276e+02 6.063437e+01 ) ( 1.491755e+02 6.119016e+01 ) ( 1.481393e+02 5.951584e+01 ) ( 1.513379e+02 5.897792e+01 ) ( 1.525276e+02 6.063437e+01 ) ) ) ] ;
    ns1:bbox 169200,
        403200,
        3712800,
        3951000 ;
    ns1:centroid [ ] ;
    ns1:epsg 32614 ;
    ns1:geometry [ a geojson:Polygon ;
            geojson:coordinates ( ( ( 169200 3712800 ) ( 403200 3712800 ) ( 403200 3951000 ) ( 169200 3951000 ) ( 169200 3712800 ) ) ) ] ;
    ns1:projjson [ a <https://example.com/stac/raster/example-1/ProjectedCRS> ;
            geojson:bbox ( [ ] ) ] ;
    ns1:shape 8311,
        8391 ;
    ns1:transform -30,
        0,
        1,
        30,
        224985,
        6790215 ;
    ns1:wkt2 "PROJCS[\"WGS 84 / UTM zone 14N\",GEOGCS[\"WGS 84\",DATUM[\"WGS_1984\",SPHEROID[\"WGS 84\",6378137,298.257223563,AUTHORITY[\"EPSG\",\"7030\"]],AUTHORITY[\"EPSG\",\"6326\"]],PRIMEM[\"Greenwich\",0,AUTHORITY[\"EPSG\",\"8901\"]],UNIT[\"degree\",0.01745329251994328,AUTHORITY[\"EPSG\",\"9122\"]],AUTHORITY[\"EPSG\",\"4326\"]],UNIT[\"metre\",1,AUTHORITY[\"EPSG\",\"9001\"]],PROJECTION[\"Transverse_Mercator\"],PARAMETER[\"latitude_of_origin\",0],PARAMETER[\"central_meridian\",-99],PARAMETER[\"scale_factor\",0.9996],PARAMETER[\"false_easting\",500000],PARAMETER[\"false_northing\",0],AUTHORITY[\"EPSG\",\"32614\"],AXIS[\"Easting\",EAST],AXIS[\"Northing\",NORTH]]" ;
    stac:extensions "https://stac-extensions.github.io/eo/v1.0.0/schema.json",
        "https://stac-extensions.github.io/projection/v1.0.0/schema.json" ;
    stac:hasAsset <https://example.com/stac/raster/example-1/B1>,
        <https://example.com/stac/raster/example-1/B8> ;
    stac:version "1.0.0" .

<https://example.com/stac/raster/example-1/B1> ns2:bands [ ] ;
    dcterms:format "image/tiff; application=geotiff" ;
    dcterms:title "Band 1 (coastal)" ;
    dcat:downloadURL <https://landsat-pds.s3.amazonaws.com/c1/L8/107/018/LC08_L1TP_107018_20181001_20181001_01_RT/LC08_L1TP_107018_20181001_20181001_01_RT_B1.TIF> .

<https://example.com/stac/raster/example-1/B8> ns2:bands [ ] ;
    dcterms:format "image/tiff; application=geotiff" ;
    dcterms:title "Band 8 (panchromatic)" ;
    dcat:downloadURL <https://landsat-pds.s3.amazonaws.com/c1/L8/107/018/LC08_L1TP_107018_20181001_20181001_01_RT/LC08_L1TP_107018_20181001_20181001_01_RT_B8.TIF> ;
    ns1:shape 16621,
        16781 ;
    ns1:transform -15,
        0,
        1,
        15,
        2.249925e+05,
        6.790208e+06 .


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

