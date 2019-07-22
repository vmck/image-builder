# image-builder

Build images of various OSes (actually just ubuntu bionic) with pre-installed
software (actually just docker).


## Building different flavors of images

Open a branch called `something/fix` and the system will create an image
called `imgbuild-something_fix.qcow2.tar.gz`on the shared host volume
`/opt/volumes/vmck-images` using `packer-build/ubuntu1804.json` as
configuration. You can modify `packer-build/ubuntu1804.json` to suit your needs.

On the `master` branch we're installing Docker on Ubuntu Bionic.

## Building an image locally

### Requirements:
```shell
sudo apt install qemu qemu-kvm
```
Install packer by following the [https://www.packer.io/intro/getting-started/install.html](instructions)

### Building your image:

```shell
./packer-build/build ${PACKER_CONFIGURATION} ${VM_NAME}
```

This will build a vm using the given `PACKER_CONFIGURATION` with the name
`VM_NAME` in `packer-build/build`. If you don't want to build a configuration
from scrap, just modify the existing one `packer-build/ubuntu1804.json`.

- To choose what software to be installed modify `provisioners.inline`.
- To change the disk size modify `builders.disk_size`

### Start your image

```shell
./packer-build/start.sh ${VM_NAME}.qcow2
```

### Toubleshooting

If you get the error: `Could not access KVM kernel module: Permission denied`,
add `your user` to the `libvirtd` group as explained
here: https://wiki.alpinelinux.org/wiki/KVM on alpine or to the `kvm` group
on Debian-based distros. If it continues:

```shell
sudo chmod 666 /dev/kvm
```
