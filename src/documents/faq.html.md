---
title: Frequently Asked Questions
layout: page
---

***Why is a new namespace, [http://rdaregistry.info](http://rdaregistry.info), used for the RDA element sets instead of [http://rdvocab.info](http://rdvocab.info)?***

The rdvocab.info namespace was set up in 2008 following the [Data Model Meeting](http://www.bl.uk/bibliographic/meeting.html) in London in 2007. The domain used was intended to reflect, but not fully brand, the namespace as "RDA", because it could not be assumed that the developments agreed at the meeting would be successful. For various reasons associated with the ongoing development of [RDA:](http://www.rda-jsc.org/rda.html) [Resource Description and Access](http://www.rda-jsc.org/rda.html), the representation of the basic RDA elements in RDF was not approved until 2012. By then, there was a much clearer understanding of the issues of elements for aggregated statements, and elements unconstrained by RDA semantics for use in non-RDA applications. There were also significant differences between the data used to develop the RDA element sets and the elements published in the current version of RDA. It would have taken longer to update the old element sets, with many deprecations, than to republish them using current, approved data.

***Does this change in the namespace break things for applications using the old URIs and elements that have not made the transition?***

Yes, but every effort is being made to bridge the gap between the old and the new. These include redirection from the old element sets to the new namespace, the development of a map between the old and new URIs, and the provision of alternate URIs using the English label of the element as the local part, similar to the construction of the old URIs. A map from the old URIs known to be in use is available. To be fair, the old element sets had the status of "New-Proposed" and were never officially published.

***Why are the new URIs unreadable?***

After a great deal of discussion, the JSC decided to use opaque URIs for the element sets. This follows the practice established for the value vocabularies, and reflects the international environment of RDA and its translations. The JSC is also aware of the problems associated with using transparent, human-readable URIs as a mnemonic device, especially when the properties and values of bibliographic display labels such as RDA’s relationship designators are still under development. However, English-readable URIs have been declared owl:sameAs to their canonical, opaque counterparts to alleviate any inconvenience this might cause for English-based linked data applications. The same facility may be developed for other languages, based on translations of RDA, in the future. The mnemonic accuracy of these URIs is not guaranteed.

***Is the published set of RDA elements complete and stable? ***

No and yes. Further development of the RDA element set is on the list of tasks for the [JSC Technical Working Group in 2014](http://www.rda-jsc.org/docs/6JSC-Chair-11-2014.pdf), and the Joint Steering Committee for Development of RDA (JSC) expects to add, update, and deprecate elements as the need arises. The element set is stable in that the canonical URIs will not change, and usual good practice will be used when amending or removing classes and properties in the new namespace.

***Are there any plans to move the RDA value vocabularies that are still in the original rdvocab.info namespace?***

No, although such plans may be developed in the future. Some of the value vocabularies are in "Published" status, although the majority remain “New-Proposed”. There is no current need to update the published vocabularies, and they remain, generally, in synchronization with RDA.

***Do the new element sets match the elements in RDA?***

Yes. The published element sets are based on the [RDA Element Analysis Table](http://www.rda-jsc.org/docs/6rda-element-analysis-table.pdf) (in conjunction with the [RDA Element Analysis](http://www.rda-jsc.org/docs/5rda-elementanalysisrev3.pdf)) and the relationship designators listed in Appendices I, J, and K of the [RDA Toolkit](http://www.rdatoolkit.org/). There may be a few variations due to updates in the February 2014 release of RDA and forthcoming updates in the pipeline for the next release, but every effort is being made to keep the element sets up to date. The most significant difference between the elements in RDA and in the namespace is that the namespace verbalizes the human-readable labels and definitions in RDA, in order to clarify the element semantics in the namespace.

***Why do some of the published elements have weird labels and definitions, like "is contains (item)" and “Relates a resource to a resource embodying the resource”?***

This is the result of applying a mechanical device to verbalize RDA labels and definitions to clarify their semantics, specifically the direction of a relationship property, and to create labels and definitions for versions of the properties unconstrained by the RDA domain model based on [Functional Requirements for Bibliographic Records](http://www.ifla.org/files/assets/cataloguing/frbr/frbr_2008.pdf) (FRBR) and [Functional Requirements for Authority Data](http://www.ifla.org/files/assets/cataloguing/frad/frad_2013.pdf) (FRAD). The methodology, as applied to relationship designator elements, is discussed in [RDF representation of RDA relationship designators: a follow-up discussion paper](http://www.rda-jsc.org/docs/6JSC-CILIP-rep-3.pdf) and its appendices. Weird results indicate a failure of the methodology, which will be resolved if at all possible by amending the RDA source text so that automatic synchronization is achieved. If this is not possible, the namespace literals will be amended and synchronized manually. Care will be taken to ensure that the semantics of the element are not changed.

***Where do I direct questions I have about the RDA Vocabularies that aren’t answered here?***

Please email questions about the content of the RDA Vocabularies to the Chair of the JSC ([jschair@rdatoolkit.org](mailto:jschair@rdatoolkit.org)), Gordon Dunsire. Questions about technical issues can be emailed to Diane Hillmann at Metadata Management Associates (diane@managemetadata.com)

***Where can I find more information about the processes used to develop and process the published RDA element sets?***

tba.

