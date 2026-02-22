#!/bin/bash
# 尋找所有非翻譯版的 .md 檔案，並檢查是否有對應的 _zh_TW.md

find . -type f -name "*.md" | grep -v "_zh_TW.md" | while read -r file; do
    base="${file%.md}"
    zh_file="${base}_zh_TW.md"
    if [ ! -f "$zh_file" ]; then
        echo "$file"
    fi
done
