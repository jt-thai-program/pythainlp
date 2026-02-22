---
SPDX-FileCopyrightText: 2025-2026 PyThaiNLP Project
SPDX-FileType: DOCUMENTATION
SPDX-License-Identifier: CC0-1.0
---

# 貢獻指南 PyThaiNLP

嗨！感謝您有興趣貢獻於 [PyThaiNLP](https://github.com/PyThaiNLP/pythainlp)。

請參閱我們的 [貢獻者公約行為準則](https://github.com/PyThaiNLP/pythainlp/blob/dev/CODE_OF_CONDUCT_zh_TW.md)。

## 問題回報與討論

- 討論區：<https://github.com/PyThaiNLP/pythainlp/discussions>
- GitHub Issues（用於報告問題和建議）：<https://github.com/PyThaiNLP/pythainlp/issues>
- Facebook 社團（用於一般的泰文 NLP 討論，非 PyThaiNLP 專屬）：<https://www.facebook.com/groups/thainlp>

## 代碼

## 代碼指南

- 遵循 [PEP8][pep8]，使用 [black][black] 並設置 `--line-length` = 79；
- 命名標識符（變數、類、函數、模組名稱）應具有意義且可讀（`x` 永遠是不好的命名）；
  - 請遵循此 [命名慣例][naming]。例如：全域常量必須使用 `ALL_CAPS`；
    ![Naming Convention](https://i.stack.imgur.com/uBr10.png)
- 為您的新功能編寫測試。測試套件位於 `tests/` 目錄中（請參閱下文的「測試」部分）；
- 在 Push 之前運行所有測試（只需執行 `tox`），這樣您就會知道您的更改是否破壞了某些功能；
- 被註釋掉的代碼是 [死代碼][dead-codes]；
- 所有 `#TODO` 註釋都應轉化為 GitHub 中的 [Issues][issues]；
- 在適當的情況下使用 [f-string][pep0498]（使用 `f"{a} = {b}"`，而不是 `"{} = {}".format(a, b)` 或 `"%s = %s' % (a, b)"`）；
- 所有文本文件（包括源代碼）必須以一個空行結束。這是為了 [讓 Git 開心][empty-line] 並符合 [POSIX 標準][posix]。

[pep8]: http://www.python.org/dev/peps/pep-0008/
[black]: https://github.com/ambv/black
[naming]: https://namingconvention.org/python/
[pep0498]: https://www.python.org/dev/peps/pep-0498/
[dead-codes]: http://www.codinghorror.com/blog/2008/07/coding-without-comments.html
[issues]: https://github.com/pythainlp/pythainlp/issues
[empty-line]: https://stackoverflow.com/questions/5813311/no-newline-at-end-of-file#5813359
[posix]: https://stackoverflow.com/questions/729692/why-should-text-files-end-with-a-newline

### 版本控制系統

- 我們使用 [Git](http://git-scm.com/) 作為 [版本控制系統](http://en.wikipedia.org/wiki/Revision_control)，因此熟悉它是一個好主意。
- 您可以從 [Pro Git book](http://git-scm.com/book/) 開始（免費！）。

### Commit 訊息

- [如何編寫 Git Commit 訊息](https://chris.beams.io/posts/git-commit/)
- [Commit 動詞 101：為什麼我喜歡使用這個，以及為什麼你也應該喜歡它。](https://chris.beams.io/posts/git-commit/)

### Pull Request

- 我們使用著名的 [gitflow][] 來管理我們的分支。
- 當您在 GitHub 上建立 Pull Request 時，GitHub Actions 會自動運行測試和多項檢查。點擊每項檢查末尾的「Details」鏈接以查看需要修復的內容。

[gitflow]: http://nvie.com/posts/a-successful-git-branching-model/

## 文件

- 我們使用 [Sphinx](https://www.sphinx-doc.org/en/master/) 從源代碼中的 "docstring" 註釋自動生成 API 文件。這意味著源代碼中的註釋部分對於文件質量非常重要。
- Docstring 應以一個摘要行開始，以句點（full stop）結束，然後在開始新段落之前空一行。
- 對發布分支（例如 `2.2`, `2.1`）提交標題為 **"(build and deploy docs)"**（不帶引號）的 Commit 將觸發系統重新構建文件並將其上傳到網站 <https://pythainlp.org/docs>。

## 測試

我們使用標準的 Python `unittest`。測試套件位於 `tests/` 目錄中。

要在本地運行單元測試以及代碼覆蓋率測試：

（在 `pythainlp/` 主目錄下）

```sh
coverage run -m unittest tests.core
```

查看代碼覆蓋率報告：

```sh
coverage report
```

生成 HTML 格式的代碼覆蓋率報告（文件將保存在 `htmlcov/` 目錄中）：

```sh
coverage html
```

確保測試在 GitHub Actions 上通過。

詳見 [tests/README_zh_TW.md](./tests/README_zh_TW.md)

## 安裝與構建

### 開發安裝

以可編輯模式安裝 PyThaiNLP 及其核心依賴：

```sh
pip install -e .
```

安裝可選依賴組：

```sh
# 安裝精簡版依賴（建議開發使用）
pip install -e ".[compact]"

# 安裝額外依賴（可能非常大）
pip install -e ".[compact,extra]"
```

在 `pyproject.toml` 的 `[project.optional-dependencies]` 下查看所有可用的可選依賴組。

### 構建發布包

要構建源發布包和 wheel：

```sh
python -m build
```

這將在 `dist/` 目錄中建立發布包。

## 發布

- 我們使用 [語意化版本 (Semantic Versioning)][semver]：MAJOR.MINOR.PATCH，開發構建後綴為：MAJOR.MINOR.PATCH-devBUILD
- 我們使用 [`bump-my-version`][bump-my-version] 來管理版本控制。配置位於 `pyproject.toml` 的 `[tool.bumpversion]` 下。
  - `bump-my-version bump [major|minor|patch|release|build]`
  - 範例：

  ```sh
  #current_version = 2.3.3-dev0

  bump-my-version bump build
  #current_version = 2.3.3-dev1

  bump-my-version bump build
  #current_version = 2.3.3-dev2

  bump-my-version bump release
  #current_version = 2.3.3-beta0

  bump-my-version bump release
  #current_version = 2.3.3

  bump-my-version bump patch
  #current_version = 2.3.4-dev0

  bump-my-version bump minor
  #current_version = 2.4.0-dev0

  bump-my-version bump build
  #current_version = 2.4.0-dev1

  bump-my-version bump major
  #current_version = 3.0.0-dev0

  bump-my-version bump release
  #current_version = 3.0.0-beta0

  bump-my-version bump release
  #current_version = 3.0.0
  ```

- 閱讀完整的 [如何發布新版本](./release_zh_TW.md) 文件。

[semver]: https://semver.org/
[bump-my-version]: https://github.com/callowayproject/bump-my-version

## 致謝

[![Contributors](https://contributors-img.firebaseapp.com/image?repo=PyThaiNLP/pythainlp)](https://github.com/PyThaiNLP/pythainlp/graphs/contributors)

感謝所有 [貢獻者](https://github.com/PyThaiNLP/pythainlp/graphs/contributors)。
（圖片由 [contributors-img](https://contributors-img.firebaseapp.com) 生成）

### 開發主導

- Wannaphong Phatthiyaphaibun <wannaphong@pythainlp.org> - 基礎、發布與維護
- Korakot Chaovavanich - 初始分詞和 Soundex 代碼
- Charin Polpanumas - 分類與基準測試
- Arthit Suriyawongkul - 本地化功能、文件、測試、重構、代碼現代化及 CI/構建基礎設施
- Lalita Lowphansirikul - 文件
- Pattarawat Chormai - 基準測試
- Peerat Limkonchotiwat
- Thanathip Suntorntip - nlpO3 維護，Rust 開發者
- Can Udomcharoenchaikit - 文件與代碼

### 維護者

- Arthit Suriyawongkul
- Wannaphong Phatthiyaphaibun

### 過去貢獻者

- Peeradej Tanruangporn - 文件

## 參考資料

- **[Maximum Matching]** -- Manabu Sassano. Deterministic Word Segmentation Using Maximum Matching with Fully Lexicalized Rules. <https://doi.org/10.3115/v1/E14-4016>
- **[MetaSound]** -- Snae & Brückner. (2009). Novel Phonetic Name Matching Algorithm with a Statistical Ontology for Analysing Names Given in Accordance with Thai Astrology. <https://pdfs.semanticscholar.org/3983/963e87ddc6dfdbb291099aa3927a0e3e4ea6.pdf>
- **[Thai Character Cluster]** -- T. Teeramunkong, V. Sornlertlamvanich, T. Tanhermhong and W. Chinnan, “Character cluster based Thai information retrieval,” in IRAL '00 Proceedings of the fifth international workshop on Information retrieval with Asian languages, 2000.
- **[Enhanced Thai Character Cluster]** -- Jeeragone Inrut, Patiroop Yuanghirun, Sarayut Paludkong, Supot Nitsuwat, and Para Limmaneepraserth. “Thai word segmentation using combination of forward and backward longest matching techniques.” In International Symposium on Communications and Information Technology (ISCIT), pp. 37-40. 2001.
- **[Thai Stopword List]** -- เพ็ญศิริ ลี้ตระกูล. การเลือกประโยคสำคัญในการสรุปความภาษาไทย โดยใช้แบบจำลองแบบลำดับชั้น (Selection of Important Sentences in Thai Text Summarization Using a Hierarchical Model). <https://digital.library.tu.ac.th/tu_dc/frontend/Info/item/dc:124897>
- **[Thai Discourse Treebank]** -- Ponrawee Prasertsom, Apiwat Jaroonpol, Attapol T. Rutherford; The Thai Discourse Treebank: Annotating and Classifying Thai Discourse Connectives. Transactions of the Association for Computational Linguistics 2024; 12 613–629. doi: <https://doi.org/10.1162/tacl_a_00650>
