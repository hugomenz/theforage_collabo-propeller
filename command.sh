# create a repository using the terminal. It is possible ing the github api
# but we need to generate the access token. It doesn't work with user and password.

curl \
  -X POST \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer <access token>"\
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/user/repos \
  -d '{"name":"theforage_collaborating-blackbird","description":"repo created from command line","homepage":"https://github.com","private":false,"is_template":false}'

# connecting the local repository to github
git init
git add .
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/hugomenz/theforage_collaborating-blackbird.git
git push -u origin main

# create the branch
git checkout -b update_logo
# check if it worked
git branch

# commit the changes and push the changes
git add src/App.js
git commit -m "Changed logo and link"
git add src/App.css
git commit -m "Changed App logo height. It was too much."
git push --set-upstream origin update_logo






