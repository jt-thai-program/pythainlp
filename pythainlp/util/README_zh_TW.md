# 公用程式 (Utilities)

此模組提供多種泰文處理相關的輔助函數。

## 函數

- `collate`: 根據泰文詞典規則對泰文文本進行正確排序。
- `thai_strftime`: 使用泰文月份和日期名稱格式化 Python 的 `datetime` 物件。
- `bahttext`: 將數字轉換為泰文貨幣大寫文本。
- `num_to_thaiword`: 將數字轉換為其泰文詞彙表示法。

## 範例

```python
from pythainlp.util import bahttext

amount = 123.45
text = bahttext(amount)
print(text)
# 輸出: 'หนึ่งร้อยยี่สิบสามบาทสี่สิบห้าสตางค์'
```

更多詳細資訊，請參閱 [官方文件](https://pythainlp.org/docs/5.2/api/util.html)。
