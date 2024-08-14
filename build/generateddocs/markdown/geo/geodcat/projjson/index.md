
# PROJ-JSON schema (Schema)

`ogc.geo.geodcat.projjson` *v0.1*

Provides a PROJ schema as used by varioud STAC profiles

[*Status*](http://www.opengis.net/def/status): Under development

## Description

## GeoDCAT 

This building block provides a testing framework for the GeoDCAT standard.

Using this building block allows inheritance of any constraints and tests defined for GeoDCAT.

Mainly this will be used to test examples against the GeoDCAT spec and any translations between GeoDCAT and other standards such as ISO19139, STAC etc.


## Examples

### PROJJSON examples
Example from PROJJSON spec at [https://proj.org/en/9.4/specifications/projjson.html#geographiccrs](https://proj.org/en/9.4/specifications/projjson.html#geographiccrs)
#### json
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

#### jsonld
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

#### ttl
```ttl


```

## Schema

```yaml
$schema: https://json-schema.org/draft/2020-12/schema
description: Schema for OGCAPI records profile for GeoDCAT - defines all extra elements
  defined by GeoDCAT so that the JSON-LD context can map to GeoDCAT RDF
allOf:
- $ref: https://proj.org/en/latest/schemas/v0.2/projjson.schema.json
x-jsonld-prefixes:
  proj: https://proj.org/ontology/

```

Links to the schema:

* YAML version: [schema.yaml](https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/projjson/schema.json)
* JSON version: [schema.json](https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/projjson/schema.yaml)


# JSON-LD Context

```jsonld
{
  "@context": {
    "proj": "https://proj.org/ontology/",
    "@version": 1.1
  }
}
```

You can find the full JSON-LD context here:
[context.jsonld](https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/projjson/context.jsonld)

## Sources

* [PROJ JSON specification](https://proj.org/en/latest/schemas/v0.2/projjson.schema.json)

# For developers

The source code for this Building Block can be found in the following repository:

* URL: [https://github.com/ogcincubator/geodcat-ogcapi-records](https://github.com/ogcincubator/geodcat-ogcapi-records)
* Path: `_sources/projjson`

