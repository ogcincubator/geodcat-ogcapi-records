
# OGC API Records Ontology (Model)

`ogc.geo.geodcat.records-ontology` *v0.1*

Ontology for OGC API Records concepts and terms not found elsewhere

[*Status*](http://www.opengis.net/def/status): Under development

## Examples

### Record example as TTL
Example of an OGC Record schema mapped to the records ontology  

#### ttl
```ttl
@prefix dcat: <http://www.w3.org/ns/dcat#> .
@prefix dcterms: <http://purl.org/dc/terms/> .
@prefix geojson: <https://purl.org/geojson/vocab#> .
@prefix ns1: <https://www.opengis.net/def/ogc-api/records/rec:> .
@prefix ns2: <http://www.iana.org/assignments/> .
@prefix oa: <http://www.w3.org/ns/oa#> .
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix rec: <https://www.opengis.net/def/ogc-api/records/> .
@prefix time: <http://www.w3.org/2006/time#> .
@prefix xsd: <http://www.w3.org/2001/XMLSchema#> .

<urn:x-wmo:md:int.wmo.wis::https://geo.woudc.org/def/data/ozone/total-column-ozone/totalozone> a <http://example.com/records/dataset>,
        geojson:Feature ;
    rdfs:label "Total Ozone - daily observations" ;
    dcterms:conformsTo <http://www.opengis.net/spec/ogcapi-records-1/1.0/req/record-core> ;
    dcterms:created "2021-02-08T00:00:00Z" ;
    dcterms:description "A measurement of the total amount of atmospheric ozone in a given column from the surface to the edge of the atmosphere. Ground based instruments such as spectrophotometers and ozonemeters are used to measure results daily" ;
    dcterms:language [ dcterms:language "fr-CA" ],
        [ dcterms:language "en-CA" ],
        "en-CA" ;
    dcterms:modified "2021-02-08T00:00:00Z" ;
    dcterms:temporal [ time:hasTime ( "1924-08-17T00:00:00Z" ".." ) ] ;
    rdfs:seeAlso [ rdfs:label "OGC Web Feature Service (WFS)" ;
            dcterms:type "application/xml" ;
            ns2:relation <http://www.iana.org/assignments/relation/service> ;
            oa:hasTarget <https://geo.woudc.org/ows> ],
        [ rdfs:label "Web Accessible Folder (WAF)" ;
            dcterms:created "2015-01-23T00:00:00Z" ;
            dcterms:modified "2015-01-23T00:00:00Z" ;
            dcterms:type "text/html" ;
            ns2:relation <http://www.iana.org/assignments/relation/enclosure> ;
            oa:hasTarget <https://woudc.org/archive/Archive-NewFormat/TotalOzone_1.0_1> ],
        [ rdfs:label "This document as HTML" ;
            dcterms:type "text/html" ;
            ns2:relation <http://www.iana.org/assignments/relation/alternate> ;
            oa:hasTarget <https://woudc.org/data/dataset_info.php?id=totalozone> ],
        [ rdfs:label "Data Search / Download User Interface" ;
            dcterms:type "text/html" ;
            ns2:relation <http://www.iana.org/assignments/relation/search> ;
            oa:hasTarget <https://woudc.org/data/explore.php?dataset=totalozone> ],
        [ rdfs:label "Total Ozone Preview Image" ;
            dcterms:type "image/png" ;
            ns2:relation <http://www.iana.org/assignments/relation/preview> ;
            oa:hasTarget <https://woudc.org/data/preview.png> ],
        [ rdfs:label "Static dataset archive file" ;
            dcterms:created "2015-01-23T00:00:00Z" ;
            dcterms:modified "2015-01-23T00:00:00Z" ;
            dcterms:type "application/zip" ;
            ns2:relation <http://www.iana.org/assignments/relation/enclosure> ;
            oa:hasTarget <https://woudc.org/archive/Summaries/dataset-snapshots/totalozone.zip> ],
        [ ns2:relation <http://www.iana.org/assignments/relation/license> ;
            oa:hasTarget <https://woudc.org/about/data-policy.php> ] ;
    dcat:keyword "brewer",
        "column",
        "dobson",
        "level 1.0",
        "ozone",
        "saoz",
        "total" ;
    geojson:geometry [ a geojson:Polygon ;
            geojson:coordinates ( ( ( -180 -90 ) ( -180 90 ) ( 180 90 ) ( 180 -90 ) ( -180 -90 ) ) ) ] ;
    rec:hasLinkTemplate [ a <http://example.com/records/image/png> ;
            rdfs:label "World Ozone and Ultraviolet Radiation Data Centre (WOUDC) stations" ;
            ns2:relation <http://www.iana.org/assignments/relation/describes> ;
            oa:hasTarget "https://geo.woudc.org/ows?service=WMS&version=1.3.0&request=GetMap&crs={crs}&bbox={bbox}&layers=stations&width={width}&height={height}&format=image/png"^^xsd:string ;
            rec:hasVariable <http://example.com/variables/bbox>,
                <http://example.com/variables/crs>,
                <http://example.com/variables/height>,
                <http://example.com/variables/width> ] .

<http://example.com/variables/bbox> a ns1:array ;
    dcterms:description "..." ;
    ns1:items [ a ns1:number ;
            ns1:format "double" ] ;
    ns1:maxItems 4 ;
    ns1:minItems 4 .

<http://example.com/variables/crs> a ns1:string ;
    dcterms:description "..." ;
    ns1:enum "EPSG:3857",
        "EPSG:4326" .

<http://example.com/variables/height> a ns1:number ;
    dcterms:description "..." ;
    ns1:format "integer" ;
    ns1:maximum 5000 ;
    ns1:minimum 600 .

<http://example.com/variables/width> a ns1:number ;
    dcterms:description "..." ;
    ns1:format "integer" ;
    ns1:maximum 5000 ;
    ns1:minimum 600 .

```

## Sources

* [GeoDCAT Specification](http://www.opengis.net/def/metamodel/profiles/geodcat)

# For developers

The source code for this Building Block can be found in the following repository:

* URL: [https://github.com/NielsHoffmann/geodcat-ogcapi-records](https://github.com/NielsHoffmann/geodcat-ogcapi-records)
* Path: `_sources/records-ontology`

