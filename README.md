# OGC Building Blocks for GeoDCAT implemented using the OGC API Records baseline

This will define a JSON schema linked to GeoDCAT using JSON-LD contexts.  The schema will extend OGC-API-Records.

The generated documentation of each Building Block can be accessed [here](https://ogcincubator.github.io/geodcat-ogcapi-records/).

Building Blocks support validation of examples against both the JSON schema and the RDF (JSON-LD) and can be used to develop and test examples of target ontologies.

Transformations to related models can be supported in the automation pipeline.

Plan is to map to other metadata representations to support validation of a common content profile against multiple encodings.:
 * STAC
 * ISO 19115
   
## Components

This repository defines a set of building block components that can be combined to **test** interoperability requirements.

These are:

- **geodcat** - the core specification as an _extensible_ profile of DCAT ontology -containing only RDF expressions and test cases, independent of other encodings.
- **geodcat-records** - a reference implementation of GeoDCAT extensions bound to the OGC-API Records schema, inheriting common DCAT elements from 
- **dcat-records** - a reference implementation of DCAT bound to the OGC-API Records schema
- **geodcat-ap** - a regression testing environment for a version of GeoDCAT-AP refactored to use GeoDCAT as a component
- **dcat-ap** - DCAT-AP constraints - reused to allow geodcat-ap to validate conformance to dcat-ap.

![](https://lucid.app/publicSegments/view/2eb2f531-df8c-46d6-a441-d96bef505c3d/image.png)

# How to use this template

You can find information on using this template an defining Building Blocks in [USAGE.md](USAGE.md).
