# OGC Building Blocks for GeoDCAT implemented using the OGC API Records baseline

DCAT is a widely used vocabulary for describing data sets and services.  Naturally much data is geographical or spatio-temporal in nature, and datasets are listed in catalogs. GeoDCAT standardises spatio-temporal metadata aspects beyond DCAT basics, and the OGC Records API standardises JSON data structures and access methods fir catalogs.

This repository will define reusable JSON schemas linked to GeoDCAT using JSON-LD contexts.  The schemas will extend OGC-API-Records and provide reusable Building Blocks for more specialised profiles required by communities of practice.

The generated documentation of each Building Block can be accessed [here](https://ogcincubator.github.io/geodcat-ogcapi-records/).

The GeoDCAT specification itself is defined in the main [GeoDCAT SWG Repository](https://github.com/opengeospatial/GeoDCAT-SWG)

[Building Blocks](https://ogcincubator.github.io/bblocks-docs/) support validation of examples against both the JSON schema and the RDF (JSON-LD) and can be used to develop and test examples of target ontologies.

Transformations to related models can be supported in the automation pipeline.

Plan is to map to other metadata representations to support validation of a common content profile against multiple encodings.:
 * [STAC](https://github.com/radiantearth/stac-spec) and its [extensions](https://github.com/stac-extensions)
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


## General Building block repository structure


The `build/` directory contains the **_reusable assets_** for implementing this building block, in full or part, and the rest of the repository contain *sources* to build these assets.  *Sources* minimise redundant information and preserve original forms of inputs, such as externally published schemas etc.  This allow these to be updated safely, and also allows for alternative forms of original source material to be used whilst preserving uniformity of the reusable assets.

Note that the these components will be consistently structured for a given type of building block, and the editable components may vary according to the source material used to derive the building block, and therefore cannot be directly referenced.

### Editable components

- `features/`: schemas for the feature types defined by this bb (which is a "super-bb" containing at least oneOf these defined features)
- `datatypes/`: reusable schemas for (potentially complex) datatypes defined by this bb
- `aspects/`: groups of properties that may be included in feature types (equivalent to attribute groups in XML schema)
- `assets/`: Documentation assets (e.g. images) directory. See [Assets](#assets) below.

[More information on design and usage](https://ogcincubator.github.io/bblocks-docs/)

## Acknowledgements

The work has been co-funded by the European Union, Switzerland and the United Kingdom under the Horizon Europe:
* [Iliad project](https://www.ogc.org/initiatives/iliad/) (GA 101037643)
* [AD4GD project](https://www.ogc.org/initiatives/ad4gd/)(GA 101061001)

