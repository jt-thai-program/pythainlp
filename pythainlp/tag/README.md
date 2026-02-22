# Tagging

This module provides tools for tagging Thai text, such as Part-of-Speech (POS) tagging and Named Entity Recognition (NER).

## Functions

- `pos_tag`: Assign a Part-of-Speech tag (e.g., noun, verb, adjective) to each word in a list of words.

## Examples

```python
from pythainlp.tag import pos_tag

words = ['ฉัน', 'กิน', 'ข้าว']
pos = pos_tag(words)
print(pos)
# Output: [('ฉัน', 'PPRP'), ('กิน', 'VATT'), ('ข้าว', 'NCMN')]
```

For more details, please see the [official documentation](https://pythainlp.org/docs/5.2/api/tag.html).
