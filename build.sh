node scripts/fixpoints.js
node scripts/fixservices.js
node scripts/fixtopics.js
node scripts/buildIndexes.js
node scripts/render.js
lessc -x css/custom.less css/custom.css
cd import
mkdir -p points topics services index cases
node prettifier.js
mv points/* ../points/
mv topics/* ../topics/
mv services/* ../services/
mv cases/* ../cases
mv index/* ../index/

cd ..
git status
