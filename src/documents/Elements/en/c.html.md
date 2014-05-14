---
title: RDA Classes
layout: page
language: English
---

####JSON-LD
```json
{
  "@context": {
    "@language": "en",
    "@vocab": "http://rdaregistry.info/Elements/c/",
    "dc": "http://purl.org/dc/elements/1.1/",
    "rdac": "http://rdaregistry.info/Elements/c/",
    "rdfs": "http://www.w3.org/2000/01/rdf-schema#",
    "reg": "http://metadataregistry.org/uri/profile/RegAp/",
    "stat": "http://metadataregistry.org/uri/RegStatus/",
    "skos": "http://www.w3.org/2004/02/skos/core#",
    "owl": "http://www.w3.org/2002/07/owl#",
    "Status": {
      "@id": "reg:status",
      "@type": "@id"
    },
    "Name": "reg:name",
    "Label": "rdfs:label",
    "SameAs": {
      "@id": "owl:sameAs",
      "@type": "@id"
    },
    "DefinedBy": {
      "@id": "rdfs:isDefinedBy",
      "@type": "@id"
    },
    "Definition": "skos:definition",
    "SubClasses": {
      "@id": "reg:hasSubClass",
      "@type": "@id"
    },
    "Published": {
      "@id": "stat:1001",
      "@type": "@id"
    }
  },
  "@graph": [{
    "@id": "rdac:Work",
    "@type": "owl:Class",
    "Name": "Work",
    "Status": "stat:1001",
    "DefinedBy": "http://rdaregistry.info/Elements/c/",
    "Label": "Work",
    "SameAs": "rdac:C10001",
    "Definition": "A distinct intellectual or artistic creation (i.e., the intellectual or artistic content)."
  }, {
    "@id": "rdac:Agent",
    "@type": "owl:Class",
    "SubClasses": ["rdac:C10004", "rdac:C10005", "rdac:C10008"],
    "Name": "Agent",
    "Status": "stat:1001",
    "DefinedBy": "http://rdaregistry.info/Elements/c/",
    "Label": "Agent",
    "SameAs": "rdac:C10002",
    "Definition": "A person, family, or corporate body."
  }]
}
```
