---
title: GeoDCAT profile of STAC Electro-Optical extension (Schema)

language_tabs:
  - json: JSON
  - jsonld: JSON-LD
  - turtle: RDF/Turtle

toc_footers:
  - Version 0.1
  - <a href='#'>GeoDCAT profile of STAC Electro-Optical extension</a>
  - <a href='https://blocks.ogc.org/register.html'>Building Blocks register</a>

search: true

code_clipboard: true

meta:
  - name: GeoDCAT profile of STAC Electro-Optical extension (Schema)
---


# GeoDCAT profile of STAC Electro-Optical extension `ogc.geo.geodcat.geodcat-stac-eo`

This profile binds the schema for the STAC Electro-Optical extension to a profile of GeoDCAT.  It inherits a common mapping of STAC and OGC API Records Item and Collection objects to the DCAT model. Additional terminology reequired for the semantics of the extension can be mapped to additional ontologies as required. (Note this is a work in progress, the building blocks provide a test harness for these mappings, allowing systematic development of a GeoDCAT core ontology to meet the requirements of these existing metadata schemas.

<p class="status">
    <span data-rainbow-uri="http://www.opengis.net/def/status">Status</span>:
    <a href="http://www.opengis.net/def/status/under-development" target="_blank" data-rainbow-uri>Under development</a>
</p>

<aside class="success">
This building block is <strong><a href="https://github.com/ogcincubator/geodcat-ogcapi-records/blob/master/build/tests/geo/geodcat/geodcat-stac-eo/" target="_blank">valid</a></strong>
</aside>

# Description

## STAC Electro-Optical extension bindings for GeDCAT

This building block shows a possible profile of GeoDCAT supporting semantic annotation and inclusion of STAC EO resources in a knowledge graph.


# Examples

## A simple Collection demonstrating EO extension fields in a Collection.



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

<blockquote class="lang-specific json">
  <p class="example-links">
    <a target="_blank" href="https://ogcincubator.github.io/geodcat-ogcapi-records/build/tests/geo/geodcat/geodcat-stac-eo/example_1_1.json">Open in new window</a>
    <a target="_blank" href="https://avillar.github.io/TreedocViewer/?dataParser=json&amp;dataUrl=https%3A%2F%2Fogcincubator.github.io%2Fgeodcat-ogcapi-records%2Fbuild%2Ftests%2Fgeo%2Fgeodcat%2Fgeodcat-stac-eo%2Fexample_1_1.json&amp;expand=2&amp;option=%7B%22showTable%22%3A+false%7D">View on JSON Viewer</a></p>
</blockquote>




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

<blockquote class="lang-specific jsonld">
  <p class="example-links">
    <a target="_blank" href="https://ogcincubator.github.io/geodcat-ogcapi-records/build/tests/geo/geodcat/geodcat-stac-eo/example_1_1.jsonld">Open in new window</a>
    <a target="_blank" href="https://json-ld.org/playground/#json-ld=https%3A%2F%2Fogcincubator.github.io%2Fgeodcat-ogcapi-records%2Fbuild%2Ftests%2Fgeo%2Fgeodcat%2Fgeodcat-stac-eo%2Fexample_1_1.jsonld">View on JSON-LD Playground</a>
</blockquote>




```turtle
@prefix dcterms: <http://purl.org/dc/terms/> .
@prefix ns1: <http://www.iana.org/assignments/> .
@prefix oa: <http://www.w3.org/ns/oa#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix stac: <urn:stac:vocab#> .

<https://example.com/stac/raster/example-1/eo-collection> rdfs:label "Simple EO Collection" ;
    dcterms:description "A simple Collection demonstrating EO extension fields in a Collection." ;
    dcterms:extent [ ] ;
    dcterms:license "CC-BY-4.0" ;
    dcterms:type "Collection" ;
    rdfs:seeAlso [ rdfs:label "20201211_223832_CS2" ;
            dcterms:type "application/geo+json" ;
            ns1:relation <http://www.iana.org/assignments/relation/item> ;
            oa:hasTarget <https://example.com/stac/raster/example-1/item.json> ],
        [ rdfs:label "Simple Example Collection" ;
            dcterms:type "application/json" ;
            ns1:relation <http://www.iana.org/assignments/relation/root> ;
            oa:hasTarget <https://example.com/stac/raster/example-1/collection.json> ] ;
    stac:extensions "https://stac-extensions.github.io/eo/v1.1.0/schema.json",
        "https://stac-extensions.github.io/item-assets/v1.0.0/schema.json" ;
    stac:version "1.0.0" .


```

<blockquote class="lang-specific turtle">
  <p class="example-links">
    <a target="_blank" href="https://ogcincubator.github.io/geodcat-ogcapi-records/build/tests/geo/geodcat/geodcat-stac-eo/example_1_1.ttl">Open in new window</a>
</blockquote>



## An example demonstrating EO extension fields in a STAC item.



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

<blockquote class="lang-specific json">
  <p class="example-links">
    <a target="_blank" href="https://ogcincubator.github.io/geodcat-ogcapi-records/build/tests/geo/geodcat/geodcat-stac-eo/example_2_1.json">Open in new window</a>
    <a target="_blank" href="https://avillar.github.io/TreedocViewer/?dataParser=json&amp;dataUrl=https%3A%2F%2Fogcincubator.github.io%2Fgeodcat-ogcapi-records%2Fbuild%2Ftests%2Fgeo%2Fgeodcat%2Fgeodcat-stac-eo%2Fexample_2_1.json&amp;expand=2&amp;option=%7B%22showTable%22%3A+false%7D">View on JSON Viewer</a></p>
</blockquote>




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

<blockquote class="lang-specific jsonld">
  <p class="example-links">
    <a target="_blank" href="https://ogcincubator.github.io/geodcat-ogcapi-records/build/tests/geo/geodcat/geodcat-stac-eo/example_2_1.jsonld">Open in new window</a>
    <a target="_blank" href="https://json-ld.org/playground/#json-ld=https%3A%2F%2Fogcincubator.github.io%2Fgeodcat-ogcapi-records%2Fbuild%2Ftests%2Fgeo%2Fgeodcat%2Fgeodcat-stac-eo%2Fexample_2_1.jsonld">View on JSON-LD Playground</a>
</blockquote>




```turtle
@prefix dcat: <http://www.w3.org/ns/dcat#> .
@prefix dcterms: <http://purl.org/dc/terms/> .
@prefix geojson: <https://purl.org/geojson/vocab#> .
@prefix ns1: <http://www.iana.org/assignments/> .
@prefix ns2: <eo:> .
@prefix oa: <http://www.w3.org/ns/oa#> .
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix stac: <urn:stac:vocab#> .
@prefix xsd: <http://www.w3.org/2001/XMLSchema#> .

<https://example.com/stac/raster/example-1/20201211_223832_CS2> ns2:cloud_cover 1.2e+00 ;
    ns2:snow_cover 0 ;
    dcterms:created "2020-12-12T01:48:13.725Z" ;
    dcterms:modified "2020-12-12T01:48:13.725Z" ;
    dcterms:type "Feature" ;
    rdfs:seeAlso [ rdfs:label "Simple Example Collection" ;
            dcterms:type "application/json" ;
            ns1:relation <http://www.iana.org/assignments/relation/parent> ;
            oa:hasTarget <https://example.com/stac/raster/example-1/collection.json> ],
        [ rdfs:label "Simple Example Collection" ;
            dcterms:type "application/json" ;
            ns1:relation <http://www.iana.org/assignments/relation/collection> ;
            oa:hasTarget <https://example.com/stac/raster/example-1/collection.json> ],
        [ rdfs:label "Simple Example Collection" ;
            dcterms:type "application/json" ;
            ns1:relation <http://www.iana.org/assignments/relation/root> ;
            oa:hasTarget <https://example.com/stac/raster/example-1/collection.json> ] ;
    geojson:bbox ( 1.729117e+02 1.343885e+00 1.729547e+02 1.369048e+00 ) ;
    geojson:geometry [ a geojson:Polygon ;
            geojson:coordinates ( ( ( 1.729117e+02 1.343885e+00 ) ( 1.729547e+02 1.343885e+00 ) ( 1.729547e+02 1.369048e+00 ) ( 1.729117e+02 1.369048e+00 ) ( 1.729117e+02 1.343885e+00 ) ) ) ] ;
    stac:extensions "https://stac-extensions.github.io/eo/v1.1.0/schema.json" ;
    stac:hasAsset <https://example.com/stac/raster/example-1/analytic>,
        <https://example.com/stac/raster/example-1/thumbnail>,
        <https://example.com/stac/raster/example-1/visual> ;
    stac:version "1.0.0" .

<https://example.com/stac/raster/example-1/analytic> ns2:bands [ ],
        [ ],
        [ ],
        [ ] ;
    dcterms:format "image/tiff; application=geotiff; profile=cloud-optimized" ;
    dcterms:title "4-Band Analytic" ;
    dcat:downloadURL <https://storage.googleapis.com/open-cogs/stac-examples/20201211_223832_CS2_analytic.tif> .

<https://example.com/stac/raster/example-1/thumbnail> dcterms:format "image/png" ;
    dcterms:title "Thumbnail" ;
    dcat:downloadURL <https://storage.googleapis.com/open-cogs/stac-examples/20201211_223832_CS2.jpg> .

<https://example.com/stac/raster/example-1/visual> ns2:bands [ ],
        [ ],
        [ ] ;
    dcterms:format "image/tiff; application=geotiff; profile=cloud-optimized" ;
    dcterms:title "3-Band Visual" ;
    dcat:downloadURL <https://storage.googleapis.com/open-cogs/stac-examples/20201211_223832_CS2.tif> .


```

<blockquote class="lang-specific turtle">
  <p class="example-links">
    <a target="_blank" href="https://ogcincubator.github.io/geodcat-ogcapi-records/build/tests/geo/geodcat/geodcat-stac-eo/example_2_1.ttl">Open in new window</a>
</blockquote>



# JSON Schema

```yaml--schema
$schema: https://json-schema.org/draft/2020-12/schema
description: Schema for OGCAPI records profile for GeoDCAT - defines all extra elements
  defined by GeoDCAT so that the JSON-LD context can map to GeoDCAT RDF
allOf:
- $ref: https://ogcincubator.github.io/bblocks-stac/build/annotated/contrib/stac/extensions/eo/schema.yaml
- oneOf:
  - $ref: https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/geodcat-stac-item/schema.yaml
  - $ref: https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/geodcat-stac-collection/schema.yaml

```

> <a target="_blank" href="https://avillar.github.io/TreedocViewer/?dataParser=yaml&amp;dataUrl=https%3A%2F%2Fogcincubator.github.io%2Fgeodcat-ogcapi-records%2Fbuild%2Fannotated%2Fgeo%2Fgeodcat%2Fgeodcat-stac-eo%2Fschema.yaml&amp;expand=2&amp;option=%7B%22showTable%22%3A+false%7D">View on YAML Viewer</a>

Links to the schema:

* YAML version: <a href="https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/geodcat-stac-eo/schema.yaml" target="_blank">https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/geodcat-stac-eo/schema.yaml</a>
* JSON version: <a href="https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/geodcat-stac-eo/schema.json" target="_blank">https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/geodcat-stac-eo/schema.json</a>


# JSON-LD Context

```json--ldContext
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
      "@context": {},
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
      "@type": "xsd:decimal"
    },
    "temporalCoverage": {
      "@container": "@set",
      "@id": "dct:temporal",
      "@type": "@id"
    },
    "temporalResolution": {
      "@container": "@set",
      "@id": "dcat:temporalResolution",
      "@type": "xsd:duration"
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
    "linkTemplates": "rec:hasLinkTemplate",
    "variables": {
      "@container": "@id",
      "@id": "rec:hasVariable",
      "@context": {
        "@base": "http://example.com/variables/",
        "@vocab": "https://www.opengis.net/def/ogc-api/records/rec:"
      }
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
    "rec": "https://www.opengis.net/def/ogc-api/records/",
    "w3ctime": "http://www.w3.org/2006/time#",
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

> <a target="_blank" href="https://json-ld.org/playground/#json-ld=https%3A%2F%2Fogcincubator.github.io%2Fgeodcat-ogcapi-records%2Fbuild%2Fannotated%2Fgeo%2Fgeodcat%2Fgeodcat-stac-eo%2Fcontext.jsonld">View on JSON-LD Playground</a>

You can find the full JSON-LD context here:
<a href="https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/geodcat-stac-eo/context.jsonld" target="_blank">https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/geodcat-stac-eo/context.jsonld</a>

# Validation

## SHACL Shapes

The following sets of SHACL shapes are used for validating this building block:

* OGC API Records Ontology <small><code>ogc.geo.geodcat.records-ontology</code></small>
  * [https://ogcincubator.github.io/geodcat-ogcapi-records/_sources/records-ontology/rules.shacl](https://ogcincubator.github.io/geodcat-ogcapi-records/_sources/records-ontology/rules.shacl)

# References

* [GeoDCAT Specification](http://www.opengis.net/def/metamodel/profiles/geodcat)
* [GeoDCAT Resources](http://www.opengis.net/def/metamodel/profiles/geodcat)
* [GeoDCAT Specification Repository](https://github.com/opengeospatial/GeoDCAT-SWG)

# For developers

The source code for this Building Block can be found in the following repository:

* URL: <a href="https://github.com/ogcincubator/geodcat-ogcapi-records" target="_blank">https://github.com/ogcincubator/geodcat-ogcapi-records</a>
* Path:
<code><a href="https://github.com/ogcincubator/geodcat-ogcapi-records/blob/HEAD/_sources/geodcat-stac-eo" target="_blank">_sources/geodcat-stac-eo</a></code>

