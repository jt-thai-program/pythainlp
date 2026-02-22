# Soundex (語音編碼)

此模組提供泰文 Soundex 演算法，用於處理語音相似的詞彙。

## 函數

- `soundex`: 使用多種演算法（例如：`udom83`, `metasound`）將泰文詞彙轉換為 Soundex 代碼。

## 範例

```python
from pythainlp.soundex import soundex

text = "วรพงษ์"
code = soundex(text)
print(code)
# 輸出: 'ร2000' (取決於所使用的演算法)
```

更多詳細資訊，請參閱 [官方文件](https://pythainlp.org/docs/5.2/api/soundex.html)。
