---
title: PROJ-JSON schema (Schema)

language_tabs:
  - json: JSON
  - jsonld: JSON-LD

toc_footers:
  - Version 0.1
  - <a href='#'>PROJ-JSON schema</a>
  - <a href='https://blocks.ogc.org/register.html'>Building Blocks register</a>

search: true

code_clipboard: true

meta:
  - name: PROJ-JSON schema (Schema)
---


# PROJ-JSON schema `ogc.geo.geodcat.projjson`

Provides a PROJ schema as used by varioud STAC profiles

<p class="status">
    <span data-rainbow-uri="http://www.opengis.net/def/status">Status</span>:
    <a href="http://www.opengis.net/def/status/under-development" target="_blank" data-rainbow-uri>Under development</a>
</p>

<aside class="warning">
Validation for this building block has <strong><a href="https://github.com/ogcincubator/geodcat-ogcapi-records/blob/master/build/tests/geo/geodcat/projjson/" target="_blank">failed</a></strong>
</aside>

# Description

## GeoDCAT 

This building block provides a testing framework for the GeoDCAT standard.

Using this building block allows inheritance of any constraints and tests defined for GeoDCAT.

Mainly this will be used to test examples against the GeoDCAT spec and any translations between GeoDCAT and other standards such as ISO19139, STAC etc.


# Examples

## PROJJSON examples



```json
{
    "$schema": "https://proj.org/schemas/v0.4/projjson.schema.json",
    "type": "GeographicCRS",
    "name": "NAD83(2011)",
    "datum": {
      "type": "GeodeticReferenceFrame",
      "name": "NAD83 (National Spatial Reference System 2011)",
      "ellipsoid": {
        "name": "GRS 1980",
        "semi_major_axis": 6378137,
        "inverse_flattening": 298.257222101
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
    "scope": "Horizontal component of 3D system.",
    "area": "Puerto Rico - onshore and offshore. United States (USA) onshore and offshore - Alabama; Alaska; Arizona; Arkansas; California; Colorado; Connecticut; Delaware; Florida; Georgia; Idaho; Illinois; Indiana; Iowa; Kansas; Kentucky; Louisiana; Maine; Maryland; Massachusetts; Michigan; Minnesota; Mississippi; Missouri; Montana; Nebraska; Nevada; New Hampshire; New Jersey; New Mexico; New York; North Carolina; North Dakota; Ohio; Oklahoma; Oregon; Pennsylvania; Rhode Island; South Carolina; South Dakota; Tennessee; Texas; Utah; Vermont; Virginia; Washington; West Virginia; Wisconsin; Wyoming. US Virgin Islands - onshore and offshore.",
    "bbox": {
      "south_latitude": 14.92,
      "west_longitude": 167.65,
      "north_latitude": 74.71,
      "east_longitude": -63.88
    },
    "id": {
      "authority": "EPSG",
      "code": 6318
    }
  }
```

<blockquote class="lang-specific json">
  <p class="example-links">
    <a target="_blank" href="https://ogcincubator.github.io/geodcat-ogcapi-records/build/tests/geo/geodcat/projjson/example_1_1.json">Open in new window</a>
    <a target="_blank" href="https://avillar.github.io/TreedocViewer/?dataParser=json&amp;dataUrl=https%3A%2F%2Fogcincubator.github.io%2Fgeodcat-ogcapi-records%2Fbuild%2Ftests%2Fgeo%2Fgeodcat%2Fprojjson%2Fexample_1_1.json&amp;expand=2&amp;option=%7B%22showTable%22%3A+false%7D">View on JSON Viewer</a></p>
</blockquote>




