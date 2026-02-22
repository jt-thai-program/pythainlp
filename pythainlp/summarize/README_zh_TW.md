# 摘要 (Summarization)

此模組提供自動泰文文本摘要工具。

## 函數

- `summarize`: 使用各種演算法（例如：`mt5`, `lexrank`）為給定的泰文文本生成摘要。

## 範例

```python
from pythainlp.summarize import summarize

text = "這是一段很長的泰文..."
summary = summarize(text)
print(summary)
```

更多詳細資訊，請參閱 [官方文件](https://pythainlp.org/docs/5.2/api/summarize.html)。
