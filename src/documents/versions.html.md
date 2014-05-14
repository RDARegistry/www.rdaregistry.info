---
title: Versions and Releases
layout: page
---
###Semantic Versioning
Any change to the vocabularies that is published to GitHub will result in a new version being assigned. The version designations follow the general principals of [Semantic Versioning](http://semver.org), resulting in a 3-tier numbering system:
1. A change that has no effect on the semantics of any Element will result in a 'patch' version that will increment the third segment of the number: "1.1.**X**"
2. A change that affects the semantics of *any* property of *any* Element will result in a 'minor' version that will increment the second segment "1.**X**.0", and reset the third segment to 0
3. A change that breaks backwards semantic compatibility will result in a 'major' version change that increments the first segment "**X**.0.0", and resets the other segments to 0. We expect major versions to be extremely rare.

###Releases
Every time we push a release to GitHub, we 'tag' it with the version number of the release. GitHub recognizes any tag as a release and takes a snapshot of the state of the entire repository at the point in time that the tag was applied. GitHub then creates downloadable zip and tar files for that snapshot. It also makes it possible to reference the snapshot with a specific URI.

The master branch of the repository will always have the latest version, which will always have a version tag. The current version can also be referenced by checking the contents of the ```version``` file in the root directory of the repository. When appropriate, a list of the changes will be added to the release.

You can see the list of releases, along with the downloadable files and reference URLs here: https://github.com/RDARegistry/RDA-Vocabularies/releases
