# 機器翻譯 (Machine Translation)

此模組提供泰文與其他語言之間的機器翻譯工具。

## 函數

- `Translate`: 使用各種引擎（例如：`th-en`, `en-th`）在泰文與英文或其他支援的語言之間進行文本翻譯。

## 範例

```python
from pythainlp.translate import Translate

translator = Translate('en', 'th')
translated = translator.translate("Hello world")
print(translated)
# 輸出: 'สวัสดีชาวโลก'
```

更多詳細資訊，請參閱 [官方文件](https://pythainlp.org/docs/5.2/api/translate.html)。
