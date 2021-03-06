#!/bin/bash

cat > "config.js" << EOF
/* SPHERE.IO credentials */
exports.config = {
  client_id: "${SPHERE_CLIENT_ID}",
  client_secret: "${SPHERE_CLIENT_SECRET}",
  project_key: "${SPHERE_PROJECT_KEY}"
}
EOF

#create the symlinks for all dotfiles
declare -a targets=(simple express)
for i in "${targets[@]}"
do
  :
  echo "Symlinking $i/config.js"
  ln -sf `pwd`/config.js `pwd`/$i/config.js
done
