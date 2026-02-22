# 語料庫 (Corpus)

此模組提供管理泰文語料庫的工具，包括詞彙列表、停用詞和數據集。

## 函數

- `thai_words`: 從各種來源獲取一組泰文詞彙。
- `thai_stopwords`: 獲取一組泰文停用詞。
- `download`: 從 PyThaiNLP 存儲庫下載數據集或模型。

## 範例

```python
from pythainlp.corpus import thai_stopwords

stopwords = thai_stopwords()
print(list(stopwords)[:5])
# 輸出: 常見泰文停用詞列表
```

更多詳細資訊，請參閱 [官方文件](https://pythainlp.org/docs/5.2/api/corpus.html)。
