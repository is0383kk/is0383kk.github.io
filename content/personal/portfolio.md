---
title: "今までのこと"
date: 2023-10-09T14:05:48+09:00
draft: false
tags: ["タグ：よしをのこと"]
keywords: [is0383kk, yoshiwo, よしを, よしをのホームページ]
---

---

## ■ 社会人

{{< custom_portfolio_grid >}}

{{< custom_portfolio_card
img="/sigoto.png"
title="AI駆動開発基盤開発案件"
desc="システム開発の全プロセスに生成AIによる支援導入を目的とし、生成AIを導入したシステム開発プラットフォームを構築。<br>アジャイルによる開発を行い<br>AWS Lambdaを中心としたAWS各種サービスを活用したサーバレスアプリケーションの開発を経験。"
link="https://is0383kk.github.io/" >}}

{{< custom_portfolio_card
img="/sigoto.png"
title="ローコード開発ツール基盤保守"
desc="自社で開発しているローコード開発ツールの保守業務を担当。<br>JavaのSpring Frameworkを使ったアプリケーション開発や、AWSを活用したアプリケーション基盤の構築を経験。<br>アプリケーション技術からインフラ技術までフルスタックな技術を活用"
link="https://is0383kk.github.io/" >}}

{{< custom_portfolio_card
img="/sigoto.png"
title="金融向けファイルサーバ運用管理案件"
desc="入社1年目最初の案件経験で、金融機関に向けたファイルサーバの運用及び新規機能構築を経験。<br>ウォータフォールによる機能設計、実装、単体テスト、シナリオテストまでを実施。<br>ウォータフォールプロセスで上流から下流まで幅広い工程を経験しシステム開発の理解を深めた。"
link="https://is0383kk.github.io/" >}}

{{< /custom_portfolio_grid >}}

## ■ 学生時代

{{< custom_portfolio_grid >}}

{{< custom_portfolio_card
img="/kenkyu.png"
title="研究"
desc="谷口忠大研究室に所属し、深層学習を使った教師なし学習モデルについて研究を実施。<br>Python及び深層学習フレームワークを用いて深層学習モデルの構築～モデル検証を実施。<br>研究成果の学会発表や査読付き論文誌に採択。"
link="https://is0383kk.github.io/" >}}

{{< custom_portfolio_card
img="/robocup1.jpg"
title="ロボット競技"
desc="家庭用ロボットを使ったロボット競技に参加。<br>Pythonやロボットを動かすためのROSというシステムを扱い家庭用ロボット用ソフトウェアを開発。<br>国際大会や経済産業省主催の大会に参加し受賞。"
link="https://is0383kk.github.io/" >}}

{{< /custom_portfolio_grid >}}

## ■ 趣味

### １．作ったものを GitHub に公開

{{< rawhtml >}}

<p>作ったものを <a href="https://github.com/is0383kk" target="_blank" rel="noopener noreferrer me" title="GitHub">GitHub</a>に公開する活動をしています。<br>下記はその中でも多い評価をもらったものです。</p>
<p>現在の総リポジトリ数：<b><span id="repo-count" style="color:gold;"></span></b>　総スター数：<b><span id="total-stars" style="color:gold;"></span></b></p>
<script>
// 総リポジトリ数を取得
fetch('/stars.json')
  .then(response => response.json())
  .then(data => {
    const repoCount = data.length; // nameの数 = 配列の長さ
    document.getElementById('repo-count').textContent = repoCount;
  })
  .catch(error => {
    console.error('リポジトリ数取得エラー:', error);
    document.getElementById('repo-count').textContent = '取得失敗';
  });
// 総スター数を取得
fetch('/stars.json')
  .then(response => response.json())
  .then(data => {
    const totalStars = data.reduce((sum, repo) => sum + (repo.stars || 0), 0);
    document.getElementById('total-stars').textContent = totalStars;
  })
  .catch(error => {
    console.error('スター数取得エラー:', error);
    document.getElementById('total-stars').textContent = '取得失敗';
  });
</script>

{{< /rawhtml >}}

{{< custom_portfolio_grid >}}
{{< custom_portfolio_card
img="https://img.shields.io/github/stars/is0383kk/Pytorch_VAE-GMM?style=flat-square&labelColor=black"
title="Pytorch_VAE-GMM"
desc="教師なし深層学習のVAE（Variational Auto-Encoder）と混合ガウスモデル（GMM）を相互学習させたモデルを公開しています。"
link="https://github.com/is0383kk/Pytorch_VAE-GMM" >}}

{{< custom_portfolio_card
img="https://img.shields.io/github/stars/is0383kk/Dirichlet-VAE?style=flat-square&labelColor=black"
title="Dirichlet-VAE"
desc="教師なし深層学習のVAE（Variational Auto-Encoder）の潜在変数を表現する確率分布にディリクレ分布を採用したモデルです。"
link="https://github.com/is0383kk/Dirichlet-VAE" >}}

{{< custom_portfolio_card
img="https://img.shields.io/github/stars/is0383kk/SymbolEmergence-VAE-GMM?style=flat-square&labelColor=black"
title="SymbolEmergence-VAE-GMM"
desc="大学院の修士論文を執筆する過程で作成したモデルです。2023年に論文誌に採択され、その後も他の研究者にこちらのモデルが拡張されております。"
link="https://github.com/is0383kk/SymbolEmergence-VAE-GMM" >}}

{{< custom_portfolio_card
img="https://img.shields.io/github/stars/is0383kk/Spring-Boot-Camp?style=flat-square&labelColor=black"
title="Spring-Boot-Camp"
desc="JavaのフレームワークであるSpring Framework（Boot）を勉強した際に作成したリポジトリです。<br>学習時のメモをより教科書的にまとめることで、他の人がこのリポジトリを見ながらSpring Bootを学べるように作成しました。"
link="https://github.com/is0383kk/Spring-Boot-Camp" >}}

{{< /custom_portfolio_grid >}}

### ２．WEB サイト

{{< custom_portfolio_grid >}}

{{< custom_portfolio_card
img="/zenn.jpg"
title="技術ブログ（Zenn）"
desc="業務や趣味で学んだものを技術ブログにまとめています。"
link="https://zenn.dev/is0383kk" >}}

{{< custom_portfolio_card
img="https://raw.githubusercontent.com/is0383kk/Web-dev-tools/refs/heads/main/ogp.png"
title="みんなのWEBツールズ"
desc="開発に役立つ便利ツールを集約したWEBアプリケーションです。<br>全ての処理をフロントエンド（React+TypeScript）で完結させており、バックエンド側の処理は一切使っていません。"
link="https://is0383kk.github.io/Web-dev-tools/" >}}

{{< custom_portfolio_card
img="/profile.jpg"
title="よしをのホームページ"
desc="このホームページのリポジトリです。<br>静的WEBページを簡単に生成できるHugoとGitHub Pagesを使って作成しています。"
link="https://github.com/is0383kk/is0383kk.github.io" >}}

{{< /custom_portfolio_grid >}}
