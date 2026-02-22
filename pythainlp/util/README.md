# Utilities

This module provides various utility functions for Thai language processing.

## Functions

- `collate`: Sort Thai text correctly according to Thai dictionary rules.
- `thai_strftime`: Format Python's `datetime` objects using Thai month and day names.
- `bahttext`: Convert a number to Thai currency text.
- `num_to_thaiword`: Convert a number to its Thai word representation.

## Examples

```python
from pythainlp.util import bahttext

amount = 123.45
text = bahttext(amount)
print(text)
# Output: 'หนึ่งร้อยยี่สิบสามบาทสี่สิบห้าสตางค์'
```

For more details, please see the [official documentation](https://pythainlp.org/docs/5.2/api/util.html).
