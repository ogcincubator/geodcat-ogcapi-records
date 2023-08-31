
# My Building Block (Schema)

`ogc.bbr.template.my-building-block` *v0.1*

This Building Block serves as a template to create new ones

[*Status*](http://www.opengis.net/def/status): Under development

## Description

## Qui hastarum tectus Cithaeron iuvabat

Lorem markdownum vestigia sanguine rursus undis, suspenderat meo mox conlegerat
temperat sucos. Est graves dant sentire sanguinis flores respondent testari.

> Videri vias quid Ausoniae sua flores ante, reminiscitur fuit est. Semel
> [hectora](http://silvaque.org/) peregrinaeque rudem exercent in, Troiana si
> Asida instabilesque somno sed.

## Iam vota cui dilataque peterem

Tinxit lumina lacer liquidarum Aiax si mergitur sed fueris capitisque **et
cadit** contigerant rectum [ferar](http://prosternit.com/quoque.html) temperat.
Monet caput adsensere Ityn furentibus gelidos.
## Examples

### This is an example with just a description and no code snippets.
This is the content of the example.

In **Markdown** format.

### Examples can have content and/or code snippets.
The content of this example. 
#### shell
```shell
echo 'Hello, world!'
```

#### python
```python
print('Hello, world!')
```

#### javascript
```javascript
console.log('Hello, world!')
```

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
    x-jsonld-id: https://example.org/my-bb-model/a
    x-jsonld-type: '@id'
  b:
    type: number
    x-jsonld-id: https://example.org/my-bb-model/b
required:
- a
- b

```

Links to the schema:

* YAML version: [schema.yaml](https://raw.githubusercontent.com/ogcincubator/geodcat-ogcapi-records/master/build/annotated/bbr/template/my-building-block/schema.json)
* JSON version: [schema.json](https://raw.githubusercontent.com/ogcincubator/geodcat-ogcapi-records/master/build/annotated/bbr/template/my-building-block/schema.yaml)


# JSON-LD Context

```jsonld
{
  "@context": {
    "a": {
      "@id": "https://example.org/my-bb-model/a",
      "@type": "@id"
    },
    "b": "https://example.org/my-bb-model/b",
    "@version": 1.1
  }
}
```

You can find the full JSON-LD context here:
[context.jsonld](https://raw.githubusercontent.com/ogcincubator/geodcat-ogcapi-records/master/build/annotated/bbr/template/my-building-block/context.jsonld)

## Sources

* [Sample source document](https://example.com/sources/1)

# For developers

The source code for this Building Block can be found in the following repository:

* URL: [https://github.com/ogcincubator/geodcat-ogcapi-records](https://github.com/ogcincubator/geodcat-ogcapi-records)
* Path: `_sources/my-building-block`

