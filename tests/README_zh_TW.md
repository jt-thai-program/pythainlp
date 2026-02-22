---
SPDX-FileCopyrightText: 2026 PyThaiNLP Project
SPDX-FileType: DOCUMENTATION
SPDX-License-Identifier: Apache-2.0
---

# 測試套件與執行

要執行特定的測試套件，請執行：

```shell
unittest tests.<測試套件名稱>
```

此命令將執行預設的測試套件集合：

```shell
unittest tests
```

預設測試套件包含 `tests/__init__.py` 文件中列出的所有測試套件。目前包括 `tests.core` 和 `tests.compact`。

為了優化 CI/CD 資源利用並管理依賴開銷，測試根據其資源需求和複雜性分為四個層級：「core」（核心）、「compact」（精簡）、「extra」（額外）和「noauto」（非自動）。

## 向測試套件添加測試用例

要向測試套件添加測試用例，請將其添加到該測試套件目錄下 `__init__.py` 中的 `tests_packages` 列表中。

## CI 測試矩陣

下表概述了支援的 Python 版本和作業系統上的自動測試覆蓋範圍：

| Python         | Ubuntu  | Windows | macOS |
| -------------- | ------- | ------- | ----- |
| 3.14 (最新)    | O+C     | O       | O     |
| 3.13           | O+C+X   | O+C     | O+C   |
| 3.12           | O       |         |       |
| 3.11           | O       |         |       |
| 3.10           | O       |         |       |
| 3.9 (最早)     | O+C     | O+C     | O+C   |

CI/CD 測試工作流程位於 <https://github.com/PyThaiNLP/pythainlp/blob/dev/.github/workflows/unittest.yml>。

## 核心測試 (Core tests, test_*.py)

- 執行 `unittest tests.core`
- 專注於核心功能。
- 不依賴標準庫之外的外部依賴。
- 在所有支援的作業系統和所有活動的 Python 版本上進行測試。
- 測試類別後綴：`TestCase`

## 精簡測試 (Compact tests, testc_*.py)

- 執行 `unittest tests.compact`
  - 需要安裝依賴：`pip install "pythainlp[compact]"`
- 測試依賴於穩定且較小依賴集的一組有限功能。
- 這些依賴項包括 `PyYAML`, `nlpo3`, `numpy`, `pyicu`, `python-crfsuite` 和 `requests`。
- 測試平台：
  - 所有 OS：最早和倒數第二個支援的 Python 版本
  - Ubuntu：額外在最新版本上測試
- 測試類別後綴：`TestCaseC`

## 額外測試 (Extra tests, testx_*.py)

- 執行 `unittest tests.extra`
  - 需要安裝依賴：`pip install "pythainlp[compact,extra]"`
- 測試更多依賴於較大依賴集或需要更多時間/計算的功能。
- 僅在 Ubuntu 上使用倒數第二個 Python 版本進行測試。
- 測試類別後綴：`TestCaseX`

## 非自動測試 (Noauto tests, testn_*.py)

noauto（非自動化）測試套件包含需要沈重依賴項的功能測試，這些依賴項不適合在自動化 CI/CD 流水中執行。這些測試根據其依賴需求組織成專門的套件。

### 為什麼要分開 noauto 測試套件？

不同的 ML/AI 框架通常對其依賴項有衝突的版本要求。例如：

- PyTorch 和 TensorFlow 可能需要不同版本的 numpy 或 protobuf。
- 大型框架需要大量時間安裝（每個約 1-3 GB）。
- 某些套件需要 Cython 編譯或系統庫。

透過按依賴組分離測試，我們可以：

- 獨立測試每個框架而不會產生衝突。
- 透過僅執行相關測試組來優化 CI/CD 資源。
- 方便開發人員測試特定功能。

### Noauto 測試套件

#### 總體套件：tests.noauto

