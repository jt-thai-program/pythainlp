---
SPDX-FileCopyrightText: 2025-2026 PyThaiNLP Project
SPDX-FileType: DOCUMENTATION
SPDX-License-Identifier: CC0-1.0
---

# 如何發布新版本

本專案遵循 [語意化版本 (Semantic Versioning)][semver]。

## 前提條件

安裝包括 `bump-my-version` 在內的開發依賴：

```sh
pip install -e ".[dev]"
```

## 發布流程

1. **檢查套件是否能正確構建**

   在本地構建套件以確保沒有構建錯誤：

   ```sh
   python -m build
   ```

   您也可以在 Commit 訊息中包含 `[cd build]`，以觸發 CI 中的 Wheel 構建。

2. **更新 CHANGELOG.md**

   更新 `CHANGELOG.md`，簡要總結自上一個穩定版本以來的重要變更。例如：棄用或終止支援。請遵循 [Keep a Changelog][keepachangelog] 格式。

3. **使用 bump-my-version 更新版本**

   我們使用 [`bump-my-version`][bump-my-version] 來管理版本號。配置位於 `pyproject.toml` 的 `[tool.bumpversion]` 下。

   版本格式：`MAJOR.MINOR.PATCH[-RELEASE][BUILD]`
   其中 RELEASE 可以是 `dev`, `beta` 或省略（正式版）。

   **如何更新版本：**

   ```sh
   # 用於補丁發布 (例如 5.2.0 -> 5.2.1-dev0)
   bump-my-version bump patch

   # 用於次要版本發布 (例如 5.2.0 -> 5.3.0-dev0)
   bump-my-version bump minor

   # 用於重大版本發布 (例如 5.2.0 -> 6.0.0-dev0)
   bump-my-version bump major

   # 從 dev 移至 beta (例如 5.2.1-dev0 -> 5.2.1-beta0)
   bump-my-version bump release

   # 從 beta 移至 正式版 (例如 5.2.1-beta0 -> 5.2.1)
   bump-my-version bump release

   # 增加構建號 (例如 5.2.1-dev0 -> 5.2.1-dev1)
   bump-my-version bump build
   ```

   此命令將自動更新以下文件中的版本號和發布日期：
   - `pyproject.toml` - 版本號
   - `pythainlp/__init__.py` - 版本號
   - `CITATION.cff` - 版本號和 `date-released` 欄位
   - `codemeta.json` - 版本號和 `dateModified` 欄位

   當您運行 bump 命令時，發布日期會自動設置為當前日期。

   預設情況下，它還會建立 Git Commit 和 Tag。

4. **視需要更新 README 文件**

   如果發布引入了重大更改，請更新：
   - `README.md`
   - `README_TH.md`
   - `README_zh_TW.md`

5. **推送更改和 Tag**

   ```sh
   git push origin dev
   git push origin --tags
   ```

6. **建立 GitHub Release**

   導航到 [發布頁面][releases]，點擊「Draft a new release」按鈕。只有專案維護者能執行此步驟。

7. **選擇 Tag**

   在「Choose a tag」下拉選單中，選擇由 `bump-my-version` 建立的 Tag（例如 `v5.2.1`）。Tag 遵循 `vMAJOR.MINOR.PATCH` 格式。

8. **設置發布標題**

   發布標題應與版本 Tag 相同（例如 `v5.2.1`）。

9. **添加發布說明**

    簡要總結自上一個穩定版本以來的重要變更。這應與 `CHANGELOG.md` 中記錄的內容相似。然後點擊「Generate release notes」按鈕以自動生成貢獻者資訊。

10. **可選：感謝貢獻者**

    您可以在發布說明底部的註解中，選擇性地包含對特定貢獻者或審查者的感謝。

11. **發布 Release**

    點擊「Publish release」按鈕。

12. **驗證 CI/CD**

    如果 [CI][ci] 運行 [成功][actions]，則發布將同時發布到 GitHub 發布頁面和 [Python Package Index (PyPI)][pypi]。

[semver]: https://semver.org/
[keepachangelog]: https://keepachangelog.com/en/1.0.0/
[bump-my-version]: https://github.com/callowayproject/bump-my-version
[releases]: https://github.com/PyThaiNLP/pythainlp/releases
[ci]: https://github.com/PyThaiNLP/pythainlp/blob/dev/.github/workflows/pypi-publish.yml
[actions]: https://github.com/PyThaiNLP/pythainlp/actions/workflows/pypi-publish.yml
[pypi]: https://pypi.org/project/pythainlp/
