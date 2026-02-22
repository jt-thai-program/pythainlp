# 數據增強 (Data Augmentation)

此模組提供泰文文本數據增強工具。

## 函數/類別

- `WordNetAugmenter`: 使用 WordNet 的同義詞進行文本增強。
- `Word2VecAugmenter`: 使用 Word2Vec 嵌入中相似的詞彙進行文本增強。

## 範例

```python
from pythainlp.augment import WordNetAugmenter

augmenter = WordNetAugmenter()
augmented = augmenter.augment("แมวน่ารัก")
print(augmented)
```

更多詳細資訊，請參閱 [官方文件](https://pythainlp.org/docs/5.2/api/augment.html)。
