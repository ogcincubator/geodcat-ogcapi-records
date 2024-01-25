
# Proxy placeholder for OGC API Records (Schema)

`ogc.geo.geodcat.records` *v0.1*

To be replaced by a OGC API records schema Building Block when available

[*Status*](http://www.opengis.net/def/status): Under development

## Description

## OGC API records schema

Proxy for testing examples and illustrating dependencies for OGC API Records Record object
## Schema

```yaml
$schema: https://json-schema.org/draft/2020-12/schema
description: Normative records schema
allOf:
- $ref: https://raw.githubusercontent.com/opengeospatial/ogcapi-records/master/core/openapi/schemas/recordGeoJSON.yaml

```

Links to the schema:

* YAML version: [schema.yaml](https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/records/schema.json)
* JSON version: [schema.json](https://ogcincubator.github.io/geodcat-ogcapi-records/build/annotated/geo/geodcat/records/schema.yaml)

## Sources

* [API Records Specification Repository](https://github.com/opengeospatial/ogcapi-records)

# For developers

The source code for this Building Block can be found in the following repository:

* URL: [https://github.com/ogcincubator/geodcat-ogcapi-records](https://github.com/ogcincubator/geodcat-ogcapi-records)
* Path: `_sources/records`

