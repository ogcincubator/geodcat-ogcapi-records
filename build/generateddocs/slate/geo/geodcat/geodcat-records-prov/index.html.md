---
title: GeoDCAT + PROV profile (Schema)

language_tabs:
  - json: JSON
  - jsonld: JSON-LD
  - turtle: RDF/Turtle

toc_footers:
  - Version 0.1
  - <a href='#'>GeoDCAT + PROV profile</a>
  - <a href='https://blocks.ogc.org/register.html'>Building Blocks register</a>

search: true

code_clipboard: true

meta:
  - name: GeoDCAT + PROV profile (Schema)
---


# GeoDCAT + PROV profile `ogc.geo.geodcat.geodcat-records-prov`

GeoDCAT Profile of OGC API Records using the PROV-O model of provenance

<p class="status">
    <span data-rainbow-uri="http://www.opengis.net/def/status">Status</span>:
    <a href="http://www.opengis.net/def/status/under-development" target="_blank" data-rainbow-uri>Under development</a>
</p>

<aside class="success">
This building block is <strong><a href="https://github.com/ogcincubator/geodcat-ogcapi-records/blob/master/build/tests/geo/geodcat/geodcat-records-prov/" target="_blank">valid</a></strong>
</aside>

# Description

## GeoDCAT with PROV

Adds PROV model to GeoDCAT - treating a dcat:Dataset as a prov:Entity.

This profile extends a building block that uses the official JSON-LD context for DCAT bound to the OGC API Records.


# Examples

## STAC item with link to provenance



```json
{
  "stac_version": "1.0.0",
  "stac_extensions": [
    "https://stac-extensions.github.io/prov/v1.0.0/schema.json"
  ],
  "type": "Feature",
  "id": "20201211_223832_CS2",
  "bbox": [
    172.91173669923782,
    1.3438851951615003,
    172.95469614953714,
    1.3690476620161975
  ],
  "wasGeneratedBy": "http://mysystem.io/prov?object=20201211_223832_CS2",
  "geometry": {
    "type": "Point",
    "coordinates": [
      172.91173669923782,
      1.3438851951615003
    ]
  },
  "properties": {
    "datetime": "2020-12-11T22:38:32.125000Z"
  },
  "collection": "simple-collection",
  "links": [
    {
      "rel": "collection",
      "href": "./collection.json",
      "type": "application/json",
      "title": "Simple Example Collection"
    }
  ],
  "assets": {}
}
```

<blockquote class="lang-specific json">
  <p class="example-links">
    <a target="_blank" href="https://ogcincubator.github.io/geodcat-ogcapi-records/build/tests/geo/geodcat/geodcat-records-prov/example_1_1.json">Open in new window</a>
    <a target="_blank" href="https://avillar.github.io/TreedocViewer/?dataParser=json&amp;dataUrl=https%3A%2F%2Fogcincubator.github.io%2Fgeodcat-ogcapi-records%2Fbuild%2Ftests%2Fgeo%2Fgeodcat%2Fgeodcat-records-prov%2Fexample_1_1.json&amp;expand=2&amp;option=%7B%22showTable%22%3A+false%7D">View on JSON Viewer</a></p>
</blockquote>




```jsonld
{
  "stac_version": "1.0.0",
  "stac_extensions": [
    "https://stac-extensions.github.io/prov/v1.0.0/schema.json"
  ],
  "type": "Feature",
  "id": "20201211_223832_CS2",
  "bbox": [
    172.91173669923782,
    1.3438851951615003,
    172.95469614953714,
    1.3690476620161975
  ],
  "wasGeneratedBy": "http://mysystem.io/prov?object=20201211_223832_CS2",
  "geometry": {
    "type": "Point",
    "coordinates": [
      172.91173669923782,
      1.3438851951615003
    ]
  },
  "properties": {
    "datetime": "2020-12-11T22:38:32.125000Z"
  },
  "collection": "simple-collection",
  "links": [
    {
      "rel": "collection",
      "href": "./collection.json",
      "type": "application/json",
      "title": "Simple Example Collection"
    }
  ],
  "assets": {},
  "@context": "https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/geodcat-records-prov/context.jsonld"
}
```

<blockquote class="lang-specific jsonld">
  <p class="example-links">
    <a target="_blank" href="https://ogcincubator.github.io/geodcat-ogcapi-records/build/tests/geo/geodcat/geodcat-records-prov/example_1_1.jsonld">Open in new window</a>
    <a target="_blank" href="https://json-ld.org/playground/#json-ld=https%3A%2F%2Fogcincubator.github.io%2Fgeodcat-ogcapi-records%2Fbuild%2Ftests%2Fgeo%2Fgeodcat%2Fgeodcat-records-prov%2Fexample_1_1.jsonld">View on JSON-LD Playground</a>
</blockquote>




```turtle
@prefix dcterms: <http://purl.org/dc/terms/> .
@prefix geojson: <https://purl.org/geojson/vocab#> .
@prefix ns1: <http://www.iana.org/assignments/> .
@prefix oa: <http://www.w3.org/ns/oa#> .
@prefix prov: <http://www.w3.org/ns/prov#> .
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix xsd: <http://www.w3.org/2001/XMLSchema#> .

<https://example.com/stac/example1/20201211_223832_CS2> a geojson:Feature ;
    rdfs:seeAlso [ rdfs:label "Simple Example Collection" ;
            dcterms:type "application/json" ;
            ns1:relation <http://www.iana.org/assignments/relation/collection> ;
            oa:hasTarget <https://example.com/stac/example1/collection.json> ] ;
    prov:wasGeneratedBy <http://mysystem.io/prov?object=20201211_223832_CS2> ;
    geojson:bbox ( 1.729117e+02 1.343885e+00 1.729547e+02 1.369048e+00 ) ;
    geojson:geometry [ a geojson:Point ;
            geojson:coordinates ( 1.729117e+02 1.343885e+00 ) ] .


```

<blockquote class="lang-specific turtle">
  <p class="example-links">
    <a target="_blank" href="https://ogcincubator.github.io/geodcat-ogcapi-records/build/tests/geo/geodcat/geodcat-records-prov/example_1_1.ttl">Open in new window</a>
</blockquote>


This is the simple item example from the STAC specification, augmented with the simplest possible form of provenance - a link to a resource that provides provenance details. 

a STAC item is a prov:Entity with the "wasGeneratedBy" property defined by PROV-O.



## STAC item with a generation activity description



```json
{
  "stac_version": "1.0.0",
  "stac_extensions": [
    "https://stac-extensions.github.io/prov/v1.0.0/schema.json"
  ],
  "type": "Feature",
  "id": "20201211_223832_CS2",
  "bbox": [
    172.91173669923782,
    1.3438851951615003,
    172.95469614953714,
    1.3690476620161975
  ],
  "wasGeneratedBy": {
    "provType": "Activity",
    "id": "surveys:DP-1-S1",
    "activityType": "InitialSurvey",
    "endedAtTime": "2023-10-05T05:03:15+01:00",
    "wasAssociatedWith": "staff:jd234",
    "used": {
      "id": "regulations:Act3",
      "entityType": "Legislation",
      "wasAttributedTo": "agents:someGovernment",
      "links": [
        {
          "href": "https://some.gov/linktoact/",
          "rel": "related"
        }
      ]
    }
  },
  "geometry": {
    "type": "Point",
    "coordinates": [
      172.91173669923782,
      1.3438851951615003
    ]
  },
  "properties": {
    "datetime": "2020-12-11T22:38:32.125000Z"
  },
  "collection": "simple-collection",
  "links": [
    {
      "rel": "collection",
      "href": "./collection.json",
      "type": "application/json",
      "title": "Simple Example Collection"
    }
  ],
  "assets": {}
}
```

<blockquote class="lang-specific json">
  <p class="example-links">
    <a target="_blank" href="https://ogcincubator.github.io/geodcat-ogcapi-records/build/tests/geo/geodcat/geodcat-records-prov/example_2_1.json">Open in new window</a>
    <a target="_blank" href="https://avillar.github.io/TreedocViewer/?dataParser=json&amp;dataUrl=https%3A%2F%2Fogcincubator.github.io%2Fgeodcat-ogcapi-records%2Fbuild%2Ftests%2Fgeo%2Fgeodcat%2Fgeodcat-records-prov%2Fexample_2_1.json&amp;expand=2&amp;option=%7B%22showTable%22%3A+false%7D">View on JSON Viewer</a></p>
</blockquote>




```jsonld
{
  "stac_version": "1.0.0",
  "stac_extensions": [
    "https://stac-extensions.github.io/prov/v1.0.0/schema.json"
  ],
  "type": "Feature",
  "id": "20201211_223832_CS2",
  "bbox": [
    172.91173669923782,
    1.3438851951615003,
    172.95469614953714,
    1.3690476620161975
  ],
  "wasGeneratedBy": {
    "provType": "Activity",
    "id": "surveys:DP-1-S1",
    "activityType": "InitialSurvey",
    "endedAtTime": "2023-10-05T05:03:15+01:00",
    "wasAssociatedWith": "staff:jd234",
    "used": {
      "id": "regulations:Act3",
      "entityType": "Legislation",
      "wasAttributedTo": "agents:someGovernment",
      "links": [
        {
          "href": "https://some.gov/linktoact/",
          "rel": "related"
        }
      ]
    }
  },
  "geometry": {
    "type": "Point",
    "coordinates": [
      172.91173669923782,
      1.3438851951615003
    ]
  },
  "properties": {
    "datetime": "2020-12-11T22:38:32.125000Z"
  },
  "collection": "simple-collection",
  "links": [
    {
      "rel": "collection",
      "href": "./collection.json",
      "type": "application/json",
      "title": "Simple Example Collection"
    }
  ],
  "assets": {},
  "@context": "https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/geodcat-records-prov/context.jsonld"
}
```

<blockquote class="lang-specific jsonld">
  <p class="example-links">
    <a target="_blank" href="https://ogcincubator.github.io/geodcat-ogcapi-records/build/tests/geo/geodcat/geodcat-records-prov/example_2_1.jsonld">Open in new window</a>
    <a target="_blank" href="https://json-ld.org/playground/#json-ld=https%3A%2F%2Fogcincubator.github.io%2Fgeodcat-ogcapi-records%2Fbuild%2Ftests%2Fgeo%2Fgeodcat%2Fgeodcat-records-prov%2Fexample_2_1.jsonld">View on JSON-LD Playground</a>
</blockquote>




