# Transliteration

This module provides tools for Thai transliteration and romanization.

## Functions

- `romanize`: Transliterate Thai text into Latin script using various engines (e.g., `royin`, `thai2rom`).
- `transliterate`: Transliterate Thai text into IPA or other formats.

## Examples

```python
from pythainlp.transliterate import romanize

text = "แมว"
romanized = romanize(text)
print(romanized)
# Output: 'maeo'
```

For more details, please see the [official documentation](https://pythainlp.org/docs/5.2/api/transliterate.html).
