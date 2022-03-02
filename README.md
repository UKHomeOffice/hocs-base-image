# Hocs-Base-Image

---

A collection of 'production' and 'build' images used in the Hocs Project


## Hocs-Base-Image

Minimal docker image for JVM based DECS services.

* `Alpine 3.15`
* `openjdk17-jre` 

Creates `user_hocs` to run code as non-root

Published to https://quay.io/repository/ukhomeofficedigital/hocs-base-image

## Hocs-Base-Image-Build

Minimal docker image for CI/CD builds.

* `Alpine 3.15`
* `openjdk17-jdk` 
* `curl`

Published to https://quay.io/repository/ukhomeofficedigital/hocs-base-image-build

## Hocs-Libreoffice

Minimal docker image used as a base for hocs-docs-convertor. https://github.com/UKHomeOffice/hocs-docs-converter

* `Alpine 3.15`
* `openjdk17-jre` 
* `libreoffice`

Creates `user_hocs` to run code as non-root

Published to https://quay.io/repository/ukhomeofficedigital/hocs-libreoffice

## Hocs-Libreoffice-Build

Minimal docker image used as a base for hocs-docs-convertor CI/CD builds.

* `Alpine 3.15`
* `openjdk17-jdk` 
* `curl`
* `libreoffice`

Published to https://quay.io/repository/ukhomeofficedigital/hocs-libreoffice-build
