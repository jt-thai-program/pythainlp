# 類型註解分析數據文件

此目錄包含來自類型註解覆蓋率分析的詳細數據文件。請注意，分析可能不是高度準確的，並可能包含偽陽性，部分原因是某些情況豁免了註解要求，如 [Python 類型文檔的類型完整性指南][type-completeness] 中所列。

[type-completeness]: https://typing.python.org/en/latest/guides/libraries.html#type-completeness

## 文件

### type_hint_analysis.json

來自分析的原始 JSON 數據，包含有關函數、方法和統計的所有詳細資訊。

### submodule_summary.csv

每個子模組的摘要統計，顯示：

- 函數/方法總數
- 具有完整類型提示的數量
- 具有不完整類型提示的數量
- 沒有類型提示的數量
- 具有完整類型提示的百分比
- 檢測到的 mypy 錯誤數量

### functions_no_hints.csv

**完全沒有任何類型提示**的函數和方法的完整列表，包括：

- 函數名稱（完全限定名）
- 子模組
- 作用域（公開/私有）
- 優先級（高/中/低）
- 內部引用次數
- 測試套件 (core/compact/extra/noauto/unknown)
- 文件路徑和行號

### functions_incomplete_hints.csv

**帶有不完整類型提示**的函數和方法的完整列表，包括：

- 函數名稱（完全限定名）
- 子模組
- 作用域（公開/私有）
- 優先級（高/中/低）
- 具有提示的參數（例如："2/3" 表示 3 個參數中有 2 個具有類型提示）
- 是否具有返回提示 (True/False)
- 內部引用次數
- 測試套件 (core/compact/extra/noauto/unknown)
- 文件路徑和行號

## 用法

這些文件可以：

- 在試算表應用程序（Excel, Google Sheets, LibreOffice Calc）中打開。
- 導入數據庫進行分析。
- 使用命令行工具（`csvkit`, `pandas` 等）進行處理。
- 用於追蹤改善類型提示覆蓋率的進度。

## 過濾範例

### 尋找沒有提示的高優先級公開函數

```bash
csvgrep -c Priority -m "high" functions_no_hints.csv | csvgrep -c Scope -m "public"
```

### 顯示特定子模組中的函數

```bash
csvgrep -c Submodule -m "transliterate" functions_no_hints.csv
```

### 按引用次數排序

```bash
csvsort -c References -r functions_no_hints.csv
```

## 相關文件

- `../type-analyzer.py` - 主分析器腳本
- `../gen-csv.py` - CSV 生成器腳本

## 更新分析

要重新生成此分析：

```bash
# 進入分析目錄
cd build_tools/analysis

# 執行分析器
python type-analyzer.py

# 生成 CSV 文件
python gen-csv.py
```
