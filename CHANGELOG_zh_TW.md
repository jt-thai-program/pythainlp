---
SPDX-FileCopyrightText: 2025-2026 PyThaiNLP Project
SPDX-FileType: DOCUMENTATION
SPDX-License-Identifier: CC0-1.0
---

# 變更日誌 (Changelog)

各個版本之間的重要變更。

- 有關完整的發布說明，請參見：<https://github.com/PyThaiNLP/pythainlp/releases>
- 有關詳細的 Commit 變更，請參見：<https://github.com/PyThaiNLP/pythainlp/compare/v5.2.0...dev>（選擇 Tag 進行比較）

## 版本 5.2.0 -> 開發中 (dev)

最低要求的版本現在為 Python 3.9。
已移除對 Python 3.7 和 3.8 的支援。
增加了對 Python 3.14 的官方支援和 CI 測試。

此版本中的某些功能和修復是由 AI 輔助完成的。請參閱 PR 以獲取 Prompt 和詳細資訊。

- 修復 `royin` 羅馬拼音轉寫 #1172
- 修復 `check_marttra()` 中的尾子音分類 #1173
- 延遲加載字典以減少記憶體使用量 #1186
- 修復 `tltk` 轉寫中的 Kho Khon 字母問題 #1187
- 將配置遷移至 pyproject.toml #1188 #1226 #1239
- 更新類型提示；使用 Python 3.9 特性 #1189 #1190 等。
- 移除 volubilis 字典中的重複項目 #1200
- 移除星號導入 (Star imports) #1207
- 移除 `requests` 依賴 #1211
- 使套件支援 Zip-safe #1212
- 確保分詞器的執行緒安全性 (Thread-safety) #1213
- 整合 Thai-NNER 並加入頂層實體過濾功能 #1221
- 按依賴組（torch, tensorflow, onnx, cython, network）重組 noauto 測試套件 #935
- 改進文件；代碼清理；增加更多測試

## 版本 5.1.2 -> 5.2.0

- 增加 `pythainlp.translate.word_translate` #1102
- 更新 Dockerfile #1049
- 使用 Char2Vec 增加詞彙拼寫校正功能 #1075
- 增加泰國古代貨幣轉換器 #1113
- 增加 B-K/umt5-thai-g2p-v2-0.5k #1140
- 增加 budoux 支援 #1161
- 移除 conceptnet #1103
- 修復 CLI 指令的連接性 #1154
- 修復 Docker 構建失敗，增加 Docker Compose 文件以便於使用 #1132

## 版本 5.1.1 -> 5.1.2

- 更新羅馬拼音文件並保留空格 #1110

## 版本 5.1.0 -> 5.1.1

- 重構 `syllable.py` 以使用 set 處理 `thai_consonants_all` #1087
- ThaiTransliterator：選擇 1D CPU int64 tensor 設備 #1089

## 版本 5.0.5 -> 5.1.0

- 增加 Thai Discourse Treebank 詞性標註 #910
- 增加 Thai Universal Dependency Treebank 詞性標註 #916
- 增加 Thai G2P v2 字元轉語音模型 #923
- `sent_tokenize()` 支援字串列表作為輸入 #927
- 增加 `pythainlp.tools.safe_print` 以處理主機台上的 UnicodeEncodeError #969
- 修復 `collate()`，在排序中考慮聲調符號 #926
- 修復 `nlpo3.load_dict()` 在失敗時不顯示錯誤訊息的問題 #979
- 增加泰國公曆轉泰國農曆功能 #998
- 增加泰文 Pangram 文本 #1045
- 移除 `clause_tokenize` #1024

## 版本 5.0.4 -> 5.0.5

- 增加 `clause_tokenize` 警告 #1026
- 修復 `maiyamok()` 擴展錯誤詞彙的問題 #962

## 版本 5.0.3 -> 5.0.4

- 修復：當使用多個 Maiyamok 時，`pythainlp.util.maiyamok` 不會重複詞彙 #917

## 版本 5.0.2 -> 5.0.3

- 修復：當 `word_tokenize` 使用 `join_broken_num=True` 時會添加空字串 ('') 的問題 #912

## 版本 5.0.1 -> 5.0.2

- 修復：crfcut：確保使用終端標點符號切分句子 #905
