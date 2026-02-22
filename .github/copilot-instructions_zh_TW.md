# 指引 (Instructions)

## PyThaiNLP 專屬指引

- [ ] 遵循 <https://github.com/PyThaiNLP/pythainlp/blob/dev/tests/README_zh_TW.md> 中的測試套件分類和測試矩陣。該文件列出了測試類別、其依賴集以及測試命名慣例。
- [ ] 使用 reStructuredText 編寫 Docstring (PEP 287)，目標為 Sphinx。
- [ ] 在可能的情況下，遵循 NLTK 建立的子模組命名慣例（傾向於使用動詞或通用名詞）、函數名稱和配置。在代碼審查期間與使用者溝通。參見 <https://www.nltk.org/py-modindex.html>。
- [ ] 位於 <https://github.com/PyThaiNLP/pythainlp/blob/dev/build_tools/analysis/type-analyzer.py> 的類型資訊分析器可以生成有關 PyThaiNLP 存儲庫中變數、函數、方法、類型別名、裝飾器和類別的註解完整性資訊。使用它來協助維持存儲庫中 100% 的類型完整性。請閱讀其用法及生成的資訊：<https://github.com/PyThaiNLP/pythainlp/blob/dev/build_tools/analysis/README_zh_TW.md>。請注意，分析器可能會產生偽陽性，如有疑問請參考 Python 類型規範。
- [ ] 完成函數、方法、類別、變數等的類型註解。維持接近 100% 的類型註解覆蓋率。
- [ ] 為新功能或行為添加測試。保持高測試覆蓋率。
- [ ] 添加測試用例以捕捉邊緣情況 (Edge cases)。
- [ ] 添加測試用例以覆蓋代碼分支。
- [ ] 重大變更應記錄在 <https://github.com/PyThaiNLP/pythainlp/blob/dev/CHANGELOG_zh_TW.md> 的變更日誌中。如果可用，請提供 Issue 編號或 PR 編號。

## 專案貢獻指南

- [ ] 遵循專案既有的代碼風格和慣例。
- [ ] 在提交代碼前執行 Ruff 並修復錯誤。
  - [ ] 新代碼應編寫為通過所有 Ruff 檢查。
  - [ ] McCabe 複雜度應保持在低水平；重構超過 10 的新代碼。
  - [ ] 在進行更改時，應逐步改進現有代碼以通過 Ruff 檢查。
- [ ] 編寫清晰簡潔的 Commit 訊息，準確描述所做的更改。
- [ ] 對於重大變更，更新 `CHANGELOG_zh_TW.md` 文件以記錄變更。
  - [ ] 遵循 "Keep a Changelog" 原則 <https://keepachangelog.com/en/1.0.0/>
  - [ ] 版本號使用語意化版本 (Semantic Versioning) <https://semver.org/>
  - [ ] 如果是重大變更 (Breaking change)，請在變更日誌中清楚標出。
    - [ ] 必要時提供遷移說明。
- [ ] 不要在代碼或文件檔案中留下行尾空格，除非該空格是明確必要的。
- [ ] `pyproject.toml`, `codemeta.json`, `CITATION.cff` 及其他專案元數據文件中的資訊應保持一致且最新。
  - [ ] 專案名稱
  - [ ] 專案版本
  - [ ] 作者/貢獻者名稱
  - [ ] 授權資訊
  - [ ] 專案描述
  - [ ] 存儲庫 URL
  - [ ] 關鍵字/標籤（盡可能按相同順序排列）

## 一般語言使用

- [ ] 編寫簡短簡單的註釋。不要陳述顯而易見的事情。
- [ ] 傾向於使用清晰、簡潔且無歧義的句子。
- [ ] 不要使用可能無法被普遍理解的術語、俚語或慣用語。
- [ ] 盡可能使用主動語態。
- [ ] 在整個代碼和文件中使用一致的術語。
- [ ] 在第一次使用縮寫詞和簡寫時進行定義。
- [ ] 準確且適當地使用技術術語。
- [ ] 避免不必要的複雜性和冗長。
- [ ] 使用正確的語法、標點符號和拼字。
- [ ] 對日期、時間、數字和計量單位使用一致的格式。
- [ ] 使用計量單位縮寫時，遵循國際單位制 (SI) 慣例。
- [ ] 使用代碼片段時，確保其格式正確並遵循所用編程語言的慣例。
- [ ] 避免使用可能有多種解釋的詞彙和短語。
- [ ] 避免過長的段落。將文本拆分為較小的段落，使用項目符號或建立編號列表以提高可讀性。
- [ ] 通過區分不同的概念、過程、標準或類別來幫助讀者理解。
- [ ] 在列表和文件中使用對應的語言結構。
- [ ] 使用統一的寫作風格，特別是在呈現相似或相關資訊時，以便讀者輕鬆比較。
- [ ] 除非另有說明，否則引用/參照請使用芝加哥格式 (Chicago style)。
- [ ] 在編寫需求等級時，一致地使用動詞形式。使用 ISO/IEC 動詞形式（ISO/IEC Directives, Part 2）或 IETF 動詞形式（RFC 2119 和 RFC 8174）。嘗試根據文件的類型/領域檢測需求等級。一般而言，網際網路/Web/語義網專案預設使用 IETF。SPDX 專案預設使用 ISO。
- [ ] 一致地使用美式英語拼寫。

