
# GeoDCAT profile of OGC API Records (Schema)

`ogc.unstable.geodcat.geodcat` *v0.1*

GeoDCAT profile of OGC API Records binds the OGC API Records schema to the GeoDCAT profile of DCAT. Additional schema elements are defined for each element of GeoDCAT not directly expressible in OGC API Records schema or other available profile

[*Status*](http://www.opengis.net/def/status): Under development

## Description

## GeoDCAT implementation using OGC API records JSON schema

This building block defines a binding from OGC API Records schema to the GeoDCAT profile of DCAT.

The JSON-LD context is derived from the published JSON-LD context constained within the JSON-LD expression of the DCAT vocabulary.

(Note that such a context should be provided as a reusable resource - if no changes are deemed necessary to implement an OGC API records schema then a _proxy_ building block for DCAT will be created to support re-use of this context.)
## Examples

### GeoDCAT-AP backwards compatibility example.
This example is a GEODCAT-AP example to test backwards compatibility with SHACL and other RDF constraints

- language: ttl
  ref: tests/geodcat-ap-regression.ttl
## Schema

```yaml
$schema: https://json-schema.org/draft/2020-12/schema
description: Schema for my building block
'@modelReference': context.jsonld
type: object
properties:
  a:
    type: string
    format: uri
  b:
    type: number
required:
- a
- b
x-jsonld-extra-terms:
  domain:
    x-jsonld-id: http://www.w3.org/2000/01/rdf-schema#domain
    x-jsonld-type: '@id'
  scopeNote:
    x-jsonld-id: http://www.w3.org/2004/02/skos/core#scopeNote
    x-jsonld-type: http://www.w3.org/1999/02/22-rdf-syntax-ns#langString
  label:
    x-jsonld-id: http://www.w3.org/2000/01/rdf-schema#label
    x-jsonld-type: http://www.w3.org/1999/02/22-rdf-syntax-ns#langString
  isDefinedBy:
    x-jsonld-id: http://www.w3.org/2000/01/rdf-schema#isDefinedBy
    x-jsonld-type: '@id'
  comment:
    x-jsonld-id: http://www.w3.org/2000/01/rdf-schema#comment
    x-jsonld-type: http://www.w3.org/1999/02/22-rdf-syntax-ns#langString
  changeNote:
    x-jsonld-id: http://www.w3.org/2004/02/skos/core#changeNote
    x-jsonld-type: http://www.w3.org/1999/02/22-rdf-syntax-ns#langString
  definition:
    x-jsonld-id: http://www.w3.org/2004/02/skos/core#definition
    x-jsonld-type: http://www.w3.org/1999/02/22-rdf-syntax-ns#langString
  subPropertyOf:
    x-jsonld-id: http://www.w3.org/2000/01/rdf-schema#subPropertyOf
    x-jsonld-type: '@id'
  range:
    x-jsonld-id: http://www.w3.org/2000/01/rdf-schema#range
    x-jsonld-type: '@id'
  name:
    x-jsonld-id: http://xmlns.com/foaf/0.1/name
    x-jsonld-type: http://www.w3.org/2001/XMLSchema#string
  homepage:
    x-jsonld-id: http://xmlns.com/foaf/0.1/homepage
    x-jsonld-type: '@id'
  rest:
    x-jsonld-id: http://www.w3.org/1999/02/22-rdf-syntax-ns#rest
    x-jsonld-type: '@id'
  first:
    x-jsonld-id: http://www.w3.org/1999/02/22-rdf-syntax-ns#first
    x-jsonld-type: '@id'
  seeAlso:
    x-jsonld-id: http://www.w3.org/2000/01/rdf-schema#seeAlso
    x-jsonld-type: '@id'
  editorialNote:
    x-jsonld-id: http://www.w3.org/2004/02/skos/core#editorialNote
    x-jsonld-type: http://www.w3.org/1999/02/22-rdf-syntax-ns#langString
  altLabel:
    x-jsonld-id: http://www.w3.org/2004/02/skos/core#altLabel
    x-jsonld-type: http://www.w3.org/1999/02/22-rdf-syntax-ns#langString
  workInfoHomepage:
    x-jsonld-id: http://xmlns.com/foaf/0.1/workInfoHomepage
    x-jsonld-type: '@id'
  affiliation:
    x-jsonld-id: http://schema.org/affiliation
    x-jsonld-type: '@id'
  rangeIncludes:
    x-jsonld-id: http://schema.org/rangeIncludes
    x-jsonld-type: '@id'
  unionOf:
    x-jsonld-id: http://www.w3.org/2002/07/owl#unionOf
    x-jsonld-type: '@id'
  creator:
    x-jsonld-id: http://purl.org/dc/terms/creator
    x-jsonld-type: '@id'
  versionInfo:
    x-jsonld-id: http://www.w3.org/2002/07/owl#versionInfo
    x-jsonld-type: http://www.w3.org/1999/02/22-rdf-syntax-ns#langString
  contributor:
    x-jsonld-id: http://purl.org/dc/terms/contributor
    x-jsonld-type: '@id'
  modified:
    x-jsonld-id: http://purl.org/dc/terms/modified
    x-jsonld-type: http://www.w3.org/2001/XMLSchema#date
  imports:
    x-jsonld-id: http://www.w3.org/2002/07/owl#imports
    x-jsonld-type: '@id'
  license:
    x-jsonld-id: http://purl.org/dc/terms/license
    x-jsonld-type: '@id'
  maker:
    x-jsonld-id: http://xmlns.com/foaf/0.1/maker
    x-jsonld-type: '@id'
  subClassOf:
    x-jsonld-id: http://www.w3.org/2000/01/rdf-schema#subClassOf
    x-jsonld-type: '@id'
  propertyChainAxiom:
    x-jsonld-id: http://www.w3.org/2002/07/owl#propertyChainAxiom
    x-jsonld-type: '@id'
  onProperty:
    x-jsonld-id: http://www.w3.org/2002/07/owl#onProperty
    x-jsonld-type: '@id'
  cardinality:
    x-jsonld-id: http://www.w3.org/2002/07/owl#cardinality
    x-jsonld-type: http://www.w3.org/2001/XMLSchema#nonNegativeInteger
  allValuesFrom:
    x-jsonld-id: http://www.w3.org/2002/07/owl#allValuesFrom
    x-jsonld-type: '@id'
x-jsonld-prefixes:
  dct: http://purl.org/dc/terms/
  owl: http://www.w3.org/2002/07/owl#
  rdf: http://www.w3.org/1999/02/22-rdf-syntax-ns#
  dctype: http://purl.org/dc/dcmitype/
  xsd: http://www.w3.org/2001/XMLSchema#
  skos: http://www.w3.org/2004/02/skos/core#
  rdfs: http://www.w3.org/2000/01/rdf-schema#
  vcard: http://www.w3.org/2006/vcard/ns#
  dcat: http://www.w3.org/ns/dcat#
  prov: http://www.w3.org/ns/prov#
  foaf: http://xmlns.com/foaf/0.1/
  sdo: http://schema.org/

```

Links to the schema:

* YAML version: [schema.yaml](https://raw.githubusercontent.com/ogcincubator/geodcat-ogcapi-records/master/build/annotated/unstable/geodcat/geodcat/schema.json)
* JSON version: [schema.json](https://raw.githubusercontent.com/ogcincubator/geodcat-ogcapi-records/master/build/annotated/unstable/geodcat/geodcat/schema.yaml)


# JSON-LD Context

```jsonld
{
  "@context": {
    "domain": {
      "@id": "rdfs:domain",
      "@type": "@id"
    },
    "scopeNote": {
      "@id": "skos:scopeNote",
      "@type": "http://www.w3.org/1999/02/22-rdf-syntax-ns#langString"
    },
    "label": {
      "@id": "rdfs:label",
      "@type": "http://www.w3.org/1999/02/22-rdf-syntax-ns#langString"
    },
    "isDefinedBy": {
      "@id": "rdfs:isDefinedBy",
      "@type": "@id"
    },
    "comment": {
      "@id": "rdfs:comment",
      "@type": "http://www.w3.org/1999/02/22-rdf-syntax-ns#langString"
    },
    "changeNote": {
      "@id": "skos:changeNote",
      "@type": "http://www.w3.org/1999/02/22-rdf-syntax-ns#langString"
    },
    "definition": {
      "@id": "skos:definition",
      "@type": "http://www.w3.org/1999/02/22-rdf-syntax-ns#langString"
    },
    "subPropertyOf": {
      "@id": "rdfs:subPropertyOf",
      "@type": "@id"
    },
    "range": {
      "@id": "rdfs:range",
      "@type": "@id"
    },
    "name": {
      "@id": "foaf:name",
      "@type": "http://www.w3.org/2001/XMLSchema#string"
    },
    "homepage": {
      "@id": "foaf:homepage",
      "@type": "@id"
    },
    "rest": {
      "@id": "rdf:rest",
      "@type": "@id"
    },
    "first": {
      "@id": "rdf:first",
      "@type": "@id"
    },
    "seeAlso": {
      "@id": "rdfs:seeAlso",
      "@type": "@id"
    },
    "editorialNote": {
      "@id": "skos:editorialNote",
      "@type": "http://www.w3.org/1999/02/22-rdf-syntax-ns#langString"
    },
    "altLabel": {
      "@id": "skos:altLabel",
      "@type": "http://www.w3.org/1999/02/22-rdf-syntax-ns#langString"
    },
    "workInfoHomepage": {
      "@id": "foaf:workInfoHomepage",
      "@type": "@id"
    },
    "affiliation": {
      "@id": "sdo:affiliation",
      "@type": "@id"
    },
    "rangeIncludes": {
      "@id": "sdo:rangeIncludes",
      "@type": "@id"
    },
    "unionOf": {
      "@id": "owl:unionOf",
      "@type": "@id"
    },
    "creator": {
      "@id": "dct:creator",
      "@type": "@id"
    },
    "versionInfo": {
      "@id": "owl:versionInfo",
      "@type": "http://www.w3.org/1999/02/22-rdf-syntax-ns#langString"
    },
    "contributor": {
      "@id": "dct:contributor",
      "@type": "@id"
    },
    "modified": {
      "@id": "dct:modified",
      "@type": "http://www.w3.org/2001/XMLSchema#date"
    },
    "imports": {
      "@id": "owl:imports",
      "@type": "@id"
    },
    "license": {
      "@id": "dct:license",
      "@type": "@id"
    },
    "maker": {
      "@id": "foaf:maker",
      "@type": "@id"
    },
    "subClassOf": {
      "@id": "rdfs:subClassOf",
      "@type": "@id"
    },
    "propertyChainAxiom": {
      "@id": "owl:propertyChainAxiom",
      "@type": "@id"
    },
    "onProperty": {
      "@id": "owl:onProperty",
      "@type": "@id"
    },
    "cardinality": {
      "@id": "owl:cardinality",
      "@type": "http://www.w3.org/2001/XMLSchema#nonNegativeInteger"
    },
    "allValuesFrom": {
      "@id": "owl:allValuesFrom",
      "@type": "@id"
    },
    "dct": "http://purl.org/dc/terms/",
    "owl": "http://www.w3.org/2002/07/owl#",
    "rdf": "http://www.w3.org/1999/02/22-rdf-syntax-ns#",
    "dctype": "http://purl.org/dc/dcmitype/",
    "xsd": "http://www.w3.org/2001/XMLSchema#",
    "skos": "http://www.w3.org/2004/02/skos/core#",
    "rdfs": "http://www.w3.org/2000/01/rdf-schema#",
    "vcard": "http://www.w3.org/2006/vcard/ns#",
    "dcat": "http://www.w3.org/ns/dcat#",
    "prov": "http://www.w3.org/ns/prov#",
    "foaf": "http://xmlns.com/foaf/0.1/",
    "sdo": "http://schema.org/",
    "@version": 1.1
  }
}
```

You can find the full JSON-LD context here:
[context.jsonld](https://raw.githubusercontent.com/ogcincubator/geodcat-ogcapi-records/master/build/annotated/unstable/geodcat/geodcat/context.jsonld)

## Sources

* [GeoDCAT Specification](http://www.opengis.net/def/metamodel/profiles/geodcat)
* [GeoDCAT Resources](http://www.opengis.net/def/metamodel/profiles/geodcat)
* [GeoDCAT Specification Repository](https://github.com/opengeospatial/GeoDCAT-SWG)

# For developers

The source code for this Building Block can be found in the following repository:

* URL: [https://github.com/ogcincubator/geodcat-ogcapi-records](https://github.com/ogcincubator/geodcat-ogcapi-records)
* Path: `_sources/geodcat`

