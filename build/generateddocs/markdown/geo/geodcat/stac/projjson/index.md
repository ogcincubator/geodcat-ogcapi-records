
# PROJ-JSON schema (Schema)

`ogc.geo.geodcat.stac.projjson` *v0.1*

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
  "@context": "https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/stac/projjson/context.jsonld",
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

#### ttl
```ttl
@prefix ns1: <https://proj.org/ontology/$> .
@prefix proj: <https://proj.org/ontology/> .
@prefix xsd: <http://www.w3.org/2001/XMLSchema#> .

[] ns1:schema "https://proj.org/schemas/v0.4/projjson.schema.json" ;
    proj:area "Puerto Rico - onshore and offshore. United States (USA) onshore and offshore - Alabama; Alaska; Arizona; Arkansas; California; Colorado; Connecticut; Delaware; Florida; Georgia; Idaho; Illinois; Indiana; Iowa; Kansas; Kentucky; Louisiana; Maine; Maryland; Massachusetts; Michigan; Minnesota; Mississippi; Missouri; Montana; Nebraska; Nevada; New Hampshire; New Jersey; New Mexico; New York; North Carolina; North Dakota; Ohio; Oklahoma; Oregon; Pennsylvania; Rhode Island; South Carolina; South Dakota; Tennessee; Texas; Utah; Vermont; Virginia; Washington; West Virginia; Wisconsin; Wyoming. US Virgin Islands - onshore and offshore." ;
    proj:bbox [ proj:east_longitude -6.388e+01 ;
            proj:north_latitude 7.471e+01 ;
            proj:south_latitude 1.492e+01 ;
            proj:west_longitude 1.6765e+02 ] ;
    proj:coordinate_system [ proj:axis [ proj:abbreviation "Lon" ;
                    proj:direction "east" ;
                    proj:name "Geodetic longitude" ;
                    proj:unit "degree" ],
                [ proj:abbreviation "Lat" ;
                    proj:direction "north" ;
                    proj:name "Geodetic latitude" ;
                    proj:unit "degree" ] ;
            proj:subtype "ellipsoidal" ] ;
    proj:datum [ proj:ellipsoid [ proj:inverse_flattening 2.982572e+02 ;
                    proj:name "GRS 1980" ;
                    proj:semi_major_axis 6378137 ] ;
            proj:name "NAD83 (National Spatial Reference System 2011)" ;
            proj:type "GeodeticReferenceFrame" ] ;
    proj:id [ proj:authority "EPSG" ;
            proj:code 6318 ] ;
    proj:name "NAD83(2011)" ;
    proj:scope "Horizontal component of 3D system." ;
    proj:type "GeographicCRS" .


```

## Schema

```yaml
$schema: https://json-schema.org/draft/2020-12/schema
description: Schema for OGCAPI records profile for GeoDCAT - defines all extra elements
  defined by GeoDCAT so that the JSON-LD context can map to GeoDCAT RDF
allOf:
- $ref: https://proj.org/en/latest/schemas/v0.2/projjson.schema.json
x-jsonld-vocab: https://proj.org/ontology/
x-jsonld-prefixes:
  proj: https://proj.org/ontology/

```

Links to the schema:

* YAML version: [schema.yaml](https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/stac/projjson/schema.json)
* JSON version: [schema.json](https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/stac/projjson/schema.yaml)


# JSON-LD Context

```jsonld
{
  "@context": {
    "@vocab": "https://proj.org/ontology/",
    "proj": "https://proj.org/ontology/",
    "@version": 1.1
  }
}
```

You can find the full JSON-LD context here:
[context.jsonld](https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/stac/projjson/context.jsonld)

## Sources

* [PROJ JSON specification](https://proj.org/en/latest/schemas/v0.2/projjson.schema.json)

# For developers

The source code for this Building Block can be found in the following repository:

* URL: [https://github.com/ogcincubator/geodcat-ogcapi-records](https://github.com/ogcincubator/geodcat-ogcapi-records)
* Path: `_sources/stac/projjson`

