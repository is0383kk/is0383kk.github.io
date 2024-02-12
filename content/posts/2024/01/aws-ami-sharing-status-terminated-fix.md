---
title: "【AWS】AMIの共有後、共有先AWSアカウントからEC2インスタンスを起動するとステータスが即座に「終了済み」になった際の対応方法"
date: 2024-02-11T01:07:09+09:00
draft: false
isCJKLanguage: true
tags: ["技術系","AWS","EC2"]
description: "この記事では、AWS（Amazon Web Services）でAMI（Amazon Machine Image）を共有した後に、共有先のAWSアカウントからEC2インスタンスを起動した際にステータスが即座に「終了済み」となる問題について解決策を探ります。AMIの共有や起動に関する手順や設定の確認、エラーの原因と解決方法について詳しく解説します。"
keywords: [AWS,Amazon Web Services,AMI,Amazon Machine Image,EC2,共有,終了済み,エラー,解決方法,AWSアカウント,インスタンス,AMI共有]
---

---

## はじめに
今回はAWSのお話で、AMIの共有時には以下2つの共有設定を行う必要があるといった内容です。  
- AMIに対して共有設定を行う　**※これだけ設定してもEC2を起動してもすぐに「終了済み」になる**
- AMIのEBSボリュームの暗号化に使用したカスタマー管理型キーにも共有設定を行う

## ■ 発生した事象について
AWSアカウント１からAWSアカウント２にAMIを共有。  
その後、AWSアカウント２からEC2インスタンスを起動した際、EC2インスタンスのステータスが即座に「終了済み」となり起動できない問題が発生した。

{{< figure src="../images/20240211_001.png" alt="001" width="160" >}}

## ■ 原因
結論から言うと、カスタマー管理型キーに共有設定ができていなかった。
以下の公式ドキュメントを参照すると、
https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/troubleshooting-launch.html#troubleshooting-launch-internal

>The root EBS volume is encrypted and you do not have permissions to access the KMS key for decryption.  
>ルートEBSボリュームは暗号化されており、復号化のためのKMSキーにアクセスする権限を持っていません。

と記述されていることから、カスタマー管理型キーにも共有先AWSアカウントの設定を行う必要がある。  
今回、AMIに対しては以下のように共有のための設定を行ったが、カスタマー管理型キーには行っていなかった。

{{< figure src="../images/20240211_002.png" alt="002" width="600" >}}

## ■ 解決方法
カスタマー管理型キーの設定にて、共有先のAWSアカウントに対して使用権限を付与する。

### 手順
1. Key Management Serviceからカスタマー管理型キーのメニューに移動する。
{{< figure src="../images/20240211_003.png" alt="003" width="700" >}}

2. 対象のカスタマー管理型キーの設定画面に移動する。  
「キーポリシー」→「別のAWSアカウント」の設定項目にて、共有先AWSアカウントIDを追加する。
{{< figure src="../images/20240211_004.png" alt="004" width="400" >}}

3. 以上の手順を実施後、共有先のAWSアカウントにてAMIからEC2インスタンスの起動ができるようになった。