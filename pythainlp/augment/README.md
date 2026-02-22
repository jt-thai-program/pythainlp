# Data Augmentation

This module provides tools for Thai text data augmentation.

## Functions

- `WordNetAugmenter`: Augment text using synonyms from WordNet.
- `Word2VecAugmenter`: Augment text using similar words from Word2Vec embeddings.

## Examples

```python
from pythainlp.augment import WordNetAugmenter

augmenter = WordNetAugmenter()
augmented = augmenter.augment("แมวน่ารัก")
print(augmented)
```

For more details, please see the [official documentation](https://pythainlp.org/docs/5.2/api/augment.html).
