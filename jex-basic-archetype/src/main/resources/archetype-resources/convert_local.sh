#!/bin/bash

# Target file (change this to your actual file name)
TARGET_FILE="pom.xml"

sed -i '' 's|<groupId>\${groupId}|<groupId>gav_groupId|g' "$TARGET_FILE"
sed -i '' 's|<artifactId>\${artifactId}|<artifactId>gav_groupId|g' "$TARGET_FILE"
sed -i '' 's|<version>\${version}|<version>1.0-SNAPSHOT|g' "$TARGET_FILE"

# Use sed -i '' for macOS-compatible in-place editing
find "src" -type f -exec sed -i '' 's|package \${package}\.|package |g' {} +
find "src" -type f -exec sed -i '' 's|package \${package};|\/\/_package|g' {} +

echo "Replacement to local format complete"
