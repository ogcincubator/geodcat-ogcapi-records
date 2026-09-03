## DCAT-AP 3.0.1

This building block provides a framework to test compatibility of GeoDCAT with DCAT-AP 3.0.1, and to make this relationship transparent to any implementation of GeoDCAT-AP using OGC standards.

**Known issue:** the published `dcat-ap-SHACL.ttl` for release 3.0.1 has a malformed `dcat:DataServiceShape` — two of its `sh:property` references point to skolemized IRIs that were never emitted into the file, so any SHACL validation run against a `dcat:DataService` instance fails with a shapes-graph loading error rather than a normal validation report. This is tracked upstream as [SEMICeu/DCAT-AP#448](https://github.com/SEMICeu/DCAT-AP/issues/448) (targeted for the 3.0.2 release, June 2026). It only surfaces here for blocks whose test examples include a `dcat:DataService` (e.g. `ogc.geo.geodcat.geodcat-ap`, via `dcat:accessService`).
