---
title: "【初学者向け】GitHub Pagesを使って無料でWEBページを公開する"
date: 2023-11-28T17:48:00+09:00
draft: false
isCJKLanguage: true
tags: ["技術系","初学者向け","GitHub Pages","WEBページ"]
description : "この記事では、GitHub Pagesを使用して無料でウェブページを公開する方法を紹介します。GitHub Pagesを使えば、独自のウェブサイトやブログを簡単に作成し、無料で公開することができます。手順を追って解説し、ウェブ開発の初歩から始めましょう。"
keywords: [is0383kk,yoshiwo,よしを,よしをの備忘録,GitHub Pages,初心者,ウェブ開発,ウェブページ,公開,無料,ブログ,ウェブサイト,GitHub,ホスティング]
---

---

## はじめに
本記事では、GitHub Pagesを使った静的WEBページの作成方法を紹介します。  
GitHubの機能の１つであるGitHub Pagesを使うことで[このようなWEBページ](https://is0383kk.github.io/GitHub-Pages-Tutorial/index.html)を簡単に作れます。  
**※GitHubアカウントが必要です。**

{{< rawhtml >}}
<div style="text-align: center">
<img src='https://github.com/is0383kk/GitHub-Pages-Tutorial/blob/main/img/8.png?raw=true' alt="GitHub Pages公開手順" width="800px">
</div>
{{< /rawhtml >}}
  
　

## ■ 1.HTMLファイルの作成
初めにWEBページの元となる**HTMLファイル**を作成します。  
下のHTMLをコピペし、「**index.html**」というファイル名で保存してください。

### index.html
```html
<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="utf-8">
  <title>GitHub Pagesの機能で作ったホームページだよ</title>
  <meta name="description" content="GitHub Pagesの機能で作ったホームページだよ">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="style.css">
</head>

<body>
  <div class="container">
    <header id="header">
      <h1 class="site-title">
        My page
      </h1>
    </header>

    <main>
      <div id="mainvisual">
        GitHub Pagesで作ったホームページ
      </div>

      <section id="index">
        <div class="inner">
          <h2 class="section-title">GitHub Pagesの３つの特徴</h2>
          <ol class="index-list">
            <li>無料で簡単にWEBページを作成できます。</li>
            <li>必要なものはGitHubアカウントだけ！</li>
            <li>HTMLとCSSに加えてJavaScriptも組み合わせることができます。</li>
          </ol>
        </div>
      </section>

      <section id="detail">
        <div class="inner">
          <h2 class="section-title">作った人</h2>
          <div class="content">
            <img class="img" src="cat.png" alt="GitHub Pages公開手順">
            <div class="text">
              <p class="title">よしを</p>
              <p>猫と焼き肉が大好きなエンジニア１年生</p>
            </div>
          </div>
        </div>
      </section>
    </main>
  </div>
</body>

</html>
```

## ■ 2.CSSファイルの作成
せっかくなのでWEBページの見た目を少しおしゃれにしましょう。  
WEBページの見た目を変えるためにはCSSファイルを作成します。  
デスクトップ上でメモ帳を開き、下のCSSをコピペし、「**style.css**」というファイル名で保存してください。

### style.css
```CSS
@charset "UTF-8";

html {
  font-size: 100%;
}

body {
  background-color: #f4f9ff;
  color: #333;
  font-size: 0.875rem;
}

/* サイト全体のコンテンツ幅を設定 */
.container {
  max-width: 1000px;
  margin: 0 auto;
}

/* 中のコンテンツ部分の最大幅を設定 */
.inner {
  max-width: 600px;
  margin: 0 auto;
}

.section-title {
  font-size: 1.125rem;
  font-weight: bold;
  margin-bottom: 10px;
}

/*-------------------------------------------
ヘッダー
-------------------------------------------*/
#header {
  margin-top: 60px;
}

#header .site-title {
  width: 160px;
  line-height: 1px;
  margin-bottom: 15px;
}


/*-------------------------------------------
Mainvisual
-------------------------------------------*/
#mainvisual {
  margin-bottom: 60px;
}

/*-------------------------------------------
Index
-------------------------------------------*/
#index {
  background-color: #fff;
  padding: 30px 0;
  margin-bottom: 60px;
}

#index .index-list {
  margin-left: 20px;
}

#index .index-list li {
  margin-bottom: 20px;
}

/* リストの最後は下にマージンをつけない */
#index .index-list li:last-child {
  margin-bottom: 0;
}

/*-------------------------------------------
Detail
-------------------------------------------*/
#detail {
  margin-bottom: 100px;
}

#detail .content {
  display: flex;
  align-items: flex-start;
}

#detail .content .title {
  font-size: 1.125rem;
  font-weight: bold;
}

#detail .content .img {
  width: 270px;
  margin-right: 60px;
}

#detail .content .text p {
  margin-bottom: 20px;
}
```


## ■ 3.リポジトリの作成
ここからGitHubでの操作となります。  
ここでは「WEBページの元となるHTMLファイル」と「WEBページの見た目を変えるCSSファイル」を格納するための箱（リポジトリ）をGitHub上に作成します。  
GitHubにログインし、下の画像の様に「＋」ボタンから「New repository」を選択します。

{{< rawhtml >}}
<div style="text-align: center">
<img src='https://github.com/is0383kk/GitHub-Pages-Tutorial/blob/main/img/1.png?raw=true' alt="GitHub Pages公開手順" width="600px">
</div>
{{< /rawhtml >}}

---

次のような画面になるので、「Repository name」にリポジトリに名前を入力します。  
今回の場合、「GitHub-Pages-Tutorial」としています。

{{< rawhtml >}}
<div style="text-align: center">
<img src='https://github.com/is0383kk/GitHub-Pages-Tutorial/blob/main/img/2.png?raw=true' alt="GitHub Pages公開手順" width="900px">
</div>
{{< /rawhtml >}}

---

次のような画面になるので、「uploading an existing file」をクリックします。  
{{< rawhtml >}}
<div style="text-align: center">
<img src='https://github.com/is0383kk/GitHub-Pages-Tutorial/blob/main/img/3.png?raw=true' alt="GitHub Pages公開手順" width="900px">
</div>
{{< /rawhtml >}}

---

次のような画面になるので、「index.html」と「style.css」をドラッグ&ドロップ操作でアップロードします。  
そして、緑色の「Commit Changes」ボタンを押してリポジトリに反映させます。

{{< rawhtml >}}
<div style="text-align: center">
<img src='https://github.com/is0383kk/GitHub-Pages-Tutorial/blob/main/img/4.png?raw=true' alt="GitHub Pages公開手順" width="800px">
</div>
{{< /rawhtml >}}


アップロードされていることを確認する。
{{< rawhtml >}}
<div style="text-align: center">
<img src='https://github.com/is0383kk/GitHub-Pages-Tutorial/blob/main/img/5.png?raw=true' alt="GitHub Pages公開手順" width="800px">
</div>
{{< /rawhtml >}}

---

すると作成したリポジトリにアップロードした「index.html」と「style.css」があることが確認できます。  
※画像（cat.png）を表示させたい場合は、画像ファイルのアップロードも忘れないように

{{< rawhtml >}}
<div style="text-align: center">
<img src='https://github.com/is0383kk/GitHub-Pages-Tutorial/blob/main/img/6.png?raw=true' alt="GitHub Pages公開手順" width="800px">
</div>
{{< /rawhtml >}}


## ■ 4.GitHub Pagesの設定  
WEBページを公開する準備ができたので、GitHub Pagesの設定を行います。  
1. リポジトリの「Settingタブ」を選択します。
2. 「Pages」の項目を選択します。  
3. 「Branch」の項目を編集します。下の画面の様に「None」→「main」にし、フォルダマークの部分を「root」にして「Save」ボタンを押します。

{{< rawhtml >}}
<div style="text-align: center">
<img src='https://github.com/is0383kk/GitHub-Pages-Tutorial/blob/main/img/7.png?raw=true' alt="GitHub Pages公開手順" width="900px">
</div>
{{< /rawhtml >}}

---

## ■ 5.公開したページの確認  
ここまでの手順を実施したら、実際に公開したページを確認してみます。  

反映に数分程度がかかるので待機すると先程の画面が次のように変わります。  
そして、「Your site is live at」のリンクから公開したページにアクセスすることができます。

※GitHub Pagesで公開したページは「https://is0383kk.github.io/GitHub-Pages-Tutorial/」 の様に  
　「https://アカウント名.github.io/リポジトリ名/」 でアクセスできます。

{{< rawhtml >}}
<div style="text-align: center">
<img src='https://github.com/is0383kk/GitHub-Pages-Tutorial/blob/main/img/9.png?raw=true' alt="GitHub Pages公開手順" width="900px">
</div>
{{< /rawhtml >}}