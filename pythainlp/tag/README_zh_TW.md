# 標註 (Tagging)

此模組提供泰文文本標註工具，如詞性標註 (POS Tagging) 和命名實體識別 (NER)。

## 函數

- `pos_tag`: 為詞彙列表中的每個詞彙分配詞性標籤（例如：名詞、動詞、形容詞）。

## 範例

```python
from pythainlp.tag import pos_tag

words = ['ฉัน', 'กิน', 'ข้าว']
pos = pos_tag(words)
print(pos)
# 輸出: [('ฉัน', 'PPRP'), ('กิน', 'VATT'), ('ข้าว', 'NCMN')]
```

更多詳細資訊，請參閱 [官方文件](https://pythainlp.org/docs/5.2/api/tag.html)。
