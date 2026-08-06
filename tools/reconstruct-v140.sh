#!/usr/bin/env bash
set -euo pipefail

mkdir -p app/src/main/assets/src

cat \
  payload/game-bundle.part00a.b64 \
  payload/game-bundle.part00b.b64 \
  payload/game-bundle.part01.b64 \
  payload/game-bundle.part02.b64 \
  > game-bundle-v120.js.gz.b64
base64 --decode game-bundle-v120.js.gz.b64 > game-bundle-v120.js.gz
gzip -t game-bundle-v120.js.gz
gzip -dc game-bundle-v120.js.gz > app/src/main/assets/src/game-bundle.js

cat \
  payload/game-bundle-v121.patch.part00.b64 \
  payload/game-bundle-v121.patch.part01.b64 \
  > game-bundle-v121.patch.gz.b64
base64 --decode game-bundle-v121.patch.gz.b64 > game-bundle-v121.patch.gz
gzip -t game-bundle-v121.patch.gz
gzip -dc game-bundle-v121.patch.gz > game-bundle-v121.patch
patch app/src/main/assets/src/game-bundle.js < game-bundle-v121.patch

cat \
  payload/game-bundle-v122.patch.part00.b64 \
  payload/game-bundle-v122.patch.part01.b64 \
  payload/game-bundle-v122.patch.part02.b64 \
  payload/game-bundle-v122.patch.part03.b64 \
  > game-bundle-v122.patch.gz.b64
base64 --decode game-bundle-v122.patch.gz.b64 > game-bundle-v122.patch.gz
gzip -t game-bundle-v122.patch.gz
gzip -dc game-bundle-v122.patch.gz > game-bundle-v122.patch
patch app/src/main/assets/src/game-bundle.js < game-bundle-v122.patch

cat \
  payload/game-bundle-v130.patch.part00.b64 \
  payload/game-bundle-v130.patch.part01.b64 \
  payload/game-bundle-v130.patch.part02a.b64 \
  payload/game-bundle-v130.patch.part02b.b64 \
  payload/game-bundle-v130.patch.part02c.b64 \
  payload/game-bundle-v130.patch.part02d.b64 \
  payload/game-bundle-v130.patch.part03a.b64 \
  payload/game-bundle-v130.patch.part03b.b64 \
  payload/game-bundle-v130.patch.part03c.b64 \
  payload/game-bundle-v130.patch.part03d.b64 \
  > game-bundle-v130.patch.gz.b64
base64 --decode game-bundle-v130.patch.gz.b64 > game-bundle-v130.patch.gz
gzip -t game-bundle-v130.patch.gz
gzip -dc game-bundle-v130.patch.gz > game-bundle-v130.patch
patch app/src/main/assets/src/game-bundle.js < game-bundle-v130.patch

cat \
  payload/game-bundle-v140.patch.part00.b64 \
  payload/game-bundle-v140.patch.part01.b64 \
  payload/game-bundle-v140.patch.part02.b64 \
  > game-bundle-v140.patch.gz.b64
base64 --decode game-bundle-v140.patch.gz.b64 > game-bundle-v140.patch.gz
echo "e84bf449bb2e9775c1c8dcd756434f8196d6faedaace58e07718777f37824835  game-bundle-v140.patch.gz" | sha256sum --check
gzip -t game-bundle-v140.patch.gz
gzip -dc game-bundle-v140.patch.gz > game-bundle-v140.patch
patch app/src/main/assets/src/game-bundle.js < game-bundle-v140.patch

node --check app/src/main/assets/src/game-bundle.js
echo "a3d81c2c841b20e696767894a989d122107f372826c1bd0cb9cb7db0b427dd24  app/src/main/assets/src/game-bundle.js" | sha256sum --check
grep -q "const BUILD_VERSION = '1.4.0'" app/src/main/assets/src/game-bundle.js
grep -q "versionCode 140" app/build.gradle
grep -q "v1.4.0" app/src/main/assets/index.html
