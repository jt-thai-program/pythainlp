# Summarization

This module provides tools for automatic Thai text summarization.

## Functions

- `summarize`: Generate a summary for a given Thai text using various algorithms (e.g., `mt5`, `lexrank`).

## Examples

```python
from pythainlp.summarize import summarize

text = "ยาวๆ..."
summary = summarize(text)
print(summary)
```

For more details, please see the [official documentation](https://pythainlp.org/docs/5.2/api/summarize.html).
