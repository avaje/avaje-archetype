#!/bin/bash

TARGET_FILE="pom.xml"

sed -i '' 's|<groupId>gav_groupId|<groupId>\${groupId}|g' "$TARGET_FILE"
sed -i '' 's|<artifactId>gav_groupId|<artifactId>\${artifactId}|g' "$TARGET_FILE"
sed -i '' 's|<version>1.0-SNAPSHOT|<version>\${version}|g' "$TARGET_FILE"

find "src" -type f -exec sed -i '' 's|package |package \${package}\.|g' {} +
find "src" -type f -exec sed -i '' 's|\/\/\_package|package \${package};|g' {} +

echo "Replacement to archetype compatible form complete"
