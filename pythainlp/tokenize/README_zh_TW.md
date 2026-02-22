# 分詞 (Tokenization)

此模組提供各個層級的泰文文本切分工具：句子、詞彙和子詞。

## 函數

- `word_tokenize`: 使用多種引擎（例如：`newmm`, `longest`, `attacut`）將泰文文本切分為詞彙。
- `sent_tokenize`: 將泰文文本切分為句子。
- `subword_tokenize`: 將泰文文本切分為子詞單元（例如：TCC, ETCC）。

## 範例

```python
from pythainlp.tokenize import word_tokenize

text = "ภาษาไทยใช้งานยากไหม"
words = word_tokenize(text)
print(words)
# 輸出: ['ภาษาไทย', 'ใช้งาน', 'ยาก', 'ไหม']
```

更多詳細資訊，請參閱 [官方文件](https://pythainlp.org/docs/5.2/api/tokenize.html)。