```turtle
@prefix dcterms: <http://purl.org/dc/terms/> .
@prefix geojson: <https://purl.org/geojson/vocab#> .
@prefix ns1: <http://www.iana.org/assignments/> .
@prefix oa: <http://www.w3.org/ns/oa#> .
@prefix prov: <http://www.w3.org/ns/prov#> .
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix xsd: <http://www.w3.org/2001/XMLSchema#> .

<https://example.com/stac/example1/20201211_223832_CS2> a geojson:Feature ;
    rdfs:seeAlso [ rdfs:label "Simple Example Collection" ;
            dcterms:type "application/json" ;
            ns1:relation <http://www.iana.org/assignments/relation/collection> ;
            oa:hasTarget <https://example.com/stac/example1/collection.json> ] ;
    prov:wasGeneratedBy <surveys:DP-1-S1> ;
    geojson:bbox ( 1.729117e+02 1.343885e+00 1.729547e+02 1.369048e+00 ) ;
    geojson:geometry [ a geojson:Point ;
            geojson:coordinates ( 1.729117e+02 1.343885e+00 ) ] .

<regulations:Act3> a <https://example.com/stac/example1/Legislation> ;
    rdfs:seeAlso [ ns1:relation <http://www.iana.org/assignments/relation/related> ;
            oa:hasTarget <https://some.gov/linktoact/> ] ;
    prov:wasAttributedTo <agents:someGovernment> .

<surveys:DP-1-S1> a prov:Activity,
        <https://example.com/stac/example1/InitialSurvey> ;
    prov:endedAtTime "2023-10-05T05:03:15+01:00"^^xsd:dateTime ;
    prov:used <regulations:Act3> ;
    prov:wasAssociatedWith <staff:jd234> .


```

<blockquote class="lang-specific turtle">
  <p class="example-links">
    <a target="_blank" href="https://ogcincubator.github.io/geodcat-ogcapi-records/build/tests/geo/geodcat/geodcat-records-prov/example_2_1.ttl">Open in new window</a>
</blockquote>


This is the simple item example from the STAC specification, augmented a description of the activity that generated it, with nested set of entities the object derives from. 

A STAC item is a prov:Entity with the "wasGeneratedBy" property defined by PROV-O. 



## STAC item with a provenance graph



```json
{
  "stac_version": "1.0.0",
  "stac_extensions": [
    "https://stac-extensions.github.io/prov/v1.0.0/schema.json"
  ],
  "type": "Feature",
  "id": "20201211_223832_CS2",
  "bbox": [
    172.91173669923782,
    1.3438851951615003,
    172.95469614953714,
    1.3690476620161975
  ],
  "has_provenance": [
    {
      "id": "DP-2223",
      "provType": "Entity",
      "featureType": "ftc:SomeKindOfSurvey",
      "wasGeneratedBy": "surveys:DP-1-S1"
    },
    {
      "provType": "Activity",
      "id": "surveys:DP-1-S1",
      "activityType": "InitialSurvey",
      "endedAtTime": "2023-10-05T05:03:15+01:00",
      "wasAssociatedWith": "staff:jd234",
      "used": {
        "id": "regulations:Act3",
        "entityType": "Legislation",
        "wasAttributedTo": "agents:someGovernment",
        "links": [
          {
            "href": "https://some.gov/linktoact/",
            "rel": "related"
          }
        ]
      }
    }
  ],
  "geometry": {
    "type": "Point",
    "coordinates": [
      172.91173669923782,
      1.3438851951615003
    ]
  },
  "properties": {
    "datetime": "2020-12-11T22:38:32.125000Z"
  },
  "collection": "simple-collection",
  "links": [
    {
      "rel": "collection",
      "href": "./collection.json",
      "type": "application/json",
      "title": "Simple Example Collection"
    }
  ],
  "assets": {}
}
```

<blockquote class="lang-specific json">
  <p class="example-links">
    <a target="_blank" href="https://ogcincubator.github.io/geodcat-ogcapi-records/build/tests/geo/geodcat/geodcat-records-prov/example_3_1.json">Open in new window</a>
    <a target="_blank" href="https://avillar.github.io/TreedocViewer/?dataParser=json&amp;dataUrl=https%3A%2F%2Fogcincubator.github.io%2Fgeodcat-ogcapi-records%2Fbuild%2Ftests%2Fgeo%2Fgeodcat%2Fgeodcat-records-prov%2Fexample_3_1.json&amp;expand=2&amp;option=%7B%22showTable%22%3A+false%7D">View on JSON Viewer</a></p>
</blockquote>




```jsonld
{
  "stac_version": "1.0.0",
  "stac_extensions": [
    "https://stac-extensions.github.io/prov/v1.0.0/schema.json"
  ],
  "type": "Feature",
  "id": "20201211_223832_CS2",
  "bbox": [
    172.91173669923782,
    1.3438851951615003,
    172.95469614953714,
    1.3690476620161975
  ],
  "has_provenance": [
    {
      "id": "DP-2223",
      "provType": "Entity",
      "featureType": "ftc:SomeKindOfSurvey",
      "wasGeneratedBy": "surveys:DP-1-S1"
    },
    {
      "provType": "Activity",
      "id": "surveys:DP-1-S1",
      "activityType": "InitialSurvey",
      "endedAtTime": "2023-10-05T05:03:15+01:00",
      "wasAssociatedWith": "staff:jd234",
      "used": {
        "id": "regulations:Act3",
        "entityType": "Legislation",
        "wasAttributedTo": "agents:someGovernment",
        "links": [
          {
            "href": "https://some.gov/linktoact/",
            "rel": "related"
          }
        ]
      }
    }
  ],
  "geometry": {
    "type": "Point",
    "coordinates": [
      172.91173669923782,
      1.3438851951615003
    ]
  },
  "properties": {
    "datetime": "2020-12-11T22:38:32.125000Z"
  },
  "collection": "simple-collection",
  "links": [
    {
      "rel": "collection",
      "href": "./collection.json",
      "type": "application/json",
      "title": "Simple Example Collection"
    }
  ],
  "assets": {},
  "@context": "https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/geodcat-records-prov/context.jsonld"
}
```

<blockquote class="lang-specific jsonld">
  <p class="example-links">
    <a target="_blank" href="https://ogcincubator.github.io/geodcat-ogcapi-records/build/tests/geo/geodcat/geodcat-records-prov/example_3_1.jsonld">Open in new window</a>
    <a target="_blank" href="https://json-ld.org/playground/#json-ld=https%3A%2F%2Fogcincubator.github.io%2Fgeodcat-ogcapi-records%2Fbuild%2Ftests%2Fgeo%2Fgeodcat%2Fgeodcat-records-prov%2Fexample_3_1.jsonld">View on JSON-LD Playground</a>
</blockquote>




```turtle
@prefix dcterms: <http://purl.org/dc/terms/> .
@prefix geojson: <https://purl.org/geojson/vocab#> .
@prefix ns1: <http://www.iana.org/assignments/> .
@prefix oa: <http://www.w3.org/ns/oa#> .
@prefix prov: <http://www.w3.org/ns/prov#> .
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix xsd: <http://www.w3.org/2001/XMLSchema#> .

<https://example.com/stac/example1/20201211_223832_CS2> a geojson:Feature ;
    dcterms:provenance <https://example.com/stac/example1/DP-2223>,
        <surveys:DP-1-S1> ;
    rdfs:seeAlso [ rdfs:label "Simple Example Collection" ;
            dcterms:type "application/json" ;
            ns1:relation <http://www.iana.org/assignments/relation/collection> ;
            oa:hasTarget <https://example.com/stac/example1/collection.json> ] ;
    geojson:bbox ( 1.729117e+02 1.343885e+00 1.729547e+02 1.369048e+00 ) ;
    geojson:geometry [ a geojson:Point ;
            geojson:coordinates ( 1.729117e+02 1.343885e+00 ) ] .

<https://example.com/stac/example1/DP-2223> a <ftc:SomeKindOfSurvey>,
        prov:Entity ;
    prov:wasGeneratedBy <surveys:DP-1-S1> .

<regulations:Act3> a <https://example.com/stac/example1/Legislation> ;
    rdfs:seeAlso [ ns1:relation <http://www.iana.org/assignments/relation/related> ;
            oa:hasTarget <https://some.gov/linktoact/> ] ;
    prov:wasAttributedTo <agents:someGovernment> .

<surveys:DP-1-S1> a prov:Activity,
        <https://example.com/stac/example1/InitialSurvey> ;
    prov:endedAtTime "2023-10-05T05:03:15+01:00"^^xsd:dateTime ;
    prov:used <regulations:Act3> ;
    prov:wasAssociatedWith <staff:jd234> .


```

<blockquote class="lang-specific turtle">
  <p class="example-links">
    <a target="_blank" href="https://ogcincubator.github.io/geodcat-ogcapi-records/build/tests/geo/geodcat/geodcat-records-prov/example_3_1.ttl">Open in new window</a>
</blockquote>


This is the simple item example from the STAC specification, augmented an array of Provenance objects that define a DAG (Directed Acyclic Graph) that can fully describe a set of contributing activities, entities and agents.) 

A STAC item is a prov:Entity with the "has_provenance" property whose range is an array of objects defined by the PROV-O model. 



# JSON Schema

```yaml--schema
$schema: https://json-schema.org/draft/2020-12/schema
description: Schema for OGCAPI records profile for GeoDCAT + PROV
allOf:
- $ref: https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/geodcat-records/schema.yaml
- $ref: https://ogcincubator.github.io/bblock-prov-schema/build/annotated/ogc-utils/prov/schema.yaml#/$defs/Entity

```

> <a target="_blank" href="https://avillar.github.io/TreedocViewer/?dataParser=yaml&amp;dataUrl=https%3A%2F%2Fogcincubator.github.io%2Fgeodcat-ogcapi-records%2Fbuild%2Fannotated%2Fgeo%2Fgeodcat%2Fgeodcat-records-prov%2Fschema.yaml&amp;expand=2&amp;option=%7B%22showTable%22%3A+false%7D">View on YAML Viewer</a>

Links to the schema:

* YAML version: <a href="https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/geodcat-records-prov/schema.yaml" target="_blank">https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/geodcat-records-prov/schema.yaml</a>
* JSON version: <a href="https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/geodcat-records-prov/schema.json" target="_blank">https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/geodcat-records-prov/schema.json</a>


# JSON-LD Context

