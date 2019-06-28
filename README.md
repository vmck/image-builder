# image-builder

Build images of various OSes (actually just ubuntu bionic) with pre-installed
software (actually just docker).


## Building different flavors of images

Open a branch called `something/fix` and the system will use
`./scripts/something.sh` to create an image called
`imgbuild-something_fix.qcow2.tar.gz` on the shared host volume.

On the `master` branch we're installing Docker on Ubuntu Bionic.
