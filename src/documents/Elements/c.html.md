---
title: Canonical RDA Classes
layout: page
tags: ['Elements','Canonical']
---
###JSON-LD
```json
{
  "@context": {
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
    "Name": {
      "@id": "reg:name",
      "@container": "@language"
    },
    "Label": {
      "@id": "rdfs:label",
      "@container": "@language"
    },
    "SameAs": {
      "@id": "owl:sameAs",
      "@type": "@id"
    },
    "DefinedBy": {
      "@id": "rdfs:isDefinedBy",
      "@type": "@id"
    },
    "Definition": {
      "@id": "skos:definition",
      "@container": "@language"
    },
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
    "@id": "rdac:C10001",
    "@type": "owl:Class",
    "Name": {
      "en": "Work"
    },
    "Status": "stat:1001",
    "DefinedBy": "http://rdaregistry.info/Elements/c/",
    "Label": {
      "en": "Work"
    },
    "SameAs": "rdac:Work",
    "Definition": {
      "en": "A distinct intellectual or artistic creation (i.e., the intellectual or artistic content)."
    }
  }, {
    "@id": "rdac:C10002",
    "@type": "owl:Class",
    "SubClasses": ["rdac:C10004", "rdac:C10005", "rdac:C10008"],
    "Name": {
      "en": "Agent"
    },
    "Status": "stat:1001",
    "DefinedBy": "http://rdaregistry.info/Elements/c/",
    "Label": {
      "en": "Agent"
    },
    "SameAs": "rdac:Agent",
    "Definition": {
      "en": "A person, family, or corporate body."
    }
  }]
}
```
