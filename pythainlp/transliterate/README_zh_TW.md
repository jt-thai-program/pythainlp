# 轉寫 (Transliteration)

此模組提供泰文轉寫與羅馬拼音工具。

## 函數

- `romanize`: 使用多種引擎（例如：`royin`, `thai2rom`）將泰文文本轉寫為拉丁字母。
- `transliterate`: 將泰文文本轉寫為 IPA 或其他格式。

## 範例

```python
from pythainlp.transliterate import romanize

text = "แมว"
romanized = romanize(text)
print(romanized)
# 輸出: 'maeo'
```

更多詳細資訊，請參閱 [官方文件](https://pythainlp.org/docs/5.2/api/transliterate.html)。
