# PyThaiNLP：泰文自然語言處理 Python 函式庫 (泰文版)

![Project Logo](https://avatars0.githubusercontent.com/u/32934255?s=200&v=4)

[![pypi](https://img.shields.io/pypi/v/pythainlp.svg)](https://pypi.python.org/pypi/pythainlp)
[![Python 3.9](https://img.shields.io/badge/python-3.9-blue.svg)](https://www.python.org/downloads/)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3519354.svg)](https://doi.org/10.5281/zenodo.3519354)
[![Project Status: Active](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![Codacy Grade](https://app.codacy.com/project/badge/Grade/5821a0de122041c79999bbb280230ffb)](https://www.codacy.com/gh/PyThaiNLP/pythainlp/dashboard?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=PyThaiNLP/pythainlp&amp;utm_campaign=Badge_Grade)
[![Coverage Status](https://coveralls.io/repos/github/PyThaiNLP/pythainlp/badge.svg?branch=dev)](https://coveralls.io/github/PyThaiNLP/pythainlp?branch=dev)
[![Google Colab Badge](https://badgen.net/badge/Launch%20Quick%20Start%20Guide/on%20Google%20Colab/blue?icon=terminal)](https://colab.research.google.com/github/PyThaiNLP/tutorials/blob/master/source/notebooks/pythainlp_get_started.ipynb)
[![Facebook](https://img.shields.io/badge/Facebook-0866FF?style=flat&logo=facebook&logoColor=white)](https://www.facebook.com/pythainlp/)
[![Chat on Matrix](https://matrix.to/img/matrix-badge.svg)](https://matrix.to/#/#thainlp:matrix.org)

[pythainlp.org](https://pythainlp.org/)
| [使用方法](https://pythainlp.org/tutorials)
| [授權資訊](https://pythainlp.org/dev-docs/notes/license.html)
| [模型卡](https://github.com/PyThaiNLP/pythainlp/wiki/Model-Cards)
| [誰在使用 PyThaiNLP](https://github.com/PyThaiNLP/pythainlp/blob/dev/INTHEWILD_zh_TW.md)
| *[English README](https://github.com/PyThaiNLP/pythainlp/blob/dev/README.md)*
| *[เอกสารภาษาไทย (ต้นฉบับ)](https://github.com/PyThaiNLP/pythainlp/blob/dev/README_TH.md)*

**PyThaiNLP** 被設計為泰文語言分析的標準工具，在 Apache-2.0 授權下發布，其數據和模型則採用 CC0-1.0 和 CC-BY-4.0。

```sh
pip install pythainlp
```

| 版本 | Python 版本 | 變更日誌 | 文件 |
| :-: | :-: | :-: | :-: |
| [5.2.0](https://github.com/PyThaiNLP/pythainlp/releases) | 3.7+ | [紀錄](https://github.com/PyThaiNLP/pythainlp/issues/1080) | [pythainlp.org/docs](https://pythainlp.org/docs) |
| [`dev`](https://github.com/PyThaiNLP/pythainlp/tree/dev) | 3.9+ | [紀錄](https://github.com/PyThaiNLP/pythainlp/issues/1169) | [pythainlp.org/dev-docs](https://pythainlp.org/dev-docs/) |

## 功能特點

- **語言單位分析：** 句子、詞彙和子詞切分 (`sent_tokenize`, `word_tokenize`, `subword_tokenize`)。
- **功能標註：** 詞性標註 (`pos_tag`)。
- **轉寫：** 羅馬拼音化 (`transliterate`) 和 IPA 轉換。
- **拼寫檢查：** 拼寫建議與校正 (`spell`, `correct`)。
- **輔助工具：** Soundex、排序、數字轉文字 (`bahttext`)、日期格式化 (`thai_strftime`) 以及鍵盤佈局校正。
- **語料庫：** 泰文字元集、詞彙表和停用詞。
- **CLI：** 透過 `thainlp` 指令使用命令行介面。

  ```sh
  thainlp data catalog  # 顯示數據集清單
  thainlp help          # 顯示使用方法
  ```

## 安裝選項

安裝特定的額外功能 (Extras)（例如 `translate`, `wordnet`, `full`）：

```sh
pip install "pythainlp[extra1,extra2,...]"
```

可用的 `extras`：

<details>
  <summary>透過 <code>extras</code> 安裝的清單</summary>

- `compact` — 安裝穩定且較小的子集（建議）
- `full` — 安裝所有依賴項（可能產生衝突）
- `abbreviation` — 縮寫擴展工具
- `attacut` — 支援 AttaCut（快速且準確的分詞器）
- `budoux` — 支援使用 BudouX 進行文本切分
- `benchmarks` — 支援執行基準測試
- `coreference_resolution` — 支援共指消解
- `dependency_parsing` — 支援句法分析
- `el` — 支援實體連結
- `esupar` — 支援 ESuPAR 解析器
- `generate` — 支援文本生成
- `icu` — 支援 ICU (International Components for Unicode)，用於轉寫和分詞
- `ipa` — 支援 IPA (International Phonetic Alphabet) 轉寫
- `ml` — 支援用於分類的 ULMFiT 模型
- `mt5` — 用於泰文摘要的 mT5 模型
- `nlpo3` — 支援使用 nlpo3 進行泰文分詞
- `onnx` — 支援 ONNX 模型
- `oskut` — 支援 OSKUT
- `sefr_cut` — 支援使用 SEFR CUT 進行泰文分詞
- `spacy_thai` — 支援 spaCy 中的泰文
- `spell` — 支援額外的拼寫檢查器 (phunspell & symspellpy)
- `ssg` — 支援 SSG 音節切分器
- `textaugment` — 文本增強工具
- `thai_nner` — 支援泰文命名實體識別
- `thai2fit` — 泰文詞向量 (thai2fit)
- `thai2rom` — 使用機器學習進行轉寫
- `transformers_ud` — 支援使用 transformers 的 Universal Dependencies
- `translate` — 支援機器翻譯
- `wangchanberta` — WangchanBERTa 模型
- `wangchanglm` — 支援 WangchanGLM 模型
- `word_approximation` — 支援詞彙近似
- `wordnet` — 支援 WordNet
- `wsd` — 支援詞義消歧 (pythainlp.wsd)
- `wtp` — 支援使用 Where's the Point 進行文本切分
- `wunsen` — 支援 Wunsen 拼寫檢查器

</details>

有關詳細的依賴項資訊，請參見 [`pyproject.toml`](https://github.com/PyThaiNLP/pythainlp/blob/dev/pyproject.toml) 中的 `[project.optional-dependencies]` 部分。

## 數據目錄

PyThaiNLP 預設會將數據（參見 [pythainlp-corpus](https://github.com/PyThaiNLP/pythainlp-corpus) 的數據目錄 `db.json`）下載到 `~/pythainlp-data`。
設置 `PYTHAINLP_DATA_DIR` 環境變數可以更改此位置。

在分佈式計算環境（如 Apache Spark）中使用 PyThaiNLP 時，請在分發到工作節點的函數內部設置 `PYTHAINLP_DATA_DIR` 環境變數。詳細資訊請參閱[文件](https://pythainlp.org/dev-docs/notes/installation.html)。

## 測試

我們在所有官方支持的 Python 版本上測試核心功能。

有關測試矩陣和其他詳細資訊，請參閱 [tests/README_zh_TW.md](./tests/README_zh_TW.md)。

## 參與開發 PyThaiNLP

請 Fork 並建立 Pull Request。
有關指南和演算法參考，請參閱 [CONTRIBUTING_zh_TW.md](https://github.com/PyThaiNLP/pythainlp/blob/dev/CONTRIBUTING_zh_TW.md)。

## 引用

如果您在專案或研究中使用 `PyThaiNLP` 軟體，請按以下方式引用：

> Phatthiyaphaibun, Wannaphong, Korakot Chaovavanich, Charin Polpanumas,
> Arthit Suriyawongkul, Lalita Lowphansirikul, and Pattarawat Chormai.
> “PyThaiNLP: Thai Natural Language Processing in Python”.
> Zenodo, 2 June 2024. <http://doi.org/10.5281/zenodo.3519354>.

使用此 BibTeX 條目：

```bibtex
@software{pythainlp,
    title = "{P}y{T}hai{NLP}: {T}hai Natural Language Processing in {P}ython",
    author = "Phatthiyaphaibun, Wannaphong  and
      Chaovavanich, Korakot  and
      Polpanumas, Charin  and
      Suriyawongkul, Arthit  and
      Lowphansirikul, Lalita  and
      Chormai, Pattarawat",
    doi = {10.5281/zenodo.3519354},
    license = {Apache-2.0},
    month = jun,
    url = {https://github.com/PyThaiNLP/pythainlp/},
    version = {v5.0.4},
    year = {2024},
}
```

如果您在學術會議 [NLP-OSS 2023](https://nlposs.github.io/2023/) 中引用我們的研究，請按以下方式引用：

> Wannaphong Phatthiyaphaibun, Korakot Chaovavanich, Charin Polpanumas,
> Arthit Suriyawongkul, Lalita Lowphansirikul, Pattarawat Chormai,
> Peerat Limkonchotiwat, Thanathip Suntorntip, and Can Udomcharoenchaikit.
> 2023.
> [PyThaiNLP: Thai Natural Language Processing in Python.](https://aclanthology.org/2023.nlposs-1.4)
> In Proceedings of the 3rd Workshop for Natural Language Processing
> Open Source Software (NLP-OSS 2023),
> pages 25–36, Singapore, Singapore.
> Empirical Methods in Natural Language Processing.

使用此 BibTeX 條目：

```bibtex
@inproceedings{phatthiyaphaibun-etal-2023-pythainlp,
    title = "{P}y{T}hai{NLP}: {T}hai Natural Language Processing in Python",
    author = "Phatthiyaphaibun, Wannaphong  and
      Chaovavanich, Korakot  and
      Polpanumas, Charin  and
      Suriyawongkul, Arthit  and
      Lowphansirikul, Lalita  and
      Chormai, Pattarawat  and
      Limkonchotiwat, Peerat  and
      Suntorntip, Thanathip  and
      Udomcharoenchaikit, Can",
    editor = "Tan, Liling  and
      Milajevs, Dmitrijs  and
      Chauhan, Geeticka  and
      Gwinnup, Jeremy  and
      Rippeth, Elijah",
    booktitle = "Proceedings of the 3rd Workshop for Natural Language Processing Open Source Software (NLP-OSS 2023)",
    month = dec,
    year = "2023",
    address = "Singapore, Singapore",
    publisher = "Empirical Methods in Natural Language Processing",
    url = "https://aclanthology.org/2023.nlposs-1.4",
    pages = "25--36",
    abstract = "We present PyThaiNLP, a free and open-source natural language processing (NLP) library for Thai language implemented in Python. It provides a wide range of software, models, and datasets for Thai language. We first provide a brief historical context of tools for Thai language prior to the development of PyThaiNLP. We then outline the functionalities it provided as well as datasets and pre-trained language models. We later summarize its development milestones and discuss our experience during its development. We conclude by demonstrating how industrial and research communities utilize PyThaiNLP in their work. The library is freely available at https://github.com/pythainlp/pythainlp.",
}
```

## 授權

| 內容 | 授權 |
| :-- | :-- |
| PyThaiNLP 源代碼與筆記本 | [Apache Software License 2.0](https://github.com/PyThaiNLP/pythainlp/blob/dev/LICENSE) |
| 由 PyThaiNLP 專案建立的語料庫、數據集和文件 | [Creative Commons Zero 1.0 Universal Public Domain Dedication License (CC0)](https://creativecommons.org/publicdomain/zero/1.0/)|
| 由 PyThaiNLP 專案建立的語言模型 | [Creative Commons Attribution 4.0 International Public License (CC-BY)](https://creativecommons.org/licenses/by/4.0/) |
| PyThaiNLP 可能隨附的其他語料庫與模型 | 請參見 [語料庫授權 (Corpus License)](./pythainlp/corpus/corpus_license_zh_TW.md) |

## 贊助商

| 標誌 | 說明 |
| --- | ----------- |
| [![VISTEC-depa Thailand Artificial Intelligence Research Institute](https://airesearch.in.th/assets/img/logo/airesearch-logo.svg)](https://airesearch.in.th/) | 自 2019 年以來，我們的共同開發者 Korakot Chaovavanich 和 Lalita Lowphansirikul 獲得了 [VISTEC-depa 泰國人工智慧研究所](https://airesearch.in.th/) 的支援。 |
| [![MacStadium](https://i.imgur.com/rKy1dJX.png)](https://www.macstadium.com) | 我們獲得了來自 [MacStadium](https://www.macstadium.com) 提供的 Mac Mini M1 支援，用於執行 CI 構建。 |

------

<div align="center">
  建立於 ❤️ | PyThaiNLP 團隊 💻 | 「我們打造泰文自然語言處理」 🇹🇭
</div>

------

<div align="center">
  <strong>我們只有一個官方存儲庫在
  https://github.com/PyThaiNLP/pythainlp，另一個鏡像在
  https://gitlab.com/pythainlp/pythainlp</strong>
</div>

<div align="center">
  <strong>如果您使用上述 GitHub 和 GitLab 以外的存儲庫代碼，請小心惡意軟體。</strong>
</div>