## 命名慣例

- [ ] 遵循您所使用的編程語言和框架的標準命名慣例。
- [ ] 名稱中僅使用 ASCII 字母、數字、連字號 (-) 和底線 (_)。
- [ ] 對於 URL/IRI，使用小寫字母和連字號分隔單詞（例如 `my-api-endpoint`），並遵循 W3C 的語義網 Cool URIs：<https://www.w3.org/TR/cooluris/>
- [ ] 在決定名稱時參考 Schema.org 詞彙表。
- [ ] 參考 "Style Guidelines for Naming and Labeling Ontologies in the Multilingual Web" <https://www.researchgate.net/publication/277224472>

## 整潔的代碼與文件

- [ ] 確保代碼格式良好且符合所用編程語言的風格指南。
- [ ] 在適用情況下使用 Linter 和格式化工具 (Formatter)。
- [ ] 在文件的標題和題目中使用 "Sentence case"（首字母大寫）。
- [ ] 為您的代碼編寫清晰簡潔的註釋和文件。對於顯而易見的部分，避免僅僅重複代碼內容的註釋。
- [ ] 進行更改後，審查代碼和文件以確保其即時性、正確性、一致性和清晰度。
- [ ] 確保所有代碼註釋、API 和文件與代碼庫的當前狀態一致。
- [ ] 確保文件中的範例是可執行的、最新的，並且反映了代碼的當前行為。

## 文件標頭 (File header)

- [ ] 在可能的情況下，將相關的 SPDX 文件標籤放在文件標頭。參見 <https://spdx.github.io/spdx-spec/v2.3/file-information/>
  - [ ] SPDX-FileContributor
  - [ ] SPDX-FileCopyrightText
  - [ ] 代碼的預設 SPDX-FileType 為 "SOURCE"
  - [ ] 文件的預設 SPDX-FileType 為 "DOCUMENTATION"
  - [ ] 代碼的預設 SPDX-License-Identifier 為 "Apache-2.0"
  - [ ] 文件的預設 SPDX-License-Identifier 為 "CC0-1.0"
  - [ ] 對 SPDX 元數據進行排序。

## Shell 腳本與命令行

- [ ] 注意 GNU, BSD, macOS 以及常見 Unix 工具其他實作之間的差異。
- [ ] 在變數擴展時保持防禦性。
- [ ] 使用引號或其他結構來封裝路徑，使其與不同類型的 Shell 兼容。
- [ ] 注意不同類型引號的語意。

## 庫導入與依賴項

- [ ] 檢查庫/模組/套件名稱的正確性。非常小心 Slopsquatting 和 Typosquatting 攻擊。
- [ ] 使用當前作業系統/編譯器/框架支援的最新版本庫。
- [ ] 在原始碼中，按編程語言慣例對導入 (Import) 進行分組和排序（例如在 Python 中，通常先導入標準庫，然後是第三方庫），並盡可能按字母順序排列。注意某些依賴項的特定導入順序要求，因為更改順序可能會破壞代碼或建立循環導入問題。
- [ ] 移除未使用的導入。
- [ ] 在構建元數據（如 Python 的 `pyproject.toml`）或依賴清單（如 Python 的 `requirements.txt`）中，對依賴項進行排序。
- [ ] 警告使用者關於長期未維護的廢棄依賴項，並建議等效的替代方案。

## 安全性

