# Corpus

This module provides tools for managing Thai language corpora, including word lists, stop words, and datasets.

## Functions

- `thai_words`: Get a set of Thai words from various sources.
- `thai_stopwords`: Get a list of Thai stop words.
- `download`: Download datasets or models from the PyThaiNLP repository.

## Examples

```python
from pythainlp.corpus import thai_stopwords

stopwords = thai_stopwords()
print(list(stopwords)[:5])
# Output: list of common Thai stop words
```

For more details, please see the [official documentation](https://pythainlp.org/docs/5.2/api/corpus.html).
