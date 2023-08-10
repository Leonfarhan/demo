echo "Switching to branch master"
git checkout master

echo "Building app.."
npm run build

echo "Deploying files to server..."
scp -r build/* root@159.65.6.51:/var/www/159.65.6.51/

echo "Done!"