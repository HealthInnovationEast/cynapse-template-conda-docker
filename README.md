# cynapse-conda-docker

This is a template repository for creating multitool docker images using conda packages.  It is a good way to test
something functions prior to requesting on [BioContainers/multi-package-containers][multi-pack] or if a biocontainer
doesn't exist yet for a package.

1. Create repo with same name on quay.io (org/repo, uc/lc differences are fine).
2. Add read/write robot permissions to quay.io repo.
3. Check action triggers and is successful following push

## Versioning

Please use semver, this is essential to ensure the docker images build and push as expected via Actions:

https://github.com/docker/metadata-action#semver

<!-- refs -->
[multi-pack]: https://github.com/BioContainers/multi-package-containers