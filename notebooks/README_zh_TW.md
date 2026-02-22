---
SPDX-FileCopyrightText: 2016-2026 PyThaiNLP Project
SPDX-FileType: DOCUMENTATION
SPDX-License-Identifier: CC0-1.0
---

# PyThaiNLP 開發筆記本 (Notebooks)

此目錄包含用於 **開發與測試目的** 的 Jupyter 筆記本。這些筆記本 **不是** 為最終用戶準備的，主要是開發人員用來：

- 測試新功能和模型。
- 開發 ONNX 模型轉換。
- 實驗演算法。
- 調試和驗證模組功能。

## 筆記本概覽

### 測試用筆記本

這些筆記本測試特定的模組功能：

- `test_aksonhan.ipynb` - 測試古代泰文腳本轉換。
- `test_chat.ipynb` - 使用 WangChanGLM 測試聊天機器人功能。
- `test_el.ipynb` - 測試實體連結。
- `test_gzip_classify.ipynb` - 測試基於 GZIP 的分類。
- `test_tcc.ipynb` - 測試泰文字元集群 (Thai Character Cluster) 分詞。
- `test_wangchanglm.ipynb` - 測試 WangChanGLM 文本生成。
- `test_wsd.ipynb` - 測試詞義消歧。

### 開發工具

這些筆記本用於構建和準備模型：

- `convert_thai2rom_to_onnx.ipynb` - 將泰文羅馬拼音模型轉換為 ONNX 格式。
- `clean_dict.ipynb` - 詞典清洗和預處理。
- `create_words.ipynb` - 詞彙列表建立和策劃。
- `word_detokenize.ipynb` - 測試詞彙反分詞。

## 致最終用戶

如果您正在尋找如何使用 PyThaiNLP 的範例和教學，請訪問：

- **官方教程**：<https://pythainlp.org/tutorials>
- **入門指南**：<https://pythainlp.org/tutorials/notebooks/pythainlp_get_started.html>
- **官方文件**：<https://pythainlp.org/docs>
- **範例腳本**：請參閱存儲庫根目錄下的 `/examples` 目錄。

## 注意事項

這些筆記本可能會：

- 需要預設未安裝的額外依賴項。
- 使用實驗性或僅限開發的功能。
- 包含未完成或正在開發中的代碼。
- 不會定期維護或更新。