- 執行 `unittest tests.noauto`
- 包含所有模組化的 noauto 測試套件。
- 當所有依賴項都可用時，使用此套件進行全面測試。
- 測試類別後綴：`TestCaseN`

#### 按依賴劃分的模組化套件

##### 基於 PyTorch：tests.noauto_torch

- 執行 `unittest tests.noauto_torch`
  - 需要安裝依賴：`pip install "pythainlp[noauto-torch]"`
- 需要 PyTorch 及其生態系統的測試：
  - torch, transformers (PyTorch 後端)
  - attacut, thai-nner, wtpsplit, tltk
- 測試內容：拼寫校正 (wanchanberta)、NER/POS 標註 (基於 transformers)、分詞 (attacut)、子詞切分 (phayathai, wangchanberta)、句子切分 (wtp)。
- 依賴大小：約 2-3 GB
- 測試類別後綴：`TestCaseN`

##### 基於 TensorFlow：tests.noauto_tensorflow

- 執行 `unittest tests.noauto_tensorflow`
  - 需要安裝依賴：`pip install "pythainlp[noauto-tensorflow]"`
- 需要 TensorFlow 的測試：
  - deepcut 分詞器
- 依賴大小：約 1-2 GB
- 注意：可能與 PyTorch 依賴項衝突。
- 測試類別後綴：`TestCaseN`

##### 基於 ONNX Runtime：tests.noauto_onnx

- 執行 `unittest tests.noauto_onnx`
  - 需要安裝依賴：`pip install "pythainlp[noauto-onnx]"`
- 需要 ONNX Runtime 的測試：
  - oskut, sefr_cut 分詞器
- 依賴大小：約 200-500 MB
- 測試類別後綴：`TestCaseN`

##### Cython 編譯：tests.noauto_cython

- 執行 `unittest tests.noauto_cython`
  - 需要安裝依賴：`pip install "pythainlp[noauto-cython]"`
- 需要 Cython 編譯套件的測試：
  - phunspell 拼寫檢查器
- 需求：Cython, C 編譯器, 系統庫 (hunspell)。
- 特定平台的構建要求。
- 測試類別後綴：`TestCaseN`

##### 網路依賴：tests.noauto_network

- 執行 `unittest tests.noauto_network`
  - 需要安裝依賴：`pip install "pythainlp[noauto-network]"`
- 需要網路訪問的測試：
  - Hugging Face Hub 模型下載
  - 外部 API 調用
- 需求：網際網路連接，可能涉及大型下載。
- 測試類別後綴：`TestCaseN`

## 強健性測試 (Robustness tests, test_robustness.py)

核心測試中的一個全面測試套件，用於測試對實際應用至關重要的邊緣情況：

- 空字串和各種空格處理（空格、製表符、Unicode 空格）。
- 來自編碼問題、BOM、終端機複製/貼上的特殊字元。
- 截斷/損壞的 Unicode 和代理對 (surrogate pairs)。
- 表情符號和現代 Unicode 序列 (ZWJ, 修飾符, 旗幟)。
- 控制字元和隱藏/不可見字元（零寬度字元, 控制字元）。
- 結合字元和混合腳本的泰文特定邊緣情況。
- 跨所有核心分詞引擎的多引擎強健性測試。
- 可能導致性能問題的極長字串（Issue #893）。

## 語料庫測試 (Corpus test, corpus/)

一個獨立的測試套件，用於驗證 PyThaiNLP 語料庫的完整性、格式、可解析性以及目錄功能。

這些測試與常規單元測試分開，因為它們測試實際的文件加載和解析（非 Mock）、需要網路訪問，且可能耗費資源。

有關語料庫測試的詳細資訊，請參閱：[tests/corpus/README_zh_TW.md](corpus/README_zh_TW.md)

當 `pythainlp/corpus/**` 或 `tests/corpus/**` 發生更改時，語料庫測試會透過 GitHub Actions 自動觸發。

執行語料庫測試：

```shell
python -m unittest tests.corpus
```
