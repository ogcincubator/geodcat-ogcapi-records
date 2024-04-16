# GeoDCAT Development and testing methodology

See [the GeoDCAT ontology development methodology](https://github.com/opengeospatial/GeoDCAT-SWG/blob/main/METHODOLOGY.md)

This [OGC Building Block](https://ogcincubator.github.io/bblocks-docs/) implementation of GeoDCAT is used for testing implementation compatibility with OGC PAI records and transformations between related metadata schemas.


1. define examples of JSON (or other schemas)
2. create a transformation to a JSON equivalent if necessary
3. map JSON schema elements to DCAT and other available ontologies - in JSON-LD
4. for elements that do not map choose:

- not relevant to spatio-temporal aspects
- additions to GeoDCAT for common elements relevant to multiple application domains
- additions extension profiles of GeoDCAT for specific application domains

  
