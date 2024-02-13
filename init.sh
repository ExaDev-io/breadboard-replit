WORKING_DIR=$(pwd)
DESTINATION="template"
npx -y @google-labs/create-breadboard $DESTINATION

cp -r $WORKING_DIR/$DESTINATION/* $WORKING_DIR
rm -rf $WORKING_DIR/$DESTINATION

npm install

sed -i '/run = \["bash", "init.sh"\]/d' .replit
