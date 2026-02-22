# 拼寫 (Spelling)

此模組提供泰文拼寫建議與校正工具。

## 函數

- `spell`: 為拼錯的詞彙建議一組正確的拼寫列表。
- `correct`: 將拼錯的詞彙自動校正為最可能的正確拼寫。

## 範例

```python
from pythainlp.spell import correct

word = "กะเพรา"
corrected = correct(word)
print(corrected)
# 輸出: 'กะเพรา' (如果拼寫正確) 或校正後的版本。
```

更多詳細資訊，請參閱 [官方文件](https://pythainlp.org/docs/5.2/api/spell.html)。
