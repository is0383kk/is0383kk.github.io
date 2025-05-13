---
title: "プロフィール"
date: 2023-10-09T14:05:48+09:00
draft: false
tags: ["タグ：よしをのこと"]
keywords: [is0383kk, yoshiwo, よしを, よしをのホームページ]
---

---

{{< rawhtml >}}

<div class="profile-card">
  <img class="profile-cat" alt="profile icon" src="/profile.jpg"/>
  <img class="profile-cat-dark" alt="profile icon" src="/oiiacat.gif" />
  <div class="profile-card-content">
    <h2 class="profile-name">Yoshiwo🐈</h2>
    <h2 class="profile-name-dark">Yoshiwo🐈‍⬛</h2>
    <p class="profile-title">社会人エンジニア（<span id="year"></span>年目）</p>
    <p class="profile-desc">
      <span id="age"></span>歳。学生時代はロボット競技・機械学習（生成モデル）の研究に取り組む。<br>
      現在は日系IT企業でアプリケーション基盤の開発に従事。<br>
      趣味で作ったものを
      <span class="profile-links">
        <a href="https://github.com/is0383kk" target="_blank">GitHub</a> や
        <a href="https://zenn.dev/is0383kk" target="_blank">Zenn</a>
      </span>
      に公開中。
    </p>
    <p style="margin-top: 1rem;">📬 連絡先：<code>is0383kk[at]gmail.com</code></p>
    <div class="github-trophy">
      <img alt="GitHub trophy"
        src="https://github-profile-trophy.vercel.app/?username=is0383kk&title=-Followers,-Issues,-Reviews,-PullRequest&theme=flat&column=4" />
    </div>
    <div class="github-trophy-dark">
      <img alt="GitHub trophy"
        src="https://github-profile-trophy.vercel.app/?username=is0383kk&title=-Followers,-Issues,-Reviews,-PullRequest&theme=darkhub&column=4" />
    </div>
  </div>
</div>

<script type="text/javascript">
  document.getElementById('year').textContent = new Date().getFullYear() - 2021;
  document.getElementById("age").innerHTML = new Date().getFullYear() - 1998;
  document.addEventListener("DOMContentLoaded", function () {
    document.querySelectorAll("tr").forEach(function (row) {
      const allEmpty = Array.from(row.cells).every(cell => cell.textContent.trim() === "");
      if (allEmpty) {
        row.style.display = "none";
      }
    });
  });
</script>

{{< /rawhtml >}}

---

## ■ スキル

