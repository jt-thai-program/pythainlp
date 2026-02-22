# 文本分類 (Text Classification)

此模組提供泰文文本分類工具。

## 類別

- `GzipClassifier`: 一種使用 GZIP 壓縮的無參數分類器。

## 範例

```python
from pythainlp.classify import GzipClassifier

training_data = [("一般", "今天天氣很好"), ("經濟", "股市指數下跌")]
classifier = GzipClassifier(training_data)
result = classifier.predict("泰國股市今天")
print(result)
# 輸出: '經濟'
```

更多詳細資訊，請參閱 [官方文件](https://pythainlp.org/docs/5.2/api/classify.html)。