```json--ldContext
{
  "@context": {
    "type": "@type",
    "coordinates": {
      "@container": "@list",
      "@id": "geojson:coordinates"
    },
    "bbox": {
      "@container": "@list",
      "@id": "geojson:bbox"
    },
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
    "hreflang": "dct:language",
    "title": "rdfs:label",
    "length": "dct:extent",
    "created": "dct:created",
    "updated": "dct:modified",
    "uriTemplate": {
      "@type": "xsd:string",
      "@id": "oa:hasTarget"
    },
    "id": "@id",
    "properties": "@nest",
    "geometry": {
      "@context": {},
      "@id": "geojson:geometry"
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
      "@type": "@id",
      "@context": {
        "agent": {
          "@context": {
            "agentType": "@type",
            "name": "rdfs:label",
            "actedOnBehalfOf": {
              "@context": {
                "type": "dct:type"
              },
              "@id": "prov:actedOnBehalfOf",
              "@type": "@id"
            },
            "qualifiedDelegation": {
              "@context": {
                "hadActivity": {
                  "@context": {
                    "activityType": "@type",
                    "endedAtTime": {
                      "@id": "prov:endedAtTime",
                      "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
                    },
                    "wasAssociatedWith": {
                      "@context": {
                        "type": "dct:type"
                      },
                      "@id": "prov:wasAssociatedWith",
                      "@type": "@id"
                    },
                    "wasInformedBy": {
                      "@id": "prov:wasInformedBy",
                      "@type": "@id"
                    },
                    "used": {
                      "@id": "prov:used",
                      "@type": "@id"
                    },
                    "wasStartedBy": {
                      "@id": "prov:wasStartedBy",
                      "@type": "@id"
                    },
                    "wasEndedBy": {
                      "@id": "prov:wasEndedBy",
                      "@type": "@id"
                    },
                    "invalidated": {
                      "@id": "prov:invalidated",
                      "@type": "@id"
                    },
                    "generated": {
                      "@id": "prov:generated",
                      "@type": "@id"
                    },
                    "qualifiedUsage": {
                      "@context": {
                        "atTime": {
                          "@id": "prov:atTime",
                          "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
                        },
                        "entity": {
                          "@id": "prov:entity",
                          "@type": "@id"
                        }
                      },
                      "@id": "prov:qualifiedUsage",
                      "@type": "@id"
                    },
                    "qualifiedCommunication": {
                      "@context": {
                        "atTime": {
                          "@id": "prov:atTime",
                          "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
                        },
                        "hadRole": {
                          "@id": "prov:hadRole",
                          "@type": "@id"
                        },
                        "influencer": {
                          "@id": "prov:influencer",
                          "@type": "@id"
                        },
                        "activity": {
                          "@id": "prov:activity",
                          "@type": "@id"
                        }
                      },
                      "@id": "prov:qualifiedCommunication",
                      "@type": "@id"
                    },
                    "qualifiedStart": {
                      "@context": {
                        "atTime": {
                          "@id": "prov:atTime",
                          "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
                        },
                        "entity": {
                          "@id": "prov:entity",
                          "@type": "@id"
                        }
                      },
                      "@id": "prov:qualifiedStart",
                      "@type": "@id"
                    },
                    "qualifiedEnd": {
                      "@context": {
                        "atTime": {
                          "@id": "prov:atTime",
                          "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
                        },
                        "entity": {
                          "@id": "prov:entity",
                          "@type": "@id"
                        }
                      },
                      "@id": "prov:qualifiedEnd",
                      "@type": "@id"
                    },
                    "qualifiedAssociation": {
                      "@context": {
                        "hadRole": {
                          "@id": "prov:hadRole",
                          "@type": "@id"
                        },
                        "hadPlan": {
                          "@id": "prov:hadPlan",
                          "@type": "@id"
                        }
                      },
                      "@id": "prov:qualifiedAssociation",
                      "@type": "@id"
                    }
                  },
                  "@id": "prov:hadActivity",
                  "@type": "@id"
                }
              },
              "@id": "prov:qualifiedDelegation",
              "@type": "@id"
            }
          },
          "@id": "prov:agent",
          "@type": "@id"
        }
      }
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
      "@type": "@id",
      "@context": {
        "activityType": "@type",
        "endedAtTime": {
          "@id": "prov:endedAtTime",
          "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
        },
        "wasAssociatedWith": {
          "@context": {
            "type": "dct:type",
            "agentType": "@type",
            "name": "rdfs:label",
            "actedOnBehalfOf": {
              "@id": "prov:actedOnBehalfOf",
              "@type": "@id"
            },
            "qualifiedDelegation": {
              "@context": {
                "agent": {
                  "@id": "prov:agent",
                  "@type": "@id"
                },
                "hadActivity": {
                  "@id": "prov:hadActivity",
                  "@type": "@id"
                }
              },
              "@id": "prov:qualifiedDelegation",
              "@type": "@id"
            }
          },
          "@id": "prov:wasAssociatedWith",
          "@type": "@id"
        },
        "wasInformedBy": {
          "@id": "prov:wasInformedBy",
          "@type": "@id"
        },
        "used": {
          "@id": "prov:used",
          "@type": "@id"
        },
        "wasStartedBy": {
          "@id": "prov:wasStartedBy",
          "@type": "@id"
        },
        "wasEndedBy": {
          "@id": "prov:wasEndedBy",
          "@type": "@id"
        },
        "invalidated": {
          "@id": "prov:invalidated",
          "@type": "@id"
        },
        "generated": {
          "@id": "prov:generated",
          "@type": "@id"
        },
        "qualifiedUsage": {
          "@context": {
            "atTime": {
              "@id": "prov:atTime",
              "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
            },
            "entity": {
              "@id": "prov:entity",
              "@type": "@id"
            }
          },
          "@id": "prov:qualifiedUsage",
          "@type": "@id"
        },
        "qualifiedCommunication": {
          "@context": {
            "atTime": {
              "@id": "prov:atTime",
              "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
            },
            "hadRole": {
              "@id": "prov:hadRole",
              "@type": "@id"
            },
            "influencer": {
              "@id": "prov:influencer",
              "@type": "@id"
            },
            "hadActivity": {
              "@id": "prov:hadActivity",
              "@type": "@id"
            },
            "activity": {
              "@id": "prov:activity",
              "@type": "@id"
            }
          },
          "@id": "prov:qualifiedCommunication",
          "@type": "@id"
        },
        "qualifiedStart": {
          "@context": {
            "atTime": {
              "@id": "prov:atTime",
              "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
            },
            "entity": {
              "@id": "prov:entity",
              "@type": "@id"
            },
            "hadActivity": {
              "@id": "prov:hadActivity",
              "@type": "@id"
            }
          },
          "@id": "prov:qualifiedStart",
          "@type": "@id"
        },
        "qualifiedEnd": {
          "@context": {
            "atTime": {
              "@id": "prov:atTime",
              "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
            },
            "entity": {
              "@id": "prov:entity",
              "@type": "@id"
            },
            "hadActivity": {
              "@id": "prov:hadActivity",
              "@type": "@id"
            }
          },
          "@id": "prov:qualifiedEnd",
          "@type": "@id"
        },
        "qualifiedAssociation": {
          "@context": {
            "agent": {
              "@context": {
                "agentType": "@type",
                "name": "rdfs:label",
                "actedOnBehalfOf": {
                  "@context": {
                    "type": "dct:type"
                  },
                  "@id": "prov:actedOnBehalfOf",
                  "@type": "@id"
                },
                "qualifiedDelegation": {
                  "@context": {
                    "hadActivity": {
                      "@id": "prov:hadActivity",
                      "@type": "@id"
                    }
                  },
                  "@id": "prov:qualifiedDelegation",
                  "@type": "@id"
                }
              },
              "@id": "prov:agent",
              "@type": "@id"
            },
            "hadRole": {
              "@id": "prov:hadRole",
              "@type": "@id"
            },
            "hadPlan": {
              "@id": "prov:hadPlan",
              "@type": "@id"
            }
          },
          "@id": "prov:qualifiedAssociation",
          "@type": "@id"
        }
      }
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
    "featureType": "@type",
    "entityType": "@type",
    "has_provenance": {
      "@context": {
        "activityType": "@type",
        "endedAtTime": {
          "@id": "prov:endedAtTime",
          "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
        },
        "wasAssociatedWith": {
          "@context": {
            "type": "dct:type"
          },
          "@id": "prov:wasAssociatedWith",
          "@type": "@id"
        },
        "wasInformedBy": {
          "@id": "prov:wasInformedBy",
          "@type": "@id"
        },
        "used": {
          "@id": "prov:used",
          "@type": "@id"
        },
        "wasStartedBy": {
          "@id": "prov:wasStartedBy",
          "@type": "@id"
        },
        "wasEndedBy": {
          "@id": "prov:wasEndedBy",
          "@type": "@id"
        },
        "invalidated": {
          "@id": "prov:invalidated",
          "@type": "@id"
        },
        "generated": {
          "@id": "prov:generated",
          "@type": "@id"
        },
        "qualifiedUsage": {
          "@context": {
            "atTime": {
              "@id": "prov:atTime",
              "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
            },
            "entity": {
              "@id": "prov:entity",
              "@type": "@id"
            }
          },
          "@id": "prov:qualifiedUsage",
          "@type": "@id"
        },
        "qualifiedCommunication": {
          "@context": {
            "atTime": {
              "@id": "prov:atTime",
              "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
            },
            "hadRole": {
              "@id": "prov:hadRole",
              "@type": "@id"
            },
            "influencer": {
              "@id": "prov:influencer",
              "@type": "@id"
            },
            "hadActivity": {
              "@id": "prov:hadActivity",
              "@type": "@id"
            },
            "activity": {
              "@id": "prov:activity",
              "@type": "@id"
            }
          },
          "@id": "prov:qualifiedCommunication",
          "@type": "@id"
        },
        "qualifiedStart": {
          "@context": {
            "atTime": {
              "@id": "prov:atTime",
              "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
            },
            "entity": {
              "@id": "prov:entity",
              "@type": "@id"
            },
            "hadActivity": {
              "@id": "prov:hadActivity",
              "@type": "@id"
            }
          },
          "@id": "prov:qualifiedStart",
          "@type": "@id"
        },
        "qualifiedEnd": {
          "@context": {
            "atTime": {
              "@id": "prov:atTime",
              "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
            },
            "entity": {
              "@id": "prov:entity",
              "@type": "@id"
            },
            "hadActivity": {
              "@id": "prov:hadActivity",
              "@type": "@id"
            }
          },
          "@id": "prov:qualifiedEnd",
          "@type": "@id"
        },
        "qualifiedAssociation": {
          "@context": {
            "agent": {
              "@id": "prov:agent",
              "@type": "@id"
            },
            "hadRole": {
              "@id": "prov:hadRole",
              "@type": "@id"
            },
            "hadPlan": {
              "@id": "prov:hadPlan",
              "@type": "@id"
            }
          },
          "@id": "prov:qualifiedAssociation",
          "@type": "@id"
        },
        "agentType": "@type",
        "name": "rdfs:label",
        "actedOnBehalfOf": {
          "@context": {
            "type": "dct:type"
          },
          "@id": "prov:actedOnBehalfOf",
          "@type": "@id"
        },
        "qualifiedDelegation": {
          "@context": {
            "agent": {
              "@id": "prov:agent",
              "@type": "@id"
            },
            "hadActivity": {
              "@id": "prov:hadActivity",
              "@type": "@id"
            }
          },
          "@id": "prov:qualifiedDelegation",
          "@type": "@id"
        }
      },
      "@id": "dct:provenance",
      "@type": "@id"
    },
    "wasAttributedTo": {
      "@context": {
        "type": "dct:type",
        "agentType": "@type",
        "name": "rdfs:label",
        "actedOnBehalfOf": {
          "@id": "prov:actedOnBehalfOf",
          "@type": "@id"
        },
        "qualifiedDelegation": {
          "@context": {
            "agent": {
              "@id": "prov:agent",
              "@type": "@id"
            },
            "hadActivity": {
              "@context": {
                "activityType": "@type",
                "endedAtTime": {
                  "@id": "prov:endedAtTime",
                  "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
                },
                "wasAssociatedWith": {
                  "@id": "prov:wasAssociatedWith",
                  "@type": "@id"
                },
                "wasInformedBy": {
                  "@id": "prov:wasInformedBy",
                  "@type": "@id"
                },
                "used": {
                  "@id": "prov:used",
                  "@type": "@id"
                },
                "wasStartedBy": {
                  "@id": "prov:wasStartedBy",
                  "@type": "@id"
                },
                "wasEndedBy": {
                  "@id": "prov:wasEndedBy",
                  "@type": "@id"
                },
                "invalidated": {
                  "@id": "prov:invalidated",
                  "@type": "@id"
                },
                "generated": {
                  "@id": "prov:generated",
                  "@type": "@id"
                },
                "qualifiedUsage": {
                  "@context": {
                    "atTime": {
                      "@id": "prov:atTime",
                      "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
                    },
                    "entity": {
                      "@id": "prov:entity",
                      "@type": "@id"
                    }
                  },
                  "@id": "prov:qualifiedUsage",
                  "@type": "@id"
                },
                "qualifiedCommunication": {
                  "@context": {
                    "atTime": {
                      "@id": "prov:atTime",
                      "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
                    },
                    "hadRole": {
                      "@id": "prov:hadRole",
                      "@type": "@id"
                    },
                    "influencer": {
                      "@id": "prov:influencer",
                      "@type": "@id"
                    },
                    "activity": {
                      "@id": "prov:activity",
                      "@type": "@id"
                    }
                  },
                  "@id": "prov:qualifiedCommunication",
                  "@type": "@id"
                },
                "qualifiedStart": {
                  "@context": {
                    "atTime": {
                      "@id": "prov:atTime",
                      "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
                    },
                    "entity": {
                      "@id": "prov:entity",
                      "@type": "@id"
                    }
                  },
                  "@id": "prov:qualifiedStart",
                  "@type": "@id"
                },
                "qualifiedEnd": {
                  "@context": {
                    "atTime": {
                      "@id": "prov:atTime",
                      "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
                    },
                    "entity": {
                      "@id": "prov:entity",
                      "@type": "@id"
                    }
                  },
                  "@id": "prov:qualifiedEnd",
                  "@type": "@id"
                },
                "qualifiedAssociation": {
                  "@context": {
                    "hadRole": {
                      "@id": "prov:hadRole",
                      "@type": "@id"
                    },
                    "hadPlan": {
                      "@id": "prov:hadPlan",
                      "@type": "@id"
                    }
                  },
                  "@id": "prov:qualifiedAssociation",
                  "@type": "@id"
                }
              },
              "@id": "prov:hadActivity",
              "@type": "@id"
            }
          },
          "@id": "prov:qualifiedDelegation",
          "@type": "@id"
        }
      },
      "@id": "prov:wasAttributedTo",
      "@type": "@id"
    },
    "wasDerivedFrom": {
      "@id": "prov:wasDerivedFrom",
      "@type": "@id"
    },
    "alternateOf": {
      "@id": "prov:alternateOf",
      "@type": "@id"
    },
    "hadPrimarySource": {
      "@id": "prov:hadPrimarySource",
      "@type": "@id"
    },
    "specializationOf": {
      "@id": "prov:specializationOf",
      "@type": "@id"
    },
    "wasInvalidatedBy": {
      "@context": {
        "type": "dct:type",
        "agentType": "@type",
        "name": "rdfs:label",
        "actedOnBehalfOf": {
          "@id": "prov:actedOnBehalfOf",
          "@type": "@id"
        },
        "qualifiedDelegation": {
          "@context": {
            "agent": {
              "@id": "prov:agent",
              "@type": "@id"
            },
            "hadActivity": {
              "@context": {
                "activityType": "@type",
                "endedAtTime": {
                  "@id": "prov:endedAtTime",
                  "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
                },
                "wasAssociatedWith": {
                  "@id": "prov:wasAssociatedWith",
                  "@type": "@id"
                },
                "wasInformedBy": {
                  "@id": "prov:wasInformedBy",
                  "@type": "@id"
                },
                "used": {
                  "@id": "prov:used",
                  "@type": "@id"
                },
                "wasStartedBy": {
                  "@id": "prov:wasStartedBy",
                  "@type": "@id"
                },
                "wasEndedBy": {
                  "@id": "prov:wasEndedBy",
                  "@type": "@id"
                },
                "invalidated": {
                  "@id": "prov:invalidated",
                  "@type": "@id"
                },
                "generated": {
                  "@id": "prov:generated",
                  "@type": "@id"
                },
                "qualifiedUsage": {
                  "@context": {
                    "atTime": {
                      "@id": "prov:atTime",
                      "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
                    },
                    "entity": {
                      "@id": "prov:entity",
                      "@type": "@id"
                    }
                  },
                  "@id": "prov:qualifiedUsage",
                  "@type": "@id"
                },
                "qualifiedCommunication": {
                  "@context": {
                    "atTime": {
                      "@id": "prov:atTime",
                      "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
                    },
                    "hadRole": {
                      "@id": "prov:hadRole",
                      "@type": "@id"
                    },
                    "influencer": {
                      "@id": "prov:influencer",
                      "@type": "@id"
                    },
                    "activity": {
                      "@id": "prov:activity",
                      "@type": "@id"
                    }
                  },
                  "@id": "prov:qualifiedCommunication",
                  "@type": "@id"
                },
                "qualifiedStart": {
                  "@context": {
                    "atTime": {
                      "@id": "prov:atTime",
                      "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
                    },
                    "entity": {
                      "@id": "prov:entity",
                      "@type": "@id"
                    }
                  },
                  "@id": "prov:qualifiedStart",
                  "@type": "@id"
                },
                "qualifiedEnd": {
                  "@context": {
                    "atTime": {
                      "@id": "prov:atTime",
                      "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
                    },
                    "entity": {
                      "@id": "prov:entity",
                      "@type": "@id"
                    }
                  },
                  "@id": "prov:qualifiedEnd",
                  "@type": "@id"
                },
                "qualifiedAssociation": {
                  "@context": {
                    "hadRole": {
                      "@id": "prov:hadRole",
                      "@type": "@id"
                    },
                    "hadPlan": {
                      "@id": "prov:hadPlan",
                      "@type": "@id"
                    }
                  },
                  "@id": "prov:qualifiedAssociation",
                  "@type": "@id"
                }
              },
              "@id": "prov:hadActivity",
              "@type": "@id"
            }
          },
          "@id": "prov:qualifiedDelegation",
          "@type": "@id"
        }
      },
      "@id": "prov:wasInvalidatedBy",
      "@type": "@id"
    },
    "wasQuotedFrom": {
      "@context": {
        "type": "dct:type",
        "agentType": "@type",
        "name": "rdfs:label",
        "actedOnBehalfOf": {
          "@id": "prov:actedOnBehalfOf",
          "@type": "@id"
        },
        "qualifiedDelegation": {
          "@context": {
            "agent": {
              "@id": "prov:agent",
              "@type": "@id"
            },
            "hadActivity": {
              "@context": {
                "activityType": "@type",
                "endedAtTime": {
                  "@id": "prov:endedAtTime",
                  "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
                },
                "wasAssociatedWith": {
                  "@id": "prov:wasAssociatedWith",
                  "@type": "@id"
                },
                "wasInformedBy": {
                  "@id": "prov:wasInformedBy",
                  "@type": "@id"
                },
                "used": {
                  "@id": "prov:used",
                  "@type": "@id"
                },
                "wasStartedBy": {
                  "@id": "prov:wasStartedBy",
                  "@type": "@id"
                },
                "wasEndedBy": {
                  "@id": "prov:wasEndedBy",
                  "@type": "@id"
                },
                "invalidated": {
                  "@id": "prov:invalidated",
                  "@type": "@id"
                },
                "generated": {
                  "@id": "prov:generated",
                  "@type": "@id"
                },
                "qualifiedUsage": {
                  "@context": {
                    "atTime": {
                      "@id": "prov:atTime",
                      "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
                    },
                    "entity": {
                      "@id": "prov:entity",
                      "@type": "@id"
                    }
                  },
                  "@id": "prov:qualifiedUsage",
                  "@type": "@id"
                },
                "qualifiedCommunication": {
                  "@context": {
                    "atTime": {
                      "@id": "prov:atTime",
                      "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
                    },
                    "hadRole": {
                      "@id": "prov:hadRole",
                      "@type": "@id"
                    },
                    "influencer": {
                      "@id": "prov:influencer",
                      "@type": "@id"
                    },
                    "activity": {
                      "@id": "prov:activity",
                      "@type": "@id"
                    }
                  },
                  "@id": "prov:qualifiedCommunication",
                  "@type": "@id"
                },
                "qualifiedStart": {
                  "@context": {
                    "atTime": {
                      "@id": "prov:atTime",
                      "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
                    },
                    "entity": {
                      "@id": "prov:entity",
                      "@type": "@id"
                    }
                  },
                  "@id": "prov:qualifiedStart",
                  "@type": "@id"
                },
                "qualifiedEnd": {
                  "@context": {
                    "atTime": {
                      "@id": "prov:atTime",
                      "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
                    },
                    "entity": {
                      "@id": "prov:entity",
                      "@type": "@id"
                    }
                  },
                  "@id": "prov:qualifiedEnd",
                  "@type": "@id"
                },
                "qualifiedAssociation": {
                  "@context": {
                    "hadRole": {
                      "@id": "prov:hadRole",
                      "@type": "@id"
                    },
                    "hadPlan": {
                      "@id": "prov:hadPlan",
                      "@type": "@id"
                    }
                  },
                  "@id": "prov:qualifiedAssociation",
                  "@type": "@id"
                }
              },
              "@id": "prov:hadActivity",
              "@type": "@id"
            }
          },
          "@id": "prov:qualifiedDelegation",
          "@type": "@id"
        }
      },
      "@id": "prov:wasQuotedFrom",
      "@type": "@id"
    },
    "wasRevisionOf": {
      "@context": {
        "type": "dct:type",
        "agentType": "@type",
        "name": "rdfs:label",
        "actedOnBehalfOf": {
          "@id": "prov:actedOnBehalfOf",
          "@type": "@id"
        },
        "qualifiedDelegation": {
          "@context": {
            "agent": {
              "@id": "prov:agent",
              "@type": "@id"
            },
            "hadActivity": {
              "@context": {
                "activityType": "@type",
                "endedAtTime": {
                  "@id": "prov:endedAtTime",
                  "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
                },
                "wasAssociatedWith": {
                  "@id": "prov:wasAssociatedWith",
                  "@type": "@id"
                },
                "wasInformedBy": {
                  "@id": "prov:wasInformedBy",
                  "@type": "@id"
                },
                "used": {
                  "@id": "prov:used",
                  "@type": "@id"
                },
                "wasStartedBy": {
                  "@id": "prov:wasStartedBy",
                  "@type": "@id"
                },
                "wasEndedBy": {
                  "@id": "prov:wasEndedBy",
                  "@type": "@id"
                },
                "invalidated": {
                  "@id": "prov:invalidated",
                  "@type": "@id"
                },
                "generated": {
                  "@id": "prov:generated",
                  "@type": "@id"
                },
                "qualifiedUsage": {
                  "@context": {
                    "atTime": {
                      "@id": "prov:atTime",
                      "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
                    },
                    "entity": {
                      "@id": "prov:entity",
                      "@type": "@id"
                    }
                  },
                  "@id": "prov:qualifiedUsage",
                  "@type": "@id"
                },
                "qualifiedCommunication": {
                  "@context": {
                    "atTime": {
                      "@id": "prov:atTime",
                      "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
                    },
                    "hadRole": {
                      "@id": "prov:hadRole",
                      "@type": "@id"
                    },
                    "influencer": {
                      "@id": "prov:influencer",
                      "@type": "@id"
                    },
                    "activity": {
                      "@id": "prov:activity",
                      "@type": "@id"
                    }
                  },
                  "@id": "prov:qualifiedCommunication",
                  "@type": "@id"
                },
                "qualifiedStart": {
                  "@context": {
                    "atTime": {
                      "@id": "prov:atTime",
                      "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
                    },
                    "entity": {
                      "@id": "prov:entity",
                      "@type": "@id"
                    }
                  },
                  "@id": "prov:qualifiedStart",
                  "@type": "@id"
                },
                "qualifiedEnd": {
                  "@context": {
                    "atTime": {
                      "@id": "prov:atTime",
                      "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
                    },
                    "entity": {
                      "@id": "prov:entity",
                      "@type": "@id"
                    }
                  },
                  "@id": "prov:qualifiedEnd",
                  "@type": "@id"
                },
                "qualifiedAssociation": {
                  "@context": {
                    "hadRole": {
                      "@id": "prov:hadRole",
                      "@type": "@id"
                    },
                    "hadPlan": {
                      "@id": "prov:hadPlan",
                      "@type": "@id"
                    }
                  },
                  "@id": "prov:qualifiedAssociation",
                  "@type": "@id"
                }
              },
              "@id": "prov:hadActivity",
              "@type": "@id"
            }
          },
          "@id": "prov:qualifiedDelegation",
          "@type": "@id"
        }
      },
      "@id": "prov:wasRevisionOf",
      "@type": "@id"
    },
    "mentionOf": {
      "@context": {
        "type": "dct:type",
        "agentType": "@type",
        "name": "rdfs:label",
        "actedOnBehalfOf": {
          "@id": "prov:actedOnBehalfOf",
          "@type": "@id"
        },
        "qualifiedDelegation": {
          "@context": {
            "agent": {
              "@id": "prov:agent",
              "@type": "@id"
            },
            "hadActivity": {
              "@context": {
                "activityType": "@type",
                "endedAtTime": {
                  "@id": "prov:endedAtTime",
                  "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
                },
                "wasAssociatedWith": {
                  "@id": "prov:wasAssociatedWith",
                  "@type": "@id"
                },
                "wasInformedBy": {
                  "@id": "prov:wasInformedBy",
                  "@type": "@id"
                },
                "used": {
                  "@id": "prov:used",
                  "@type": "@id"
                },
                "wasStartedBy": {
                  "@id": "prov:wasStartedBy",
                  "@type": "@id"
                },
                "wasEndedBy": {
                  "@id": "prov:wasEndedBy",
                  "@type": "@id"
                },
                "invalidated": {
                  "@id": "prov:invalidated",
                  "@type": "@id"
                },
                "generated": {
                  "@id": "prov:generated",
                  "@type": "@id"
                },
                "qualifiedUsage": {
                  "@context": {
                    "atTime": {
                      "@id": "prov:atTime",
                      "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
                    },
                    "entity": {
                      "@id": "prov:entity",
                      "@type": "@id"
                    }
                  },
                  "@id": "prov:qualifiedUsage",
                  "@type": "@id"
                },
                "qualifiedCommunication": {
                  "@context": {
                    "atTime": {
                      "@id": "prov:atTime",
                      "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
                    },
                    "hadRole": {
                      "@id": "prov:hadRole",
                      "@type": "@id"
                    },
                    "influencer": {
                      "@id": "prov:influencer",
                      "@type": "@id"
                    },
                    "activity": {
                      "@id": "prov:activity",
                      "@type": "@id"
                    }
                  },
                  "@id": "prov:qualifiedCommunication",
                  "@type": "@id"
                },
                "qualifiedStart": {
                  "@context": {
                    "atTime": {
                      "@id": "prov:atTime",
                      "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
                    },
                    "entity": {
                      "@id": "prov:entity",
                      "@type": "@id"
                    }
                  },
                  "@id": "prov:qualifiedStart",
                  "@type": "@id"
                },
                "qualifiedEnd": {
                  "@context": {
                    "atTime": {
                      "@id": "prov:atTime",
                      "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
                    },
                    "entity": {
                      "@id": "prov:entity",
                      "@type": "@id"
                    }
                  },
                  "@id": "prov:qualifiedEnd",
                  "@type": "@id"
                },
                "qualifiedAssociation": {
                  "@context": {
                    "hadRole": {
                      "@id": "prov:hadRole",
                      "@type": "@id"
                    },
                    "hadPlan": {
                      "@id": "prov:hadPlan",
                      "@type": "@id"
                    }
                  },
                  "@id": "prov:qualifiedAssociation",
                  "@type": "@id"
                }
              },
              "@id": "prov:hadActivity",
              "@type": "@id"
            }
          },
          "@id": "prov:qualifiedDelegation",
          "@type": "@id"
        }
      },
      "@id": "prov:mentionOf",
      "@type": "@id"
    },
    "atLocation": {
      "@id": "prov:atLocation",
      "@type": "@id"
    },
    "qualifiedGeneration": {
      "@context": {
        "atTime": {
          "@id": "prov:atTime",
          "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
        },
        "hadRole": {
          "@id": "prov:hadRole",
          "@type": "@id"
        },
        "influencer": {
          "@id": "prov:influencer",
          "@type": "@id"
        },
        "hadActivity": {
          "@context": {
            "activityType": "@type",
            "endedAtTime": {
              "@id": "prov:endedAtTime",
              "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
            },
            "wasAssociatedWith": {
              "@context": {
                "type": "dct:type",
                "agentType": "@type",
                "name": "rdfs:label",
                "actedOnBehalfOf": {
                  "@id": "prov:actedOnBehalfOf",
                  "@type": "@id"
                },
                "qualifiedDelegation": {
                  "@context": {
                    "agent": {
                      "@id": "prov:agent",
                      "@type": "@id"
                    }
                  },
                  "@id": "prov:qualifiedDelegation",
                  "@type": "@id"
                }
              },
              "@id": "prov:wasAssociatedWith",
              "@type": "@id"
            },
            "wasInformedBy": {
              "@id": "prov:wasInformedBy",
              "@type": "@id"
            },
            "used": {
              "@id": "prov:used",
              "@type": "@id"
            },
            "wasStartedBy": {
              "@id": "prov:wasStartedBy",
              "@type": "@id"
            },
            "wasEndedBy": {
              "@id": "prov:wasEndedBy",
              "@type": "@id"
            },
            "invalidated": {
              "@id": "prov:invalidated",
              "@type": "@id"
            },
            "generated": {
              "@id": "prov:generated",
              "@type": "@id"
            },
            "qualifiedUsage": {
              "@context": {
                "entity": {
                  "@id": "prov:entity",
                  "@type": "@id"
                }
              },
              "@id": "prov:qualifiedUsage",
              "@type": "@id"
            },
            "qualifiedCommunication": {
              "@id": "prov:qualifiedCommunication",
              "@type": "@id"
            },
            "qualifiedStart": {
              "@context": {
                "entity": {
                  "@id": "prov:entity",
                  "@type": "@id"
                }
              },
              "@id": "prov:qualifiedStart",
              "@type": "@id"
            },
            "qualifiedEnd": {
              "@context": {
                "entity": {
                  "@id": "prov:entity",
                  "@type": "@id"
                }
              },
              "@id": "prov:qualifiedEnd",
              "@type": "@id"
            },
            "qualifiedAssociation": {
              "@context": {
                "agent": {
                  "@context": {
                    "agentType": "@type",
                    "name": "rdfs:label",
                    "actedOnBehalfOf": {
                      "@context": {
                        "type": "dct:type"
                      },
                      "@id": "prov:actedOnBehalfOf",
                      "@type": "@id"
                    },
                    "qualifiedDelegation": {
                      "@id": "prov:qualifiedDelegation",
                      "@type": "@id"
                    }
                  },
                  "@id": "prov:agent",
                  "@type": "@id"
                },
                "hadPlan": {
                  "@id": "prov:hadPlan",
                  "@type": "@id"
                }
              },
              "@id": "prov:qualifiedAssociation",
              "@type": "@id"
            }
          },
          "@id": "prov:hadActivity",
          "@type": "@id"
        },
        "activity": {
          "@context": {
            "activityType": "@type",
            "endedAtTime": {
              "@id": "prov:endedAtTime",
              "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
            },
            "wasAssociatedWith": {
              "@context": {
                "type": "dct:type",
                "agentType": "@type",
                "name": "rdfs:label",
                "actedOnBehalfOf": {
                  "@id": "prov:actedOnBehalfOf",
                  "@type": "@id"
                },
                "qualifiedDelegation": {
                  "@context": {
                    "agent": {
                      "@id": "prov:agent",
                      "@type": "@id"
                    }
                  },
                  "@id": "prov:qualifiedDelegation",
                  "@type": "@id"
                }
              },
              "@id": "prov:wasAssociatedWith",
              "@type": "@id"
            },
            "wasInformedBy": {
              "@id": "prov:wasInformedBy",
              "@type": "@id"
            },
            "used": {
              "@id": "prov:used",
              "@type": "@id"
            },
            "wasStartedBy": {
              "@id": "prov:wasStartedBy",
              "@type": "@id"
            },
            "wasEndedBy": {
              "@id": "prov:wasEndedBy",
              "@type": "@id"
            },
            "invalidated": {
              "@id": "prov:invalidated",
              "@type": "@id"
            },
            "generated": {
              "@id": "prov:generated",
              "@type": "@id"
            },
            "qualifiedUsage": {
              "@context": {
                "entity": {
                  "@id": "prov:entity",
                  "@type": "@id"
                }
              },
              "@id": "prov:qualifiedUsage",
              "@type": "@id"
            },
            "qualifiedCommunication": {
              "@id": "prov:qualifiedCommunication",
              "@type": "@id"
            },
            "qualifiedStart": {
              "@context": {
                "entity": {
                  "@id": "prov:entity",
                  "@type": "@id"
                }
              },
              "@id": "prov:qualifiedStart",
              "@type": "@id"
            },
            "qualifiedEnd": {
              "@context": {
                "entity": {
                  "@id": "prov:entity",
                  "@type": "@id"
                }
              },
              "@id": "prov:qualifiedEnd",
              "@type": "@id"
            },
            "qualifiedAssociation": {
              "@context": {
                "agent": {
                  "@context": {
                    "agentType": "@type",
                    "name": "rdfs:label",
                    "actedOnBehalfOf": {
                      "@context": {
                        "type": "dct:type"
                      },
                      "@id": "prov:actedOnBehalfOf",
                      "@type": "@id"
                    },
                    "qualifiedDelegation": {
                      "@id": "prov:qualifiedDelegation",
                      "@type": "@id"
                    }
                  },
                  "@id": "prov:agent",
                  "@type": "@id"
                },
                "hadPlan": {
                  "@id": "prov:hadPlan",
                  "@type": "@id"
                }
              },
              "@id": "prov:qualifiedAssociation",
              "@type": "@id"
            }
          },
          "@id": "prov:activity",
          "@type": "@id"
        }
      },
      "@id": "prov:qualifiedGeneration",
      "@type": "@id"
    },
    "qualifiedInvalidation": {
      "@context": {
        "atTime": {
          "@id": "prov:atTime",
          "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
        },
        "hadRole": {
          "@id": "prov:hadRole",
          "@type": "@id"
        },
        "influencer": {
          "@id": "prov:influencer",
          "@type": "@id"
        },
        "hadActivity": {
          "@context": {
            "activityType": "@type",
            "endedAtTime": {
              "@id": "prov:endedAtTime",
              "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
            },
            "wasAssociatedWith": {
              "@context": {
                "type": "dct:type",
                "agentType": "@type",
                "name": "rdfs:label",
                "actedOnBehalfOf": {
                  "@id": "prov:actedOnBehalfOf",
                  "@type": "@id"
                },
                "qualifiedDelegation": {
                  "@context": {
                    "agent": {
                      "@id": "prov:agent",
                      "@type": "@id"
                    }
                  },
                  "@id": "prov:qualifiedDelegation",
                  "@type": "@id"
                }
              },
              "@id": "prov:wasAssociatedWith",
              "@type": "@id"
            },
            "wasInformedBy": {
              "@id": "prov:wasInformedBy",
              "@type": "@id"
            },
            "used": {
              "@id": "prov:used",
              "@type": "@id"
            },
            "wasStartedBy": {
              "@id": "prov:wasStartedBy",
              "@type": "@id"
            },
            "wasEndedBy": {
              "@id": "prov:wasEndedBy",
              "@type": "@id"
            },
            "invalidated": {
              "@id": "prov:invalidated",
              "@type": "@id"
            },
            "generated": {
              "@id": "prov:generated",
              "@type": "@id"
            },
            "qualifiedUsage": {
              "@context": {
                "entity": {
                  "@id": "prov:entity",
                  "@type": "@id"
                }
              },
              "@id": "prov:qualifiedUsage",
              "@type": "@id"
            },
            "qualifiedCommunication": {
              "@id": "prov:qualifiedCommunication",
              "@type": "@id"
            },
            "qualifiedStart": {
              "@context": {
                "entity": {
                  "@id": "prov:entity",
                  "@type": "@id"
                }
              },
              "@id": "prov:qualifiedStart",
              "@type": "@id"
            },
            "qualifiedEnd": {
              "@context": {
                "entity": {
                  "@id": "prov:entity",
                  "@type": "@id"
                }
              },
              "@id": "prov:qualifiedEnd",
              "@type": "@id"
            },
            "qualifiedAssociation": {
              "@context": {
                "agent": {
                  "@context": {
                    "agentType": "@type",
                    "name": "rdfs:label",
                    "actedOnBehalfOf": {
                      "@context": {
                        "type": "dct:type"
                      },
                      "@id": "prov:actedOnBehalfOf",
                      "@type": "@id"
                    },
                    "qualifiedDelegation": {
                      "@id": "prov:qualifiedDelegation",
                      "@type": "@id"
                    }
                  },
                  "@id": "prov:agent",
                  "@type": "@id"
                },
                "hadPlan": {
                  "@id": "prov:hadPlan",
                  "@type": "@id"
                }
              },
              "@id": "prov:qualifiedAssociation",
              "@type": "@id"
            }
          },
          "@id": "prov:hadActivity",
          "@type": "@id"
        },
        "activity": {
          "@context": {
            "activityType": "@type",
            "endedAtTime": {
              "@id": "prov:endedAtTime",
              "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
            },
            "wasAssociatedWith": {
              "@context": {
                "type": "dct:type",
                "agentType": "@type",
                "name": "rdfs:label",
                "actedOnBehalfOf": {
                  "@id": "prov:actedOnBehalfOf",
                  "@type": "@id"
                },
                "qualifiedDelegation": {
                  "@context": {
                    "agent": {
                      "@id": "prov:agent",
                      "@type": "@id"
                    }
                  },
                  "@id": "prov:qualifiedDelegation",
                  "@type": "@id"
                }
              },
              "@id": "prov:wasAssociatedWith",
              "@type": "@id"
            },
            "wasInformedBy": {
              "@id": "prov:wasInformedBy",
              "@type": "@id"
            },
            "used": {
              "@id": "prov:used",
              "@type": "@id"
            },
            "wasStartedBy": {
              "@id": "prov:wasStartedBy",
              "@type": "@id"
            },
            "wasEndedBy": {
              "@id": "prov:wasEndedBy",
              "@type": "@id"
            },
            "invalidated": {
              "@id": "prov:invalidated",
              "@type": "@id"
            },
            "generated": {
              "@id": "prov:generated",
              "@type": "@id"
            },
            "qualifiedUsage": {
              "@context": {
                "entity": {
                  "@id": "prov:entity",
                  "@type": "@id"
                }
              },
              "@id": "prov:qualifiedUsage",
              "@type": "@id"
            },
            "qualifiedCommunication": {
              "@id": "prov:qualifiedCommunication",
              "@type": "@id"
            },
            "qualifiedStart": {
              "@context": {
                "entity": {
                  "@id": "prov:entity",
                  "@type": "@id"
                }
              },
              "@id": "prov:qualifiedStart",
              "@type": "@id"
            },
            "qualifiedEnd": {
              "@context": {
                "entity": {
                  "@id": "prov:entity",
                  "@type": "@id"
                }
              },
              "@id": "prov:qualifiedEnd",
              "@type": "@id"
            },
            "qualifiedAssociation": {
              "@context": {
                "agent": {
                  "@context": {
                    "agentType": "@type",
                    "name": "rdfs:label",
                    "actedOnBehalfOf": {
                      "@context": {
                        "type": "dct:type"
                      },
                      "@id": "prov:actedOnBehalfOf",
                      "@type": "@id"
                    },
                    "qualifiedDelegation": {
                      "@id": "prov:qualifiedDelegation",
                      "@type": "@id"
                    }
                  },
                  "@id": "prov:agent",
                  "@type": "@id"
                },
                "hadPlan": {
                  "@id": "prov:hadPlan",
                  "@type": "@id"
                }
              },
              "@id": "prov:qualifiedAssociation",
              "@type": "@id"
            }
          },
          "@id": "prov:activity",
          "@type": "@id"
        }
      },
      "@id": "prov:qualifiedInvalidation",
      "@type": "@id"
    },
    "qualifiedDerivation": {
      "@context": {
        "hadGeneration": {
          "@context": {
            "atTime": {
              "@id": "prov:atTime",
              "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
            },
            "hadRole": {
              "@id": "prov:hadRole",
              "@type": "@id"
            },
            "influencer": {
              "@id": "prov:influencer",
              "@type": "@id"
            },
            "activity": {
              "@context": {
                "activityType": "@type",
                "endedAtTime": {
                  "@id": "prov:endedAtTime",
                  "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
                },
                "wasAssociatedWith": {
                  "@context": {
                    "type": "dct:type",
                    "agentType": "@type",
                    "name": "rdfs:label",
                    "actedOnBehalfOf": {
                      "@id": "prov:actedOnBehalfOf",
                      "@type": "@id"
                    },
                    "qualifiedDelegation": {
                      "@context": {
                        "agent": {
                          "@id": "prov:agent",
                          "@type": "@id"
                        }
                      },
                      "@id": "prov:qualifiedDelegation",
                      "@type": "@id"
                    }
                  },
                  "@id": "prov:wasAssociatedWith",
                  "@type": "@id"
                },
                "wasInformedBy": {
                  "@id": "prov:wasInformedBy",
                  "@type": "@id"
                },
                "used": {
                  "@id": "prov:used",
                  "@type": "@id"
                },
                "wasStartedBy": {
                  "@id": "prov:wasStartedBy",
                  "@type": "@id"
                },
                "wasEndedBy": {
                  "@id": "prov:wasEndedBy",
                  "@type": "@id"
                },
                "invalidated": {
                  "@id": "prov:invalidated",
                  "@type": "@id"
                },
                "generated": {
                  "@id": "prov:generated",
                  "@type": "@id"
                },
                "qualifiedUsage": {
                  "@id": "prov:qualifiedUsage",
                  "@type": "@id"
                },
                "qualifiedCommunication": {
                  "@id": "prov:qualifiedCommunication",
                  "@type": "@id"
                },
                "qualifiedStart": {
                  "@id": "prov:qualifiedStart",
                  "@type": "@id"
                },
                "qualifiedEnd": {
                  "@id": "prov:qualifiedEnd",
                  "@type": "@id"
                },
                "qualifiedAssociation": {
                  "@context": {
                    "agent": {
                      "@context": {
                        "agentType": "@type",
                        "name": "rdfs:label",
                        "actedOnBehalfOf": {
                          "@context": {
                            "type": "dct:type"
                          },
                          "@id": "prov:actedOnBehalfOf",
                          "@type": "@id"
                        },
                        "qualifiedDelegation": {
                          "@id": "prov:qualifiedDelegation",
                          "@type": "@id"
                        }
                      },
                      "@id": "prov:agent",
                      "@type": "@id"
                    },
                    "hadPlan": {
                      "@id": "prov:hadPlan",
                      "@type": "@id"
                    }
                  },
                  "@id": "prov:qualifiedAssociation",
                  "@type": "@id"
                }
              },
              "@id": "prov:activity",
              "@type": "@id"
            }
          },
          "@id": "prov:hadGeneration",
          "@type": "@id"
        },
        "hadActivity": {
          "@context": {
            "activityType": "@type",
            "endedAtTime": {
              "@id": "prov:endedAtTime",
              "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
            },
            "wasAssociatedWith": {
              "@context": {
                "type": "dct:type",
                "agentType": "@type",
                "name": "rdfs:label",
                "actedOnBehalfOf": {
                  "@id": "prov:actedOnBehalfOf",
                  "@type": "@id"
                },
                "qualifiedDelegation": {
                  "@context": {
                    "agent": {
                      "@id": "prov:agent",
                      "@type": "@id"
                    }
                  },
                  "@id": "prov:qualifiedDelegation",
                  "@type": "@id"
                }
              },
              "@id": "prov:wasAssociatedWith",
              "@type": "@id"
            },
            "wasInformedBy": {
              "@id": "prov:wasInformedBy",
              "@type": "@id"
            },
            "used": {
              "@id": "prov:used",
              "@type": "@id"
            },
            "wasStartedBy": {
              "@id": "prov:wasStartedBy",
              "@type": "@id"
            },
            "wasEndedBy": {
              "@id": "prov:wasEndedBy",
              "@type": "@id"
            },
            "invalidated": {
              "@id": "prov:invalidated",
              "@type": "@id"
            },
            "generated": {
              "@id": "prov:generated",
              "@type": "@id"
            },
            "qualifiedUsage": {
              "@context": {
                "atTime": {
                  "@id": "prov:atTime",
                  "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
                }
              },
              "@id": "prov:qualifiedUsage",
              "@type": "@id"
            },
            "qualifiedCommunication": {
              "@context": {
                "atTime": {
                  "@id": "prov:atTime",
                  "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
                },
                "hadRole": {
                  "@id": "prov:hadRole",
                  "@type": "@id"
                },
                "influencer": {
                  "@id": "prov:influencer",
                  "@type": "@id"
                },
                "activity": {
                  "@id": "prov:activity",
                  "@type": "@id"
                }
              },
              "@id": "prov:qualifiedCommunication",
              "@type": "@id"
            },
            "qualifiedStart": {
              "@context": {
                "atTime": {
                  "@id": "prov:atTime",
                  "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
                }
              },
              "@id": "prov:qualifiedStart",
              "@type": "@id"
            },
            "qualifiedEnd": {
              "@context": {
                "atTime": {
                  "@id": "prov:atTime",
                  "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
                }
              },
              "@id": "prov:qualifiedEnd",
              "@type": "@id"
            },
            "qualifiedAssociation": {
              "@context": {
                "agent": {
                  "@context": {
                    "agentType": "@type",
                    "name": "rdfs:label",
                    "actedOnBehalfOf": {
                      "@context": {
                        "type": "dct:type"
                      },
                      "@id": "prov:actedOnBehalfOf",
                      "@type": "@id"
                    },
                    "qualifiedDelegation": {
                      "@id": "prov:qualifiedDelegation",
                      "@type": "@id"
                    }
                  },
                  "@id": "prov:agent",
                  "@type": "@id"
                },
                "hadRole": {
                  "@id": "prov:hadRole",
                  "@type": "@id"
                },
                "hadPlan": {
                  "@id": "prov:hadPlan",
                  "@type": "@id"
                }
              },
              "@id": "prov:qualifiedAssociation",
              "@type": "@id"
            }
          },
          "@id": "prov:hadActivity",
          "@type": "@id"
        },
        "hadUsage": {
          "@context": {
            "atTime": {
              "@id": "prov:atTime",
              "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
            }
          },
          "@id": "prov:hadUsage",
          "@type": "@id"
        },
        "entity": {
          "@id": "prov:entity",
          "@type": "@id"
        }
      },
      "@id": "prov:qualifiedDerivation",
      "@type": "@id"
    },
    "wasInfluencedBy": {
      "@context": {
        "activityType": "@type",
        "endedAtTime": {
          "@id": "prov:endedAtTime",
          "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
        },
        "wasAssociatedWith": {
          "@id": "prov:wasAssociatedWith",
          "@type": "@id"
        },
        "wasInformedBy": {
          "@id": "prov:wasInformedBy",
          "@type": "@id"
        },
        "used": {
          "@id": "prov:used",
          "@type": "@id"
        },
        "wasStartedBy": {
          "@id": "prov:wasStartedBy",
          "@type": "@id"
        },
        "wasEndedBy": {
          "@id": "prov:wasEndedBy",
          "@type": "@id"
        },
        "invalidated": {
          "@id": "prov:invalidated",
          "@type": "@id"
        },
        "generated": {
          "@id": "prov:generated",
          "@type": "@id"
        },
        "qualifiedUsage": {
          "@context": {
            "atTime": {
              "@id": "prov:atTime",
              "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
            },
            "entity": {
              "@id": "prov:entity",
              "@type": "@id"
            }
          },
          "@id": "prov:qualifiedUsage",
          "@type": "@id"
        },
        "qualifiedCommunication": {
          "@context": {
            "atTime": {
              "@id": "prov:atTime",
              "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
            },
            "hadRole": {
              "@id": "prov:hadRole",
              "@type": "@id"
            },
            "influencer": {
              "@id": "prov:influencer",
              "@type": "@id"
            },
            "hadActivity": {
              "@id": "prov:hadActivity",
              "@type": "@id"
            },
            "activity": {
              "@id": "prov:activity",
              "@type": "@id"
            }
          },
          "@id": "prov:qualifiedCommunication",
          "@type": "@id"
        },
        "qualifiedStart": {
          "@context": {
            "atTime": {
              "@id": "prov:atTime",
              "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
            },
            "entity": {
              "@id": "prov:entity",
              "@type": "@id"
            },
            "hadActivity": {
              "@id": "prov:hadActivity",
              "@type": "@id"
            }
          },
          "@id": "prov:qualifiedStart",
          "@type": "@id"
        },
        "qualifiedEnd": {
          "@context": {
            "atTime": {
              "@id": "prov:atTime",
              "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
            },
            "entity": {
              "@id": "prov:entity",
              "@type": "@id"
            },
            "hadActivity": {
              "@id": "prov:hadActivity",
              "@type": "@id"
            }
          },
          "@id": "prov:qualifiedEnd",
          "@type": "@id"
        },
        "qualifiedAssociation": {
          "@context": {
            "agent": {
              "@id": "prov:agent",
              "@type": "@id"
            },
            "hadRole": {
              "@id": "prov:hadRole",
              "@type": "@id"
            },
            "hadPlan": {
              "@id": "prov:hadPlan",
              "@type": "@id"
            }
          },
          "@id": "prov:qualifiedAssociation",
          "@type": "@id"
        },
        "type": "dct:type",
        "agentType": "@type",
        "name": "rdfs:label",
        "actedOnBehalfOf": {
          "@id": "prov:actedOnBehalfOf",
          "@type": "@id"
        },
        "qualifiedDelegation": {
          "@context": {
            "agent": {
              "@id": "prov:agent",
              "@type": "@id"
            },
            "hadActivity": {
              "@id": "prov:hadActivity",
              "@type": "@id"
            }
          },
          "@id": "prov:qualifiedDelegation",
          "@type": "@id"
        }
      },
      "@id": "prov:wasInfluencedBy",
      "@type": "@id"
    },
    "qualifiedInfluence": {
      "@context": {
        "influencer": {
          "@context": {
            "activityType": "@type",
            "endedAtTime": {
              "@id": "prov:endedAtTime",
              "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
            },
            "wasAssociatedWith": {
              "@id": "prov:wasAssociatedWith",
              "@type": "@id"
            },
            "wasInformedBy": {
              "@id": "prov:wasInformedBy",
              "@type": "@id"
            },
            "used": {
              "@id": "prov:used",
              "@type": "@id"
            },
            "wasStartedBy": {
              "@id": "prov:wasStartedBy",
              "@type": "@id"
            },
            "wasEndedBy": {
              "@id": "prov:wasEndedBy",
              "@type": "@id"
            },
            "invalidated": {
              "@id": "prov:invalidated",
              "@type": "@id"
            },
            "generated": {
              "@id": "prov:generated",
              "@type": "@id"
            },
            "qualifiedUsage": {
              "@context": {
                "atTime": {
                  "@id": "prov:atTime",
                  "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
                }
              },
              "@id": "prov:qualifiedUsage",
              "@type": "@id"
            },
            "qualifiedCommunication": {
              "@context": {
                "atTime": {
                  "@id": "prov:atTime",
                  "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
                },
                "hadRole": {
                  "@id": "prov:hadRole",
                  "@type": "@id"
                },
                "hadActivity": {
                  "@id": "prov:hadActivity",
                  "@type": "@id"
                }
              },
              "@id": "prov:qualifiedCommunication",
              "@type": "@id"
            },
            "qualifiedStart": {
              "@context": {
                "atTime": {
                  "@id": "prov:atTime",
                  "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
                },
                "hadActivity": {
                  "@id": "prov:hadActivity",
                  "@type": "@id"
                }
              },
              "@id": "prov:qualifiedStart",
              "@type": "@id"
            },
            "qualifiedEnd": {
              "@context": {
                "atTime": {
                  "@id": "prov:atTime",
                  "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
                },
                "hadActivity": {
                  "@id": "prov:hadActivity",
                  "@type": "@id"
                }
              },
              "@id": "prov:qualifiedEnd",
              "@type": "@id"
            },
            "qualifiedAssociation": {
              "@context": {
                "hadRole": {
                  "@id": "prov:hadRole",
                  "@type": "@id"
                },
                "hadPlan": {
                  "@id": "prov:hadPlan",
                  "@type": "@id"
                }
              },
              "@id": "prov:qualifiedAssociation",
              "@type": "@id"
            },
            "type": "dct:type",
            "agentType": "@type",
            "name": "rdfs:label",
            "actedOnBehalfOf": {
              "@id": "prov:actedOnBehalfOf",
              "@type": "@id"
            },
            "qualifiedDelegation": {
              "@context": {
                "hadActivity": {
                  "@id": "prov:hadActivity",
                  "@type": "@id"
                }
              },
              "@id": "prov:qualifiedDelegation",
              "@type": "@id"
            }
          },
          "@id": "prov:influencer",
          "@type": "@id"
        },
        "entity": {
          "@id": "prov:entity",
          "@type": "@id"
        },
        "activity": {
          "@context": {
            "activityType": "@type",
            "endedAtTime": {
              "@id": "prov:endedAtTime",
              "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
            },
            "wasAssociatedWith": {
              "@context": {
                "type": "dct:type",
                "agentType": "@type",
                "name": "rdfs:label",
                "actedOnBehalfOf": {
                  "@id": "prov:actedOnBehalfOf",
                  "@type": "@id"
                },
                "qualifiedDelegation": {
                  "@context": {
                    "hadActivity": {
                      "@id": "prov:hadActivity",
                      "@type": "@id"
                    }
                  },
                  "@id": "prov:qualifiedDelegation",
                  "@type": "@id"
                }
              },
              "@id": "prov:wasAssociatedWith",
              "@type": "@id"
            },
            "wasInformedBy": {
              "@id": "prov:wasInformedBy",
              "@type": "@id"
            },
            "used": {
              "@id": "prov:used",
              "@type": "@id"
            },
            "wasStartedBy": {
              "@id": "prov:wasStartedBy",
              "@type": "@id"
            },
            "wasEndedBy": {
              "@id": "prov:wasEndedBy",
              "@type": "@id"
            },
            "invalidated": {
              "@id": "prov:invalidated",
              "@type": "@id"
            },
            "generated": {
              "@id": "prov:generated",
              "@type": "@id"
            },
            "qualifiedUsage": {
              "@context": {
                "atTime": {
                  "@id": "prov:atTime",
                  "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
                }
              },
              "@id": "prov:qualifiedUsage",
              "@type": "@id"
            },
            "qualifiedCommunication": {
              "@context": {
                "atTime": {
                  "@id": "prov:atTime",
                  "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
                },
                "hadRole": {
                  "@id": "prov:hadRole",
                  "@type": "@id"
                },
                "hadActivity": {
                  "@id": "prov:hadActivity",
                  "@type": "@id"
                }
              },
              "@id": "prov:qualifiedCommunication",
              "@type": "@id"
            },
            "qualifiedStart": {
              "@context": {
                "atTime": {
                  "@id": "prov:atTime",
                  "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
                },
                "hadActivity": {
                  "@id": "prov:hadActivity",
                  "@type": "@id"
                }
              },
              "@id": "prov:qualifiedStart",
              "@type": "@id"
            },
            "qualifiedEnd": {
              "@context": {
                "atTime": {
                  "@id": "prov:atTime",
                  "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
                },
                "hadActivity": {
                  "@id": "prov:hadActivity",
                  "@type": "@id"
                }
              },
              "@id": "prov:qualifiedEnd",
              "@type": "@id"
            },
            "qualifiedAssociation": {
              "@context": {
                "agent": {
                  "@context": {
                    "agentType": "@type",
                    "name": "rdfs:label",
                    "actedOnBehalfOf": {
                      "@context": {
                        "type": "dct:type"
                      },
                      "@id": "prov:actedOnBehalfOf",
                      "@type": "@id"
                    },
                    "qualifiedDelegation": {
                      "@context": {
                        "hadActivity": {
                          "@id": "prov:hadActivity",
                          "@type": "@id"
                        }
                      },
                      "@id": "prov:qualifiedDelegation",
                      "@type": "@id"
                    }
                  },
                  "@id": "prov:agent",
                  "@type": "@id"
                },
                "hadRole": {
                  "@id": "prov:hadRole",
                  "@type": "@id"
                },
                "hadPlan": {
                  "@id": "prov:hadPlan",
                  "@type": "@id"
                }
              },
              "@id": "prov:qualifiedAssociation",
              "@type": "@id"
            }
          },
          "@id": "prov:activity",
          "@type": "@id"
        },
        "agent": {
          "@context": {
            "type": "dct:type",
            "agentType": "@type",
            "name": "rdfs:label",
            "actedOnBehalfOf": {
              "@id": "prov:actedOnBehalfOf",
              "@type": "@id"
            },
            "qualifiedDelegation": {
              "@context": {
                "hadActivity": {
                  "@context": {
                    "activityType": "@type",
                    "endedAtTime": {
                      "@id": "prov:endedAtTime",
                      "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
                    },
                    "wasAssociatedWith": {
                      "@id": "prov:wasAssociatedWith",
                      "@type": "@id"
                    },
                    "wasInformedBy": {
                      "@id": "prov:wasInformedBy",
                      "@type": "@id"
                    },
                    "used": {
                      "@id": "prov:used",
                      "@type": "@id"
                    },
                    "wasStartedBy": {
                      "@id": "prov:wasStartedBy",
                      "@type": "@id"
                    },
                    "wasEndedBy": {
                      "@id": "prov:wasEndedBy",
                      "@type": "@id"
                    },
                    "invalidated": {
                      "@id": "prov:invalidated",
                      "@type": "@id"
                    },
                    "generated": {
                      "@id": "prov:generated",
                      "@type": "@id"
                    },
                    "qualifiedUsage": {
                      "@context": {
                        "atTime": {
                          "@id": "prov:atTime",
                          "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
                        }
                      },
                      "@id": "prov:qualifiedUsage",
                      "@type": "@id"
                    },
                    "qualifiedCommunication": {
                      "@context": {
                        "atTime": {
                          "@id": "prov:atTime",
                          "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
                        },
                        "hadRole": {
                          "@id": "prov:hadRole",
                          "@type": "@id"
                        }
                      },
                      "@id": "prov:qualifiedCommunication",
                      "@type": "@id"
                    },
                    "qualifiedStart": {
                      "@context": {
                        "atTime": {
                          "@id": "prov:atTime",
                          "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
                        }
                      },
                      "@id": "prov:qualifiedStart",
                      "@type": "@id"
                    },
                    "qualifiedEnd": {
                      "@context": {
                        "atTime": {
                          "@id": "prov:atTime",
                          "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
                        }
                      },
                      "@id": "prov:qualifiedEnd",
                      "@type": "@id"
                    },
                    "qualifiedAssociation": {
                      "@context": {
                        "hadRole": {
                          "@id": "prov:hadRole",
                          "@type": "@id"
                        },
                        "hadPlan": {
                          "@id": "prov:hadPlan",
                          "@type": "@id"
                        }
                      },
                      "@id": "prov:qualifiedAssociation",
                      "@type": "@id"
                    }
                  },
                  "@id": "prov:hadActivity",
                  "@type": "@id"
                }
              },
              "@id": "prov:qualifiedDelegation",
              "@type": "@id"
            }
          },
          "@id": "prov:agent",
          "@type": "@id"
        }
      },
      "@id": "prov:qualifiedInfluence",
      "@type": "@id"
    },
    "provType": "@type",
    "hadMember": {
      "@context": {},
      "@id": "prov:hadMember",
      "@type": "@id"
    },
    "Activity": "prov:Activity",
    "ActivityInfluence": "prov:ActivityInfluence",
    "Agent": "prov:Agent",
    "AgentInfluence": "prov:AgentInfluence",
    "Association": "prov:Association",
    "Attribution": "prov:Attribution",
    "Bundle": "prov:Bundle",
    "Collection": "prov:Collection",
    "Communication": "prov:Communication",
    "Delegation": "prov:Delegation",
    "Derivation": "prov:Derivation",
    "EmptyCollection": "prov:EmptyCollection",
    "End": "prov:End",
    "Entity": "prov:Entity",
    "EntityInfluence": "prov:EntityInfluence",
    "Generation": "prov:Generation",
    "Influence": "prov:Influence",
    "InstantaneousEvent": "prov:InstantaneousEvent",
    "Invalidation": "prov:Invalidation",
    "Location": "prov:Location",
    "Organization": "prov:Organization",
    "Person": "prov:Person",
    "Plan": "prov:Plan",
    "PrimarySource": "prov:PrimarySource",
    "Quotation": "prov:Quotation",
    "Revision": "prov:Revision",
    "Role": "prov:Role",
    "SoftwareAgent": "prov:SoftwareAgent",
    "Start": "prov:Start",
    "Usage": "prov:Usage",
    "ServiceDescription": "prov:ServiceDescription",
    "DirectQueryService": "prov:DirectQueryService",
    "Accept": "prov:Accept",
    "Contribute": "prov:Contribute",
    "Contributor": "prov:Contributor",
    "Copyright": "prov:Copyright",
    "Create": "prov:Create",
    "Creator": "prov:Creator",
    "Modify": "prov:Modify",
    "Publish": "prov:Publish",
    "Publisher": "prov:Publisher",
    "Replace": "prov:Replace",
    "RightsAssignment": "prov:RightsAssignment",
    "RightsHolder": "prov:RightsHolder",
    "Submit": "prov:Submit",
    "Dictionary": "prov:Dictionary",
    "EmptyDictionary": "prov:EmptyDictionary",
    "KeyEntityPair": "prov:KeyEntityPair",
    "Insertion": "prov:Insertion",
    "Removal": "prov:Removal",
    "generatedAtTime": {
      "@id": "prov:generatedAtTime",
      "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
    },
    "invalidatedAtTime": {
      "@id": "prov:invalidatedAtTime",
      "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
    },
    "startedAtTime": {
      "@id": "prov:startedAtTime",
      "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
    },
    "value": "prov:value",
    "provenanceUriTemplate": "prov:provenanceUriTemplate",
    "pairKey": {
      "@id": "prov:pairKey",
      "@type": "http://www.w3.org/2000/01/rdf-schema#Literal"
    },
    "removedKey": {
      "@id": "prov:removedKey",
      "@type": "http://www.w3.org/2000/01/rdf-schema#Literal"
    },
    "influenced": {
      "@id": "prov:influenced",
      "@type": "@id"
    },
    "qualifiedPrimarySource": {
      "@id": "prov:qualifiedPrimarySource",
      "@type": "@id"
    },
    "qualifiedQuotation": {
      "@id": "prov:qualifiedQuotation",
      "@type": "@id"
    },
    "qualifiedRevision": {
      "@id": "prov:qualifiedRevision",
      "@type": "@id"
    },
    "has_anchor": {
      "@id": "prov:has_anchor",
      "@type": "@id"
    },
    "has_query_service": {
      "@id": "prov:has_query_service",
      "@type": "@id"
    },
    "describesService": {
      "@id": "prov:describesService",
      "@type": "@id"
    },
    "pingback": {
      "@id": "prov:pingback",
      "@type": "@id"
    },
    "dictionary": {
      "@id": "prov:dictionary",
      "@type": "@id"
    },
    "derivedByInsertionFrom": {
      "@id": "prov:derivedByInsertionFrom",
      "@type": "@id"
    },
    "derivedByRemovalFrom": {
      "@id": "prov:derivedByRemovalFrom",
      "@type": "@id"
    },
    "insertedKeyEntityPair": {
      "@id": "prov:insertedKeyEntityPair",
      "@type": "@id"
    },
    "hadDictionaryMember": {
      "@id": "prov:hadDictionaryMember",
      "@type": "@id"
    },
    "pairEntity": {
      "@id": "prov:pairEntity",
      "@type": "@id"
    },
    "qualifiedInsertion": {
      "@id": "prov:qualifiedInsertion",
      "@type": "@id"
    },
    "qualifiedRemoval": {
      "@id": "prov:qualifiedRemoval",
      "@type": "@id"
    },
    "asInBundle": {
      "@id": "prov:asInBundle",
      "@type": "@id"
    },
    "geojson": "https://purl.org/geojson/vocab#",
    "oa": "http://www.w3.org/ns/oa#",
    "rdfs": "http://www.w3.org/2000/01/rdf-schema#",
    "dct": "http://purl.org/dc/terms/",
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
    "@version": 1.1
  }
}
```

> <a target="_blank" href="https://json-ld.org/playground/#json-ld=https%3A%2F%2Fogcincubator.github.io%2Fgeodcat-ogcapi-records%2Fbuild%2Fannotated%2Fgeo%2Fgeodcat%2Fgeodcat-records-prov%2Fcontext.jsonld">View on JSON-LD Playground</a>

You can find the full JSON-LD context here:
<a href="https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/geodcat-records-prov/context.jsonld" target="_blank">https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/geodcat-records-prov/context.jsonld</a>

# References

* [GeoDCAT Specification](http://www.opengis.net/def/metamodel/profiles/geodcat)
* [PROV-O Specification](https://www.w3.org/TR/prov-o/)

# For developers

The source code for this Building Block can be found in the following repository:

* URL: <a href="https://github.com/ogcincubator/geodcat-ogcapi-records" target="_blank">https://github.com/ogcincubator/geodcat-ogcapi-records</a>
* Path:
<code><a href="https://github.com/ogcincubator/geodcat-ogcapi-records/blob/HEAD/_sources/geodcat-records-prov" target="_blank">_sources/geodcat-records-prov</a></code>

