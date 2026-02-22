# Spelling

This module provides tools for Thai spelling correction and suggestion.

## Functions

- `spell`: Suggest a list of correct spellings for a misspelled word.
- `correct`: Automatically correct a misspelled word to the most probable spelling.

## Examples

```python
from pythainlp.spell import correct

word = "กะเพรา"
corrected = correct(word)
print(corrected)
# Output: 'กะเพรา' (if correct) or corrected version.
```

For more details, please see the [official documentation](https://pythainlp.org/docs/5.2/api/spell.html).
