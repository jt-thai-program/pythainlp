# Soundex

This module provides tools for Thai Soundex algorithms to handle phonetically similar words.

## Functions

- `soundex`: Convert a Thai word into a Soundex code using various algorithms (e.g., `udom83`, `metasound`).

## Examples

```python
from pythainlp.soundex import soundex

text = "วรพงษ์"
code = soundex(text)
print(code)
# Output: 'ร2000' (algorithm-dependent)
```

For more details, please see the [official documentation](https://pythainlp.org/docs/5.2/api/soundex.html).
