# Text Classification

This module provides tools for Thai text classification.

## Functions

- `GzipClassifier`: A parameter-free classifier using GZIP compression.

## Examples

```python
from pythainlp.classify import GzipClassifier

training_data = [("เรื่องทั่วไป", "วันนี้อากาศดีมาก"), ("เศรษฐกิจ", "ดัชนีตลาดหุ้นลดลง")]
classifier = GzipClassifier(training_data)
result = classifier.predict("หุ้นไทยวันนี้")
print(result)
# Output: 'เศรษฐกิจ'
```

For more details, please see the [official documentation](https://pythainlp.org/docs/5.2/api/classify.html).