※各種技術を使った案件経験などは[**ポートフォリオ**](https://is0383kk.github.io/personal/portfolio/)をご確認ください。

{{< custom_accordion title="プログラミング言語関連" >}}

| ＜名称＞      | ＜経験期間＞ |      ＜習熟度＞       |
| :------------ | :----------: | :-------------------: |
| Python        |    2017 -    | {{< custom_star 4 >}} |
| Java          | 2022 - 2024  | {{< custom_star 3 >}} |
| HTML／CSS／JS |    2016 -    | {{< custom_star 3 >}} |
| Shell         |    2022 -    | {{< custom_star 2 >}} |

{{< /custom_accordion >}}

{{< custom_accordion title="アプリケーション関連（フレームワーク含む）" >}}

| ＜名称＞         | ＜経験期間＞ |      ＜習熟度＞       |
| :--------------- | :----------: | :-------------------: |
| Spring Framework | 2022 - 2024  | {{< custom_star 3 >}} |
| Thymeleaf        | 2022 - 2024  | {{< custom_star 2 >}} |
| Vue.js           |    2023 -    | {{< custom_star 2 >}} |
| AWS Lambda       |    2024 -    | {{< custom_star 4 >}} |
| PyTorch          | 2020 - 2022  | {{< custom_star 2 >}} |

{{< /custom_accordion >}}

{{< custom_accordion title="インフラ関連（ミドルウェア含む）" >}}

| ＜名称＞       | ＜経験期間＞ |      ＜習熟度＞       |
| :------------- | :----------: | :-------------------: |
| Linux          |    2017 -    | {{< custom_star 4 >}} |
| Windows Server |    2017 -    | {{< custom_star 1 >}} |
| AWS            |    2022 -    | {{< custom_star 3 >}} |
| Azure          |    2022 -    | {{< custom_star 2 >}} |
| Apache         | 2022 - 2024  | {{< custom_star 3 >}} |
| Tomcat         | 2022 - 2024  | {{< custom_star 3 >}} |

{{< /custom_accordion >}}

{{< custom_accordion title="データベース" >}}

| ＜名称＞          | ＜経験期間＞ |      ＜習熟度＞       |
| :---------------- | :----------: | :-------------------: |
| MySQL             | 2022 - 2024  | {{< custom_star 3 >}} |
| Oracle            | 2022 - 2024  | {{< custom_star 3 >}} |
| SQL Server        | 2022 - 2024  | {{< custom_star 3 >}} |
| Amazon DynamoDB   |    2024 -    | {{< custom_star 3 >}} |
| Amazon DocumentDB |    2024 -    | {{< custom_star 2 >}} |

{{< /custom_accordion >}}

{{< custom_accordion title="その他ツールの経験" >}}

| ＜ツール＞                             |
| :------------------------------------- |
| Git                                    |
| GitHub Action                          |
| VSCode                                 |
| Eclipse                                |
| Docker                                 |
| Jenkins                                |
| Katalon Studio                         |
| A5:SQL Mk-2                            |
| SQL Developer                          |
| Microsoft SQL Server Management Studio |
| Fiddler                                |

---

| ＜サービス＞        |
| :------------------ |
| GitHub Enterprise   |
| GitLab              |
| Amazon CodeCatalyst |
| Confluence          |

{{< /custom_accordion >}}

|      ＜習熟度＞       | ＜習熟度の目安＞                                                           |
| :-------------------: | :------------------------------------------------------------------------- |
| {{< custom_star 1 >}} | 入門レベル：業務で少し触れた程度。基礎的な部分から学習が必要               |
| {{< custom_star 2 >}} | 初級レベル：サポートがあれば業務を進められる。                             |
| {{< custom_star 3 >}} | 中級レベル：独力で業務を進められる。標準的な機能やライブラリを活用できる。 |
| {{< custom_star 4 >}} | 上級レベル：他者に助言／指導したり、設計／レビューも担当できる。           |

## ■ 受賞歴／論文投稿／登壇など

| ＜年度＞ | ＜カテゴリ＞ | ＜内容＞                                                                                                                                                                             |
| :------: | :----------: | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
|   2023   |    論文誌    | Advanced Robotics - [Emergent Communication through Metropolis-Hastings Naming Game with Deep Generative Models](https://www.tandfonline.com/doi/full/10.1080/01691864.2023.2260856) |
|   2022   |   国内会議   | 第 36 回人工知能学会 - [変分オートエンコーダを活用した実画像からの記号創発](https://www.jstage.jst.go.jp/article/pjsai/JSAI2022/0/JSAI2022_3L3GS802/_article/-char/ja/)              |
|   2020   |   国内会議   | 第 34 回人工知能学会 - [マルチモーダル変分オートエンコーダを用いた実物体のカテゴリ形成](https://www.jstage.jst.go.jp/article/pjsai/JSAI2020/0/JSAI2020_1Q3GS1101/_article/-char/ja/) |
|   2019   |    受賞歴    | ロボカップ 2019 @Home 部門 世界大会 - 準優勝                                                                                                                                         |
|   2019   |    受賞歴    | ロボカップ 2019 @Home 部門 国内大会 - 準優勝                                                                                                                                         |
|   2018   |    受賞歴    | 経済産業省主催 World Robot Summit 2018 Real space 部門 - 準優勝                                                                                                                      |
|   2018   |    受賞歴    | 経済産業省主催 World Robot Summit 2018 Virtual space 部門 - 3 位                                                                                                                     |
|   2018   |    受賞歴    | ロボカップ 2018 @Home 部門 世界大会 - 3 位                                                                                                                                           |
|   2018   |    受賞歴    | ロボカップ 2018 @Home 部門 国内大会 - 3 位                                                                                                                                           |

## ■ 職歴

{{< custom_timeline >}}

## ■ 資格

| ＜資格名＞                                    | ＜取得年度＞ |
| :-------------------------------------------- | :----------: |
| 基本情報技術者                                |     2022     |
| Certified ScrumMaster（認定スクラムマスター） |     2023     |