- [ ] 避免使用已棄用、過時或不安全的庫、框架或 API。
- [ ] 處理敏感數據（如密碼、API 金鑰、個人數據）時，遵循數據保護和隱私的最佳實踐。
- [ ] 避免在代碼庫中直接硬編碼敏感資訊。
- [ ] 驗證並清理所有使用者輸入，以防止 SQL 注入、跨站腳本 (XSS) 和緩衝區溢位等安全漏洞。
- [ ] 定期將依賴項更新到最新的安全版本。
- [ ] 建議涉及密碼學的代碼時，使用強大且成熟的演算法和金鑰長度。
- [ ] 處理身份驗證和授權時，遵循 OAuth2, OpenID Connect 等最佳實踐和標準。
- [ ] 除非絕對必要且安全，否則避免使用 `eval()` 及類似執行任意代碼的函數。
- [ ] 避免反序列化不受信任的數據 (CWE-502)。
  - [ ] 在 Python 中，避免使用 `pickle` 模組進行序列化/反序列化。
- [ ] 處理文件和路徑時，小心路徑遍歷漏洞，如 CWE-22。

## API

- [ ] 整體架構、代碼和 API 端點應遵循 <https://spec.openapis.org/oas/> 上的最新版本 OpenAPI 規範。
- [ ] API 端點必須使用正確的 HTTP 返回碼。
- [ ] 遵循 OpenAPI, IETF, W3C 等推薦的 Web 最佳實踐。

## Git

- [ ] 遵循以下指引編寫良好的 Commit 訊息：
  - How to Write a Git Commit Message <https://chris.beams.io/posts/git-commit/>
  - Commit Verbs 101 <https://chris.beams.io/posts/git-commit/>

## Python

- [ ] 維持原始碼的可讀性。
- [ ] 使用地道的 Python (Idiomatic Python)。
- [ ] 在可能的情況下，所有配置都應放在一個地方，即 `pyproject.toml`。在表現力足夠的情況下使用現代 TOML 語法。
- [ ] 防禦性編程：在處理函數參數、文件 I/O、網路 I/O 等外部輸入時，始終檢查 None/空值並處理異常。
- [ ] 盡可能完成函數、方法、類別和變數的類型註解。
  - [ ] 遵循最佳實踐和標準 Python 類型提示模式。
  - [ ] 使用 mypy 作為輔助。
    - [ ] mypy 包含在 "dev" 可選依賴中。
    - [ ] 有時 mypy 可能會因為快取問題而報錯。如果發生非預期錯誤，請嘗試重置快取。
  - [ ] 使用 pyright, pyrefly 和 pytype 獲得第二意見。
  - [ ] 插入類型導入時，將其放在適當的位置和順序。盡可能使用 `if TYPE_CHECKING: import` 區塊。
  - [ ] 盡量減少 `Any` 的使用。嘗試尋找外部庫類型資訊的來源：
    - [ ] 檢查是否有類型 stub 可用並安裝它。
    - [ ] 檢查是否有原始碼可用並分析其正確類型。開源庫通常在網路（如 GitHub, GitLab, Codeberg）上提供原始碼。嘗試從 PyPI/pip 的元數據中找到原始碼存儲庫。
  - [ ] 重新檢查類型轉型 (Casting) 的必要性。
  - [ ] 重新檢查 `# noqa:` 和 `# type: ignore` 的必要性。
  - [ ] 重新檢查 Docstring 和文件與代碼的一致性；它們應與更新後的類型提示匹配。
  - [ ] 在 Docstring 中，對非標準庫類型使用完全限定名 (Full qualified name)。例如使用 `numpy.ndarray` 而非 `ndarray`；使用 `pandas.DataFrame` 而非 `pd.DataFrame`。這樣使用者可以確切知道數據類型來自哪個模組。
- [ ] 根據 <https://typing.python.org/en/latest/guides/libraries.html#type-completeness> 嘗試實現類型完整性。另請參考 <https://typing.python.org/en/latest/spec/> 上的 Python 類型規範。
- [ ] `pyproject.toml` 中的 `requires-python` 應反映專案支援的最低 Python 版本。
- [ ] 不要引入指定最低 Python 版本不支援的語法或功能，除非通過 `__future__` 導入支援。
- [ ] 如果最低 Python 版本低於 3.10，請勿在任何地方使用 `A | B` 聯合類型語法。
- [ ] 確保類型註解可以被執行時類型檢查工具、文件生成器和靜態分析工具正確使用。例如 `typing.get_type_hints()` 和 `inspect` 應能正常工作。
- [ ] 生產環境代碼中不允許使用 `assert`（僅允許用於測試和調試）。
- [ ] 函數/方法定義中不要使用可變預設參數 (Mutable default arguments)。
- [ ] 不要使用通配符導入 (from module import *)。
- [ ] 重新排序導入時，小心不要（重新）引入循環導入。閱讀導入附近的註釋以獲取更多資訊。
- [ ] 移除未使用的導入。
- [ ] 移除 Python 文件中任何行尾空格。
- [ ] 如果可能，使套件支援 Zip-safe。
- [ ] 注意數據結構的選擇。除非有特定需求，否則傾向於使用內建數據結構（如 list, dict, set 和 tuple）。如果需要專門的數據結構，考慮使用 `collections` 和 `collections.abc` 模組中適當的集合類型。針對特定案例使用最合適的數據結構，以優化性能和記憶體使用。
- [ ] 使用 Ruff 重新檢查格式。
- [ ] 進行打包時，套件元數據應遵循核心元數據規範 <https://packaging.python.org/en/latest/specifications/core-metadata/>。

