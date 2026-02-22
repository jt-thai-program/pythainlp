# Tokenization

This module provides tools for Thai text segmentation at various levels: sentences, words, and subwords.

## Functions

- `word_tokenize`: Segment Thai text into words using various engines (e.g., `newmm`, `longest`, `attacut`).
- `sent_tokenize`: Segment Thai text into sentences.
- `subword_tokenize`: Segment Thai text into subword units (e.g., TCC, ETCC).

## Examples

```python
from pythainlp.tokenize import word_tokenize

text = "ภาษาไทยใช้งานยากไหม"
words = word_tokenize(text)
print(words)
# Output: ['ภาษาไทย', 'ใช้งาน', 'ยาก', 'ไหม']
```

For more details, please see the [official documentation](https://pythainlp.org/docs/5.2/api/tokenize.html).
