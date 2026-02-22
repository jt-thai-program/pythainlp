# Machine Translation

This module provides tools for machine translation between Thai and other languages.

## Functions

- `Translate`: Translate text between Thai and English or other supported languages using various engines (e.g., `th-en`, `en-th`).

## Examples

```python
from pythainlp.translate import Translate

translator = Translate('en', 'th')
translated = translator.translate("Hello world")
print(translated)
# Output: 'สวัสดีชาวโลก'
```

For more details, please see the [official documentation](https://pythainlp.org/docs/5.2/api/translate.html).
