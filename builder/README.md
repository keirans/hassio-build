# Build docker env

## Install

amd64:
```bash
$ docker pull homeassistant/amd64-builder
```

armhf:
```bash
$ docker pull homeassistant/armhf-builder
```

## Run

```bash
$ docker run --rm --privileged -v ~/.docker:/root/.docker homeassistant/amd64-builder --help
```

```
Options:
  -h, --help
        Display this help and exit.

  Repository / Data handling
    -r, --repository <REPOSITORY>
        Set git repository to load data from.
    -b, --branch <BRANCH>
        Set git branch for repository.
    -t, --target <PATH_TO_BUILD>
        Set local folder or path inside repository for build.

  Architecture
    --armhf
        Build for arm.
    --amd64
        Build for intel/amd 64bit.
    --aarch64
        Build for arm 64bit.
    --i386
        Build for intel/amd 32bit.
    --all
        Build all architecture.

  Build handling
    --test
       Disable push to dockerhub.
    -l, --no-latest
       Do not tag images as latest.
    -c, --no-cache
       Disable cache for the build (from latest).
    -d, --docker-hub <DOCKER_REPOSITORY>
       Set or overwrite the docker repository.

  Internals:
    --addon
        Default on. Run all things for a addon build.
    --supervisor
        Build a hassio supervisor.
    --homeassistant-base
        Build a Home-Assistant base image.
    --homeassistant-generic
        Build the generic release for a Home-Assistant.
    --homeassistant
        Build the machine based image for a release.

```