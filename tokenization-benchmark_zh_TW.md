# 泰文分詞基準測試 (Word Tokenization Benchmark)

**注意：此基準測試框架已過時且不再積極維護。**

這是一個用於測試泰文分詞演算法基準的框架。它提供了命令行介面，方便使用者執行基準測試，同時也提供模組介面供開發流程使用。

## 指標

<div align="center">
    <img alt="Metrics overview" src="https://i.imgur.com/jVBOLa2.png"/>
</div>

### 字元級 (Character-Level, CL)

- 真陽性 (TP)：正確預測的起始字元數。
- 真陰性 (TN)：正確預測的非起始字元數。
- 偽陽性 (FP)：錯誤預測為起始字元的非起始字元數。
- 偽陰性 (FN)：錯誤預測為非起始字元的起始字元數。
- 精確率 (Precision)：TP / (TP + FP)
- 召回率 (Recall)：TP / (TP + FN)
- F1 分數：...

### 詞級 (Word-Level, WL)

- 正確分詞數 (CTW)：參考答案中被正確切分的詞彙數。
- 精確率 (Precision)：CTW / 參考答案中的詞彙總數
- 召回率 (Recall)：CTW / 樣本中的詞彙總數
- F1 分數：...

## 基準測試結果

| 供應商 | 方法 | 數據集 |
|---|---|---|
| DeepCut | CNN | [![BEST-DeepCut](https://img.shields.io/badge/BEST:val-WL:f1(0.9732)-yellow.svg)][res-BEST-val-DeepCut] [![THNC-DeepCut](https://img.shields.io/badge/THNC-WL:f1(0.6323)-yellow.svg)][res-THNC-DeepCut] [![Orchid-DeepCut](https://img.shields.io/badge/Orchid-WL:f1(0.6638)-yellow.svg)][res-Orchid-DeepCut] [![Wisesight160-DeepCut](https://img.shields.io/badge/WiseSight160-WL:f1(0.8042)-yellow.svg)][res-WiseSight160-DeepCut] |
| PyThaiNLP-newmm | 基於字典 | [![BEST-newmm](https://img.shields.io/badge/BEST:val-WL:f1(0.6836)-yellow.svg)][res-BEST-val-PyThaiNLP-newmm] [![THNC-newmm](https://img.shields.io/badge/THNC-WL:f1(0.7338)-yellow.svg)][res-THNC-PyThaiNLP-newmm] [![Orchid-newmm](https://img.shields.io/badge/Orchid-WL:f1(0.7223)-yellow.svg)][res-Orchid-PyThaiNLP-newmm] [![Wisesight160-newmm](https://img.shields.io/badge/WiseSight160-WL:f1(0.7248)-yellow.svg)][res-WiseSight160-PyThaiNLP-newmm] |
| Sertis-BiGRU | 雙向 RNN | [![BEST-Sertis](https://img.shields.io/badge/BEST:val-WL:f1(0.9251)-yellow.svg)][res-BEST-val-Sertis-BiGRU] [![Wisesight160-Sertis](https://img.shields.io/badge/WiseSight160-WL:f1(0.8115)-yellow.svg)][res-WiseSight160-Sertis-BiGRU] |

[res-BEST-val-DeepCut]: https://pythainlp.org/tokenization-benchmark-visualization/?experiment-name=BEST-val-DeepCut
[res-THNC-DeepCut]: https://pythainlp.org/tokenization-benchmark-visualization/?experiment-name=THNC-DeepCut
[res-Orchid-DeepCut]: https://pythainlp.org/tokenization-benchmark-visualization/?experiment-name=Orchid-DeepCut
[res-WiseSight160-DeepCut]: https://pythainlp.org/tokenization-benchmark-visualization/?experiment-name=WiseSight160-DeepCut
[res-BEST-val-PyThaiNLP-newmm]: https://pythainlp.org/tokenization-benchmark-visualization/?experiment-name=BEST-val-PyThaiNLP-newmm
[res-THNC-PyThaiNLP-newmm]: https://pythainlp.org/tokenization-benchmark-visualization/?experiment-name=THNC-PyThaiNLP-newmm
[res-Orchid-PyThaiNLP-newmm]: https://pythainlp.org/tokenization-benchmark-visualization/?experiment-name=Orchid-PyThaiNLP-newmm
[res-WiseSight160-PyThaiNLP-newmm]: https://pythainlp.org/tokenization-benchmark-visualization/?experiment-name=WiseSight160-PyThaiNLP-newmm
[res-BEST-val-Sertis-BiGRU]: https://pythainlp.org/tokenization-benchmark-visualization/?experiment-name=BEST-val-Sertis-BiGRU
[res-WiseSight160-Sertis-BiGRU]: https://pythainlp.org/tokenization-benchmark-visualization/?experiment-name=WiseSight160-Sertis-BiGRU

## 安裝

**注意：安裝說明仍在完善中。**

```shell
pip install "pythainlp[benchmarks]"
```

## 用法

**注意：用法說明將會更新。**

1. 命令行介面

    ```shell
    PYTHONPATH=`pwd` python scripts/thai-tokenisation-benchmark.py 
    --test-file ./data/best-2010/TEST_100K_ANS.txt 
    --input ./data/best-2010-syllable.txt
    ```

    輸出範例：

    ```text
    Benchmarking ./data/best-2010-deepcut.txt against ./data/best-2010/TEST_100K_ANS.txt with 2252 samples in total
    ============== Benchmark Result ==============
                    metric       mean±std       min    max
             char_level:tp    47.82±47.22  1.000000  354.0
             char_level:tn  144.19±145.97  1.000000  887.0
             char_level:fp      1.34±2.02  0.000000   23.0
             char_level:fn      0.70±1.19  0.000000   14.0
      char_level:precision      0.96±0.08  0.250000    1.0
         char_level:recall      0.98±0.04  0.500000    1.0
             char_level:f1      0.97±0.06  0.333333    1.0
      word_level:precision      0.92±0.14  0.000000    1.0
         word_level:recall      0.93±0.12  0.000000    1.0
             word_level:f1      0.93±0.13  0.000000    1.0
    ```

2. 模組介面

    ```python
    from pythainlp.benchmarks import word_tokenisation as bwt

    ref_samples = # 參考答案分詞樣本陣列
    tokenised_samples = # 您的演算法分詞樣本陣列

    # dataframe 包含每個樣本的指標
    df = bwt.benchmark(ref_samples, tokenised_samples)
    ```

## 相關工作

- [Thai Tokenizers Docker][docker]: 預構建泰文分詞器的 Docker 容器集合。

## 開發

單元測試

```shell
TEST_VERBOSE=1 PYTHONPATH=. python tests/__init__.py
```

## 致謝

此專案最初由 [Pattarawat Chormai][pat] 在 [Dr. Attapol Thamrongrattanarit][ate] 的實驗室實習期間啟動。

[docker]: https://github.com/PyThaiNLP/docker-thai-tokenizers
[ate]: https://attapol.github.io
[pat]: https://pat.chormai.org
