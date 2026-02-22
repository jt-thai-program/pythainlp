# 代碼分析工具

此目錄包含用於分析 PyThaiNLP 代碼庫的工具。

## 類型註解分析 (Type annotation analysis)

### 概覽

類型註解分析系統提供整個 PyThaiNLP 代碼庫中類型註解的全面覆蓋率分析。它遵循 [Python 類型文檔的類型完整性指南][type-completeness] 來估計類型註解的質量和完整性。

[type-completeness]: https://typing.python.org/en/latest/guides/libraries.html#type-completeness

### 腳本

#### type-analyzer.py

使用 Python 的抽象語法樹 (AST) 模組執行全面類型註解覆蓋率分析的主腳本。

**分析內容：**

- **函數與方法**：參數類型、返回類型及其完整性狀態。
- **類別變數**：帶有或不帶有類型註解的類別級屬性。
- **實體變數**：帶有或不帶有註解的實體屬性 (`self.attr`)。
- **模組變數**：模組級變數和常量。
- **類型別名**：TypeAlias 定義 (`MyType: TypeAlias = dict[str, int]`)。
- **裝飾器**：追蹤函數和方法上的裝飾器使用情況。
- **測試覆蓋率**：將函數映射到測試套件（core, compact, extra, noauto）。
- **代碼使用情況**：統計內部引用次數以確定重要性。
- **類型檢查器錯誤**：在每個子模組上執行 mypy 以統計與類型相關的錯誤。

**實作細節：**

分析器使用 Python 的 `ast` 模組來解析和遍歷每個 Python 文件的語法樹。核心組件：

- `TypeHintAnalyzer` 類別：自定義的 `ast.NodeVisitor`，訪問每個節點。
- `visit_FunctionDef()`：分析函數/方法簽名。
- `visit_ClassDef()`：追蹤類別上下文以進行變數分析。
- `visit_AnnAssign()`：處理帶註解的賦值（帶有類型提示的變數）。
- `visit_Assign()`：處理不帶註解的賦值以供比較。

分析器區分以下作用域：
- 模組級作用域（文件頂部）
- 類別級作用域（類別定義內部）
- 函數級作用域（函數/方法內部）
- 實體作用域（`self.attr` 賦值）

**輸出：**

- 帶有摘要統計和按優先級排序列表的控制台報告。
- `output/type_hint_analysis.json` - 包含所有分析結果的詳細 JSON 數據。

**用法：**

為了獲得最佳結果，在執行分析器之前，請刪除所有先前的數據文件（`*.csv`, `*.json`）並清除 mypy 及任何其他靜態類型檢查器的快取。

```bash
# 在 build_tools/analysis 目錄下執行（預設輸出到 ./output）
python type-analyzer.py

# 或指定自定義輸出目錄
python type-analyzer.py --output-dir /path/to/output

# 獲取幫助
python type-analyzer.py --help
```

透過安裝可選依賴項（以及它們的類型 stub，如果有的話）來增強類型發現，從而實現更準確的靜態分析。

#### gen-csv.py

將 `type-analyzer.py` 的 JSON 輸出轉換為 CSV 文件，以便在試算表應用程序或數據分析工具中進行分析。

**前提條件：**

- 必須先執行 `type-analyzer.py` 以生成 JSON 數據。

**輸出：**

- `output/functions_no_hints.csv` - 完全沒有類型提示的函數。
- `output/functions_incomplete_hints.csv` - 帶有部分提示的函數。
- `output/class_variables_no_hints.csv` - 沒有類型提示的類別變數。
- `output/instance_variables_no_hints.csv` - 沒有類型提示的實體變數。
- `output/module_variables_no_hints.csv` - 沒有類型提示的模組變數。
- `output/type_aliases.csv` - 代碼庫中定義的所有類型別名。
- `output/submodule_summary.csv` - 按子模組劃分的摘要統計數據（含 mypy 錯誤）。

**用法：**

```bash
# 在 build_tools/analysis 目錄下執行（預設使用 ./output）
python gen-csv.py

# 或指定自定義路徑
python gen-csv.py --input /path/to/input.json --output-dir /path/to/output
```

### 完整工作流程

執行完整的類型註解分析：

```bash
# 進入分析目錄
cd build_tools/analysis

# 1. 執行分析器（預設輸出到 ./output）
python type-analyzer.py

# 2. 生成 CSV 文件（預設從 ./output 讀取）
python gen-csv.py

# 3. 查看結果
ls -la output/
```

### 自動化分析

存儲庫包含一個 GitHub Actions 工作流程，該工作流程在每次推送到 `dev` 分支時自動執行類型提示分析器：

- **工作流程**：`.github/workflows/type-hint-analysis.yml`
- **觸發器**：推送到 `dev` 分支。
- **產物**：JSON 和 CSV 文件（保留 30 天）。
- **摘要**：顯示在 GitHub Actions 介面中。

這為代碼庫演進過程中的類型提示覆蓋率提供了持續監控。

---
更多詳細資訊請參閱 [output/README_zh_TW.md](output/README_zh_TW.md)。
