# PyThaiNLP: 泰文自然語言處理 Python 函式庫

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
| [教程](https://pythainlp.org/tutorials)
| [授權資訊](https://pythainlp.org/dev-docs/notes/license.html)
| [模型卡 (Model cards)](https://github.com/PyThaiNLP/pythainlp/wiki/Model-Cards)
| [採用者](https://github.com/PyThaiNLP/pythainlp/blob/dev/INTHEWILD_zh_TW.md)
| *[เอกสารภาษาไทย](https://github.com/PyThaiNLP/pythainlp/blob/dev/README_TH.md)*
| *[English](https://github.com/PyThaiNLP/pythainlp/blob/dev/README.md)*

**PyThaiNLP** 旨在成為泰文版的 [NLTK](https://www.nltk.org/)，在 Apache-2.0 授權下提供標準的語言分析工具，其數據和模型則採用 CC0-1.0 和 CC-BY-4.0 授權。

```sh
pip install pythainlp
```

| 版本 | Python 版本 | 變更日誌 | 文件 |
|:-------:|:--------------:|:-------:|:-------------:|
| [5.2.0](https://github.com/PyThaiNLP/pythainlp/releases) | 3.7+ | [紀錄](https://github.com/PyThaiNLP/pythainlp/issues/1080) | [pythainlp.org/docs](https://pythainlp.org/docs) |
| [`dev`](https://github.com/PyThaiNLP/pythainlp/tree/dev) | 3.9+ | [紀錄](https://github.com/PyThaiNLP/pythainlp/issues/1169) | [pythainlp.org/dev-docs](https://pythainlp.org/dev-docs/) |

## 功能特點

- **語言單位：** 句子、詞彙和子詞切分 (`sent_tokenize`, `word_tokenize`, `subword_tokenize`)。
- **標註：** 詞性標註 (`pos_tag`)。
- **轉寫：** 羅馬拼音化 (`transliterate`) 和 IPA 轉換。
- **校正：** 拼寫建議與校正 (`spell`, `correct`)。
- **公用程式：** Soundex、排序 (collation)、數字轉文字 (`bahttext`)、日期時間格式化 (`thai_strftime`) 以及鍵盤佈局校正。
- **數據：** 內建泰文字元集、詞彙表和停用詞。
- **CLI：** 透過 `thainlp` 指令使用命令行介面。

  ```sh
  thainlp data catalog  # 列出數據集
  thainlp help          # 顯示用法
  ```

## 安裝選項

安裝特定的額外功能（例如：`translate`, `wordnet`, `full`）：

```sh
pip install "pythainlp[extra1,extra2,...]"
```

可選的 `extras` 包括：

- `compact` — 安裝穩定且較小的依賴子集（建議使用）
- `translate` — 機器翻譯支持
- `wordnet` — WordNet 支持
- `full` — 安裝所有可選依賴項（可能會引入衝突）

文件網站維護了[完整的安裝額外功能列表](https://pythainlp.org/dev-docs/notes/installation.html)。
要查看每個額外功能包含的具體庫，請檢查 [`pyproject.toml`](https://github.com/PyThaiNLP/pythainlp/blob/dev/pyproject.toml) 的 `[project.optional-dependencies]` 部分。

## 數據目錄

PyThaiNLP 預設會將數據（參見 [pythainlp-corpus](https://github.com/PyThaiNLP/pythainlp-corpus) 的數據目錄 `db.json`）下載到 `~/pythainlp-data`。
設置 `PYTHAINLP_DATA_DIR` 環境變數可以覆蓋此位置。

在分佈式計算環境（如 Apache Spark）中使用 PyThaiNLP 時，請在分發到工作節點的函數內部設置 `PYTHAINLP_DATA_DIR` 環境變數。詳細資訊請參閱[文件](https://pythainlp.org/dev-docs/notes/installation.html)。

## 測試

我們在所有官方支持的 Python 版本上測試核心功能。

有關測試矩陣和其他詳細資訊，請參閱 [tests/README_zh_TW.md](./tests/README_zh_TW.md)。

## 貢獻 PyThaiNLP

請 Fork 並建立 Pull Request。
有關指南和演算法參考，請參閱 [CONTRIBUTING_zh_TW.md](https://github.com/PyThaiNLP/pythainlp/blob/dev/CONTRIBUTING_zh_TW.md)。

## 引用

如果您在專案中使用 `PyThaiNLP` 庫，請按以下方式引用：

> Phatthiyaphaibun, Wannaphong, Korakot Chaovavanich, Charin Polpanumas,
> Arthit Suriyawongkul, Lalita Lowphansirikul, and Pattarawat Chormai.
> “PyThaiNLP: Thai Natural Language Processing in Python”.
> Zenodo, 2 June 2024. <http://doi.org/10.5281/zenodo.3519354>.

BibTeX 條目：

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

若要引用我們在 [NLP-OSS 2023](https://nlposs.github.io/2023/) 發表的學術論文：

> Wannaphong Phatthiyaphaibun, Korakot Chaovavanich, Charin Polpanumas,
> Arthit Suriyawongkul, Lalita Lowphansirikul, Pattarawat Chormai,
> Peerat Limkonchotiwat, Thanathip Suntorntip, and Can Udomcharoenchaikit.
> 2023.
> [PyThaiNLP: Thai Natural Language Processing in Python.](https://aclanthology.org/2023.nlposs-1.4)
> In Proceedings of the 3rd Workshop for Natural Language Processing
> Open Source Software (NLP-OSS 2023),
> pages 25–36, Singapore, Singapore.
> Empirical Methods in Natural Language Processing.

BibTeX 條目：

```bibtex
@inproceedings{phatthiyaphaibun-etal-2023-pythainlp,
    title = "{P}y{T}hai{NLP}: {T}hai Natural Language Processing in {P}ython",
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

## 贊助商

| 標誌 | 說明 |
| --- | ----------- |
| [![VISTEC-depa Thailand Artificial Intelligence Research Institute](https://airesearch.in.th/assets/img/logo/airesearch-logo.svg)](https://airesearch.in.th/) | 自 2019 年以來，我們的貢獻者 Korakot Chaovavanich 和 Lalita Lowphansirikul 得到了 [VISTEC-depa 泰國人工智慧研究所](https://airesearch.in.th/) 的支持。 |
| [![MacStadium](https://i.imgur.com/rKy1dJX.png)](https://www.macstadium.com) | 我們從 [MacStadium](https://www.macstadium.com) 獲得免費的 Mac Mini M1 支持，用於運行 CI 構建。 |

------

<div align="center">
  Made with ❤️ | PyThaiNLP Team 💻 | "We build Thai NLP" 🇹🇭
</div>

------

<div align="center">
  <strong>我們只有一個官方存儲庫在
  https://github.com/PyThaiNLP/pythainlp，另一個鏡像在
  https://gitlab.com/pythainlp/pythainlp</strong>
</div>

<div align="center">
  <strong>如果您使用官方 GitHub 和 GitLab 以外的鏡像代碼，請小心惡意軟體。</strong>
</div>