## Python 類型完整性 (Type completeness)

以下是定義「類型完整」的最佳實踐建議：

- [ ] 類別 (Classes)：
  - [ ] 所有「可見」的（未被覆蓋的）類別變數、實體變數和方法都已標註並指向已知類型。
  - [ ] 如果類別是泛型類別的子類，則為每個泛型參數提供類型參數，且這些類型參數是已知類型。
- [ ] 函數與方法：
  - [ ] 所有輸入參數都有指向已知類型的類型註解。
  - [ ] 返回參數已標註並指向已知類型。
  - [ ] 應用一個或多個裝飾器後的結果是已知類型。
- [ ] 類型別名 (Type Aliases)：
  - [ ] 類型別名所引用的所有類型都是已知的。
- [ ] 變數：
  - [ ] 所有變數都有指向已知類型的類型註解。

在少數幾種情況下，如果類型在上下文中是顯而易見的，則可以省略類型註解：

- 被賦予簡單字面值的常量（例如 `RED = '#F00'` 或 `MAX_TIMEOUT = 50` 或 `room_temperature: Final = 20`）。常量是僅被賦值一次的符號，且標註為 `Final` 或以全大寫命名。未被賦予簡單字面值的常量需要明確標註，最好使用 `Final`（例如 `WOODWINDS: Final[list[str]] = ['Oboe', 'Bassoon']`）。
- `Enum` 類別內的列舉值不需要標註，因為它們繼承了 `Enum` 類別的類型。
- 類型別名不需要標註。類型別名是在模組級別定義的符號，其賦值內容是一個可實例化的類型，而非類別實體（例如 `Foo = Callable[[Literal["a", "b"]], int | str]`）。
- 實體方法中的 `self` 參數和類別方法中的 `cls` 參數不需要明確標註。
- `__init__` 方法的返回類型不需要指定，因為它始終是 `None`。
- 以下模組級符號不需要類型註解：`__all__`, `__author__`, `__copyright__`, `__email__`, `__license__`, `__title__`, `__uri__`, `__version__`。
- 以下類別級符號不需要類型註解：`__class__`, `__dict__`, `__doc__`, `__module__`, `__slots__`。

## JSON

- [ ] 序列化為 JSON 時，始終將十進制值（例如 xs:decimal）放在引號內，以保證正確的類型解釋並保持精度。
- [ ] 確保 JSON 有效且格式良好。

## Markdown

- [ ] 在 Markdown 文件中包含元數據時，將其放在三連字號行之間的 YAML 中（如 Hugo 和 Jekyll 所使用的 Front matter）。
- [ ] 嚴格遵守 Markdown 格式。請注意，在 GitHub 上可用的功能可能無法在 MkDocs 上運作。盡量遵循標準 Markdown。
- [ ] 使用 Markdownlint 檢測並修復格式錯誤。

## 圖表 (Diagram)

- [ ] 以 ASCII/文本繪製圖表時，重新檢查所有線條是否對齊。計算字元並調整空格以使線條完美對齊。

## HTML

- [ ] 確保 HTML 有效且格式良好。
- [ ] 確保 HTML 文件中沒有行尾空格。
- [ ] 關注無障礙環境 (Accessibility)。盡可能遵循 W3C 網頁內容無障礙指南。
- [ ] 使用有意義且簡潔的元素 ID 和名稱，以提高代碼可讀性，名稱分組也有幫助。

## CSS

- [ ] 確保沒有未使用的樣式。
- [ ] 使用有意義且簡潔的元素 ID 和名稱，以提高代碼可讀性，名稱分組也有幫助。

## 版本

- [ ] 建議依賴項時，重新檢查版本；確認版本是否存在，或該版本是否與系統或其他依賴項兼容。
- [ ] 在適用情況下傾向於使用語意化版本 (Semantic Version)。