```jsonld
{
  "$schema": "https://proj.org/schemas/v0.4/projjson.schema.json",
  "type": "GeographicCRS",
  "name": "NAD83(2011)",
  "datum": {
    "type": "GeodeticReferenceFrame",
    "name": "NAD83 (National Spatial Reference System 2011)",
    "ellipsoid": {
      "name": "GRS 1980",
      "semi_major_axis": 6378137,
      "inverse_flattening": 298.257222101
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
  "scope": "Horizontal component of 3D system.",
  "area": "Puerto Rico - onshore and offshore. United States (USA) onshore and offshore - Alabama; Alaska; Arizona; Arkansas; California; Colorado; Connecticut; Delaware; Florida; Georgia; Idaho; Illinois; Indiana; Iowa; Kansas; Kentucky; Louisiana; Maine; Maryland; Massachusetts; Michigan; Minnesota; Mississippi; Missouri; Montana; Nebraska; Nevada; New Hampshire; New Jersey; New Mexico; New York; North Carolina; North Dakota; Ohio; Oklahoma; Oregon; Pennsylvania; Rhode Island; South Carolina; South Dakota; Tennessee; Texas; Utah; Vermont; Virginia; Washington; West Virginia; Wisconsin; Wyoming. US Virgin Islands - onshore and offshore.",
  "bbox": {
    "south_latitude": 14.92,
    "west_longitude": 167.65,
    "north_latitude": 74.71,
    "east_longitude": -63.88
  },
  "id": {
    "authority": "EPSG",
    "code": 6318
  },
  "@context": "https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/projjson/context.jsonld"
}
```

<blockquote class="lang-specific jsonld">
  <p class="example-links">
    <a target="_blank" href="https://ogcincubator.github.io/geodcat-ogcapi-records/build/tests/geo/geodcat/projjson/example_1_1.jsonld">Open in new window</a>
    <a target="_blank" href="https://json-ld.org/playground/#json-ld=https%3A%2F%2Fogcincubator.github.io%2Fgeodcat-ogcapi-records%2Fbuild%2Ftests%2Fgeo%2Fgeodcat%2Fprojjson%2Fexample_1_1.jsonld">View on JSON-LD Playground</a>
</blockquote>



Example from PROJJSON spec at [https://proj.org/en/9.4/specifications/projjson.html#geographiccrs](https://proj.org/en/9.4/specifications/projjson.html#geographiccrs)


# JSON Schema

```yaml--schema
$schema: https://json-schema.org/draft/2020-12/schema
description: Schema for OGCAPI records profile for GeoDCAT - defines all extra elements
  defined by GeoDCAT so that the JSON-LD context can map to GeoDCAT RDF
allOf:
- $ref: https://proj.org/en/latest/schemas/v0.2/projjson.schema.json
x-jsonld-prefixes:
  proj: http://someuri.org/proj/

```

> <a target="_blank" href="https://avillar.github.io/TreedocViewer/?dataParser=yaml&amp;dataUrl=https%3A%2F%2Fogcincubator.github.io%2Fgeodcat-ogcapi-records%2Fbuild%2Fannotated%2Fgeo%2Fgeodcat%2Fprojjson%2Fschema.yaml&amp;expand=2&amp;option=%7B%22showTable%22%3A+false%7D">View on YAML Viewer</a>

Links to the schema:

* YAML version: <a href="https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/projjson/schema.yaml" target="_blank">https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/projjson/schema.yaml</a>
* JSON version: <a href="https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/projjson/schema.json" target="_blank">https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/projjson/schema.json</a>


# JSON-LD Context

```json--ldContext
{
  "@context": {
    "proj": "http://someuri.org/proj/",
    "@version": 1.1
  }
}
```

> <a target="_blank" href="https://json-ld.org/playground/#json-ld=https%3A%2F%2Fogcincubator.github.io%2Fgeodcat-ogcapi-records%2Fbuild%2Fannotated%2Fgeo%2Fgeodcat%2Fprojjson%2Fcontext.jsonld">View on JSON-LD Playground</a>

You can find the full JSON-LD context here:
<a href="https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/projjson/context.jsonld" target="_blank">https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/projjson/context.jsonld</a>

# References

* [PROJ JSON specification](https://proj.org/en/latest/schemas/v0.2/projjson.schema.json)

# For developers

The source code for this Building Block can be found in the following repository:

* URL: <a href="https://github.com/ogcincubator/geodcat-ogcapi-records" target="_blank">https://github.com/ogcincubator/geodcat-ogcapi-records</a>
* Path:
<code><a href="https://github.com/ogcincubator/geodcat-ogcapi-records/blob/HEAD/_sources/projjson" target="_blank">_sources/projjson</a></code>

