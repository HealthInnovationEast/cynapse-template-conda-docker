# cynapse-template-conda-docker

## How to use this template

**Remove this section once you have set up the project**

This is a template repository for creating multitool docker images using conda packages.  It is a good way to test
something functions prior to requesting on [BioContainers/multi-package-containers][multi-pack] or if a biocontainer
doesn't exist yet for a package.

1. Create repo with same name on quay.io (org/repo)
   - upper/lower case differences are okay, be mindful of `_` vs `-`
1. Add read/write robot permissions to new quay.io repo
   - `Repository Settings` -> `User and Robot Permissions`
   - Add `cynapse-ccri+github_actions_rw` with write permissions
1. Check action triggers on first push of repo.
1. Modify `environment.yml` adding relevant conda packages to the `dependencies` section
   - Use version pinning: `samtools=1.15.1`

## Tools and intent

Please detail the tools used in this container here and why a cynapse specific one has been built.  Clearly indicate if
the intention is for this to be requested in BioContainers at a later date.

## pre-commit

The report has a base pre-commit configuration to aid in standards for the repository and ensuring secrets are not accidentally
imported.  Please see thr [pre-commit] docs for how to activate this in your workspace.

## Versioning

Please use semver, this is essential to ensure the docker images build and push as expected via Actions:

https://github.com/docker/metadata-action#semver

## Removing the repo

If the repository was created as an interim solution or for testing purposes please ensure that the quay.io repository
is removed at the same time to reduce noise in our organisations.

<!-- refs -->

[multi-pack]: https://github.com/BioContainers/multi-package-containers
[pre-commit]: https://pre-commit.com/
