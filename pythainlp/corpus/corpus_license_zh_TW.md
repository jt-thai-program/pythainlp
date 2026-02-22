# 語料庫授權 (Corpus License)

- 由 PyThaiNLP 專案建立的語料庫、數據集和文件均在 [Creative Commons Zero 1.0 Universal Public Domain Dedication License][cc0] (CC0-1.0) 下發布。
- 由 PyThaiNLP 專案建立的語言模型均在 [Creative Commons Attribution 4.0 International Public License][cc-by] (CC-BY-4.0) 下發布。
- 有關 PyThaiNLP 使用的語料庫的更多資訊，請參見 <https://github.com/PyThaiNLP/pythainlp-corpus/>。

[cc0]: https://creativecommons.org/publicdomain/zero/1.0/
[cc-by]: https://creativecommons.org/licenses/by/4.0/

## 詞典與詞彙列表

以下詞彙列表由 PyThaiNLP 專案建立，並在 **Creative Commons Zero 1.0 Universal Public Domain Dedication License** <https://creativecommons.org/publicdomain/zero/1.0/> 下發布。

| 檔案名稱                     | 說明                                            |
| ---------------------------- | ------------------------------------------------------ |
| countries_th.txt             | 泰文國家列表                              |
| etcc.txt                     | 強化泰文字元集群 (Enhanced Thai Character Clusters) 列表 |
| negations_th.txt             | 否定詞列表                                     |
| stopwords_th.txt             | 停用詞列表                                         |
| syllables_th.txt             | 泰文音節列表                                 |
| thailand_provinces_th.csv    | 泰文泰國省份/府份列表                     |
| tnc_freq.txt                 | 來自泰國國家語料庫 (Thai National Corpus) 的詞彙及其頻率 |
| ttc_freq.txt                 | 來自泰國教科書語料庫 (Thai Textbook Corpus) 的詞彙及其頻率 |
| words_th.txt                 | 泰文詞彙列表                                     |
| words_th_thai2fit_201810.txt | 泰文詞彙列表 (為 thai2fit 凍結的版本)               |

以下詞彙列表來自 **Thai Male and Female Names Corpus** <https://github.com/korkeatw/thai-names-corpus/>，由 Korkeat Wannapat 製作，並在原始授權 **Creative Commons Attribution-ShareAlike 4.0 International Public License** <https://creativecommons.org/licenses/by-sa/4.0/> 下發布。

| 檔案名稱                   | 說明                      |
| -------------------------- | -------------------------------- |
| family_names_th.txt        | 泰國姓氏列表 |
| person_names_female_th.txt | 泰國女性名字列表 |
| person_names_male_th.txt   | 泰國男性名字列表   |

## 模型

以下語言模型由 PyThaiNLP 專案建立，並在 **Creative Commons Attribution 4.0 International Public License** <https://creativecommons.org/licenses/by/4.0/> 下發布。

| 檔案名稱                        | 說明                                                                                           |
| ------------------------------- | ----------------------------------------------------------------------------------------------------- |
| pos_orchid_perceptron.json      | 詞性標註模型，使用 perceptron 於 ORCHID 數據訓練                              |
| pos_orchid_unigram.json         | 詞性標註模型，使用 unigram 於 ORCHID 數據訓練                                 |
| pos_ud_perceptron-v0.2.json     | 詞性標註模型，使用 perceptron 於 Parallel Universal Dependencies treebank 數據訓練 |
| pos_ud_unigram-v0.2.json        | 詞性標註模型，使用 unigram 於 Parallel Universal Dependencies treebank 數據訓練    |
| sentenceseg_crfcut.model        | 句子切分模型，使用 CRF 於 TED 字幕數據訓練                                    |
| tdtb-pt_tagger.json             | 詞性標註模型，使用 perceptron 於 The Thai Discourse Treebank 數據訓練              |
| tdtb-unigram_tagger.json        | 詞性標註模型，使用 unigram 於 The Thai Discourse Treebank 數據訓練                 |
| pos_tud_perceptron.json         | 詞性標註模型，使用 perceptron 於 Thai Universal Dependency Treebank 數據訓練  |
| pos_tud_unigram.json            | 詞性標註模型，使用 unigram 於 Thai Universal Dependency Treebank 數據訓練     |

## ICU BreakIterator 泰文詞典

來自 ICU (International Components for Unicode) 專案的泰文詞彙列表 (icubrk_th.txt) 版權歸 Unicode, Inc. 等所有，並在 **Unicode License Agreement - Data Files and Software (2016)** <http://www.unicode.org/copyright.html> 下發布。

原始數據：
<https://github.com/unicode-org/icu/blob/main/icu4c/source/data/brkitr/dictionaries/thaidict.txt>

## 泰文 WordNet (Thai WordNet)

泰文 WordNet (wordnet_th.db) 由日本情報通信研究機構 (NICT) 的泰文計算語言學實驗室建立，並在以下授權下發布：

```text
版權所有：2011 NICT

泰文 WordNet

本軟體和數據庫由情報通信研究機構 (NICT) 在以下授權下提供給您（被授權人）。獲取、使用和/或複製本軟體和數據庫，即表示您同意已閱讀、理解並將遵守以下條款和條件：

特此授予為任何目的免費使用、複製、修改和分發本軟體和數據庫及其文件的許可，前提是您同意遵守以下版權聲明和聲明（包括免責聲明），且該等內容出現在本軟體、數據庫和文件的所有副本中，包括您為內部使用或分發而進行的修改。

泰文 WordNet 版權所有 2011 情報通信研究機構 (NICT)。保留所有權利。

本軟體和數據庫按「原樣」提供，NICT 不作任何明示或暗示的陳述或保證。例如（但不限於），NICT 不對適銷性或針對特定用途的適用性，或者使用授權軟體、數據庫或文件不會侵犯任何第三方專利、版權、商標或其他權利作任何陳述或保證。

情報通信研究機構 (NICT) 的名稱不得用於與分發本軟體和/或數據庫有關的廣告或宣傳。本軟體、數據庫及任何相關文件的版權所有權應始終歸情報通信研究機構 (NICT) 所有，被授權人同意保留該所有權。
```

有關泰文 WordNet 的更多資訊，請參見：
S. Thoongsup et al., ‘Thai WordNet construction’, in Proceedings of the 7th Workshop on Asian Language Resources, Suntec, Singapore, Aug. 2009, pp. 139–144. <https://www.aclweb.org/anthology/W09-3420.pdf>

## 泰文維基百科標題 (Thai Wikipedia Titles)

泰文維基百科標題語料庫 (wikipedia_titles.txt) 由 konbraphat51 使用 2023 年 11 月 21 日的泰文維基百科轉儲檔案製作，並在原始授權 **Creative Commons Attribution-ShareAlike 4.0 International Public License** <https://creativecommons.org/licenses/by-sa/4.0/> 下發布。

原始數據：
<https://dumps.wikimedia.org/thwiki/latest/thwiki-latest-all-titles.gz>

製作代碼：
<https://github.com/konbraphat51/Thai_Dictionary_Cleaner/>

## Volubilis

收錄於 Volubilis 詞典中的泰文詞彙語料庫 (volubilis.txt) 由 konbraphat51 使用 Francis Bastien 製作的 Volubilis 23.1 (2023 年 3 月) 數據製作，並在原始授權 **Creative Commons Attribution-ShareAlike 4.0 International Public License** <https://creativecommons.org/licenses/by-sa/4.0/> 下發布。

原始數據：
<https://belisan-volubilis.blogspot.com/>

製作代碼：
<https://github.com/konbraphat51/Thai_Dictionary_Cleaner/>
