#!/bin/sh

find . -type f \( -name "*.gradle" -o -name "*.xml" \) -exec sed -i '' \
-e "s/sourceCompatibility = 1\.6/sourceCompatibility = 1.8/g" \
-e "s/targetCompatibility = 1\.6/targetCompatibility = 1.8/g" \
-e "s/sourceCompatibility = '1\.7'/sourceCompatibility = '1.8'/g" \
-e "s/targetCompatibility = '1\.7'/targetCompatibility = '1.8'/g" \
-e "s/<source>1\.6<\/source>/<source>1.8<\/source>/g" \
-e "s/<target>1\.6<\/target>/<target>1.8<\/target>/g" {} +
