---
SPDX-FileCopyrightText: 2026 PyThaiNLP Project
SPDX-FileType: DOCUMENTATION
SPDX-License-Identifier: Apache-2.0
---

# 語料庫測試 (Corpus test)

此目錄包含驗證 PyThaiNLP 中語料庫完整性、格式、可解析性以及目錄功能的測試。

## 目的

這些測試與常規單元測試分開，原因如下：

1. 它們測試實際的文件加載和解析（非 Mock）。
2. 可下載語料庫測試需要網路訪問且速度可能較慢。
3. 它們驗證語料庫的格式和結構。
4. 它們測試語料庫目錄的下載和查詢功能。
5. 它們僅在語料庫文件或語料庫代碼發生更改時執行。

## 測試類別

### 語料庫目錄測試 (`test_catalog.py`)

測試語料庫目錄功能：

- 從遠端伺服器下載目錄。
- 目錄 URL 和路徑驗證。
- 目錄 JSON 結構驗證。
- 查詢特定語料庫詳細資訊。
- 版本資訊驗證。

### 內建語料庫測試 (`test_builtin_corpus.py`)

測試套件中包含的語料庫文件：

- 文本詞彙列表（否定詞、停用詞、音節、單詞等）。
- CSV 文件（府份/省份）。
- 頻率數據 (TNC, TTC)。
- 名稱列表（姓氏、人名）。

### 可下載語料庫測試 (`test_downloadable_corpus.py`)

測試需要下載的語料庫文件：

- OSCAR 詞頻 (96MB)。
- TNC 二連詞 (Bigram) / 三連詞 (Trigram) 頻率 (41MB + 145MB)。

由於下載量較大，這些測試將比其他測試花費更多時間。

## 執行測試

執行所有語料庫測試：

```bash
python -m unittest discover -s tests/corpus -v
```

僅執行目錄測試：

```bash
python -m unittest tests.corpus.test_catalog -v
```

僅執行內建語料庫測試：

```bash
python -m unittest tests.corpus.test_builtin_corpus -v
```

僅執行可下載語料庫測試：

```bash
python -m unittest tests.corpus.test_downloadable_corpus -v
```

## CI 整合

語料庫測試會在以下情況透過 GitHub Actions 工作流程 (`.github/workflows/corpus.yml`) 自動執行：

- `pythainlp/corpus/**` 發生更改。
- `tests/corpus/**` 發生更改。
- 工作流程文件本身被修改。

## 測試內容

每項測試驗證：

1. **加載性**：文件可以無誤加載。
2. **類型正確性**：返回預期的數據類型（frozenset, list, dict）。
3. **非空**：包含實際數據。
4. **格式有效性**：數據結構符合預期格式。
5. **內容有效性**：包含預期內容（例如：泰文字元）。
6. **目錄功能**：目錄可以正確下載和查詢。

## 添加新測試

向 `pythainlp.corpus` 添加新的語料庫文件或函數時：

1. 如果包含在套件中，請向 `test_builtin_corpus.py` 添加測試。
2. 如果需要下載，請向 `test_downloadable_corpus.py` 添加測試。
3. 如果涉及目錄操作，請向 `test_catalog.py` 添加測試。
4. 透過暫時破壞語料庫來驗證測試是否能捕捉到格式錯誤。

## 與單元測試的關係

- **單元測試** (`tests/core/test_corpus.py`)：使用 Mock 以提高速度，測試代碼邏輯。
- **語料庫測試**（此目錄）：使用實際數據，測試文件完整性和目錄。

這兩個測試套件都很重要且互補。
