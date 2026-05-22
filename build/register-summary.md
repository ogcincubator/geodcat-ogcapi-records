# GeoDCAT implementation using OGC API Records

[OGC Building Blocks](https://ogcincubator.github.io/bblocks-docs/) linking GeoDCAT to OGC API Records and other schemas. Uses examples to support a development methodology for DCAT: separation of DCAT and other existing ontology from requirements identified from a range of alternative spatiotemporal metadata schemas.


This is intended to explore and support regression testing during the development of GeoDCAT by testing that the concepts used in OGC API Records (and extensions such as STAC) can be mapped to either DCAT or added to GeoDCAT as required.

For more information see the [GeoDCAT model development methdology](https://github.com/opengeospatial/GeoDCAT-SWG/blob/main/METHODOLOGY.md)


## Building Blocks

### `ogc.geo.geodcat.dcat2` — DCAT 2 Ontology

**Type:** model

W3C DCAT version 2, packaged as a building block to support inheritance of SHACL rules for validation and relationships to other standards.

### `ogc.geo.geodcat.stac.projjson` — PROJ-JSON schema

**Type:** schema

Provides a PROJ schema as used by varioud STAC profiles

### `ogc.geo.geodcat.dcat` — DCAT V3

**Type:** schema

W3C DCAT version 3, extends V2, packaged as a building block to support inheritance of SHACL rules for validation and relationships to other standards.

### `ogc.geo.geodcat.dcat-ap` — DCAT-AP 3.0 profile

**Type:** model

DCAT-AP 3.0 (european profile of DCAT)

### `ogc.geo.geodcat.geodcat` — GeoDCAT profile

**Type:** model

Provides a CI/CT/CD environment for the GeoDCAT definition.

### `ogc.geo.geodcat.dcat-records` — DCAT/Records binding

**Type:** schema

DCAT profile of OGC API Records binds the OGC API Records schema to the DCAT vocabulary. This is the baseline for semantic equivalence of OGC API records and the DCAT model. GeoDCAT and other profiles reuse this to distinguish between extensions and existing properties.

### `ogc.geo.geodcat.geodcat-ap` — GeoDCAT-AP profile

**Type:** model

Provides a CI/CT/CD environment for the testing compatibility of GeoDCAT-AP with a regions neutral GeoDCAT definition.

### `ogc.geo.geodcat.stac.geodcat-stac-collection` — GeoDCAT mapping for STAC collection

**Type:** schema

This building block defines mappings from the STAC collections schema to the core GeoDCAT profile of DCAT. It inherits from a general mapping of OGC API Records schema to GeoDCAT, which in turn reuses mappings to DCAT.  This is a work in progress to establish the scope of GeoDCAT to semantically describe existing spatial metadata schemas.

### `ogc.geo.geodcat.geodcat-records` — GeoDCAT mapping for OGC API Records

**Type:** schema

GeoDCAT profile of OGC API Records binds the OGC API Records schema to the GeoDCAT profile of DCAT.  This is a work in progress to establish the scope of GeoDCAT to semantically describe existing spatial metadata schemas.available profile

### `ogc.geo.geodcat.geodcat-records-prov` — GeoDCAT + PROV profile

**Type:** schema

GeoDCAT Profile of OGC API Records using the PROV-O model of provenance

### `ogc.geo.geodcat.stac.geodcat-stac-item` — GeoDCAT mapping to STAC item

**Type:** schema

This building block defines mappings from the STAC item schema to the core GeoDCAT profile of DCAT. It inherits from a general mapping of OGC API Records schema to GeoDCAT, which in turn reuses mappings to DCAT.  This is a work in progress to establish the scope of GeoDCAT to semantically describe existing spatial metadata schemas.

### `ogc.geo.geodcat.stac.extensions.geodcat-stac-accuracy` — GeoDCAT profile of STAC Accuracy extension

**Type:** schema

This profile binds the schema for the STAC Accuracy extension to a profile of GeoDCAT.  It inherits a common mapping of STAC and OGC API Records Item and Collection objects to the DCAT model. Additional terminology reequired for the semantics of the extension can be mapped to additional ontologies as required. (Note this is a work in progress, the building blocks provide a test harness for these mappings, allowing systematic development of a GeoDCAT core ontology to meet the requirements of these existing metadata schemas.

### `ogc.geo.geodcat.stac.extensions.geodcat-stac-eo` — GeoDCAT profile of STAC Electro-Optical extension

**Type:** schema

This profile binds the schema for the STAC Electro-Optical extension to a profile of GeoDCAT.  It inherits a common mapping of STAC and OGC API Records Item and Collection objects to the DCAT model. Additional terminology reequired for the semantics of the extension can be mapped to additional ontologies as required. (Note this is a work in progress, the building blocks provide a test harness for these mappings, allowing systematic development of a GeoDCAT core ontology to meet the requirements of these existing metadata schemas.

### `ogc.geo.geodcat.stac.extensions.geodcat-stac-mlm` — GeoDCAT profile of STAC Electro-Optical extension

**Type:** schema

This profile binds the schema for the STAC Electro-Optical extension to a profile of GeoDCAT.  It inherits a common mapping of STAC and OGC API Records Item and Collection objects to the DCAT model. Additional terminology reequired for the semantics of the extension can be mapped to additional ontologies as required. (Note this is a work in progress, the building blocks provide a test harness for these mappings, allowing systematic development of a GeoDCAT core ontology to meet the requirements of these existing metadata schemas.

