---
title: "【Java】条件に沿って記号英数字を含むランダムなパスワードを生成する"
date: 2023-12-05T01:08:13+09:00
draft: false
isCJKLanguage: true
tags: ["技術系","プログラミング","Java"]
description: "この記事では、Javaを使用して条件に基づいたランダムなパスワードを生成する方法を解説します。記号や英数字を含むセキュアなパスワードを簡単に作成するための手順を学びましょう。"
keywords: [is0383kk,yoshiwo,よしを,よしをの備忘録,Java,パスワード,パスワード生成,StringBuilder,Random,ランダムパスワード,記号,英数字,セキュリティ,初心者向け]
---

---

## はじめに
今回は条件に沿って記号英数字を含むランダムなパスワードを生成してみたいと思います。  

具体的な条件は以下の通りです。

| 条件 | コード上での表現 |
| --- | --- |
|大文字のアルファベットを含むことを許可あるいは不許可とする | uppercaseEnable = "true"/"false" |
|大文字のアルファベットを必ず含む | uppercaseEnable = "required" |
|小文字のアルファベットを含むことを許可あるいは不許可とする | lowercaseEnable = "true"/"false"|
|小文字のアルファベットを必ず含む | lowercaseEnable = "required" |
|数字を含むことを許可あるいは不許可とする| numberEnable = "true"/"false" |
|数字を必ず含む | numberEnable = "required"
|記号を含むことを許可あるいは不許可とする | symbolEnable = "true"/"false" |
|記号を必ず含む | symbolEnable = "required" |
|連続した文字を許可あるいは不許可とする | sameChrEnable = "true"/"false"|

※[こちらの記事](https://dimzakki.com/java-random-password/)を参考にパスワード生成でよく扱われる条件を追加してみました。

## ■ ソースコードと結果
実際に作成したソースコードは以下になります。

### ★ CreatePassword.java

{{< highlight java >}}
import java.util.Random;

public class CreatePassword {

	public static void main(String[] args) {
		String password;
		password = createPassword(8,"true","true","true","true", "true");
		System.out.println(password);
	}
	
	public static String createPassword(int passwordMinLength,
								 String lowercaseEnable, 
								 String uppercaseEnable, 
								 String numberEnable, 
								 String symbolEnable, 
								 String sameChrEnable) {

	    StringBuilder passwordBase = new StringBuilder();
	    StringBuilder lowercaseBase = new StringBuilder("abcdefghijklmnopqrstuvwxyz");
	    StringBuilder uppercaseBase = new StringBuilder("ABCDEFGHIJKLMNOPQRSTUVWXYZ");
	    StringBuilder numberBase = new StringBuilder("0123456789");
	    StringBuilder symbolBase = new StringBuilder("`˜!@#$%^&*()_+-={}[]|:;\"'<>,.?/");
	    StringBuilder password = new StringBuilder();
	     
	    
	    if (lowercaseEnable == "true"|| lowercaseEnable == "required") {
	        passwordBase.append(lowercaseBase);
	    }
	    if (uppercaseEnable == "true" || uppercaseEnable == "required") {
	        passwordBase.append(uppercaseBase);
	    }
	    if (numberEnable == "true" || numberEnable == "required") {
	        passwordBase.append(numberBase);
	    }
	    if (symbolEnable == "true" || symbolEnable == "required") {
	        passwordBase.append(symbolBase);
	    }
	     
	    // requiredが指定されている場合、必ず指定された文字種が含まれるようにする
	    if (lowercaseEnable == "required") {
	        password.append(lowercaseBase.charAt(new Random().nextInt(lowercaseBase.length())));
	    }
	    if (uppercaseEnable == "required") {
	        password.append(uppercaseBase.charAt(new Random().nextInt(uppercaseBase.length())));
	    }
	    if (numberEnable == "required") {
	        password.append(numberBase.charAt(new Random().nextInt(numberBase.length())));
	    }
	    if (symbolEnable == "required") {
	        password.append(symbolBase.charAt(new Random().nextInt(symbolBase.length())));
	    }
	 
	    char prevChar = '\0'; // 1つ前に生成された値を格納する変数
	    // passwordに文字列が格納されている場合、末尾の文字を格納する
	    if (password.length() != 0) {
	        prevChar = password.charAt(password.length() - 1) ;
	    }
	 
	    // パスワード生成
	    Random rand = new Random();
	    for (int i = password.length(); i < passwordMinLength; i++) {
	        int num = rand.nextInt(passwordBase.length());
	        char c = passwordBase.charAt(num);
	         
	        // 連続文字許可設定が有効でない場合、連続した文字が生成されないようにする
	        while (sameChrEnable != "true"  && c == prevChar) {
	            num = rand.nextInt(passwordBase.length());
	            c = passwordBase.charAt(num);
	        }
	 
	    password.append(c);
	    prevChar = c;
	    }
	 
	    return password.toString();
	}
}
{{< / highlight >}}

### ★ 出力結果
出力結果は以下のようになりました。（全てrequiredの場合）  
全てrequiredとしているので、全文字種が含まれてパスワードが生成されていることがわかります。
```
gH6<l-!x
```


## ■ 解説

### パスワード生成で扱う文字の定義
まず、パスワード候補となる文字を「StringBuilderクラス」を使い定義します。
{{< highlight java "linenos=true" >}}
StringBuilder passwordBase = new StringBuilder();
StringBuilder lowercaseBase = new StringBuilder("abcdefghijklmnopqrstuvwxyz");
StringBuilder uppercaseBase = new StringBuilder("ABCDEFGHIJKLMNOPQRSTUVWXYZ");
StringBuilder numberBase = new StringBuilder("0123456789");
StringBuilder symbolBase = new StringBuilder("`˜!@#$%^&*()_+-={}[]|:;\"'<>,.?/");
StringBuilder password = new StringBuilder();
{{< / highlight >}}

---

### 文字種の許可/不許可処理
次に、各文字種の許可/不許可設定に基づいて「passwordBase」に使用する文字を挿入していきます。  
「passwordBase」は生成されるパスワード候補となる文字を格納するための変数です。

{{< highlight java >}}
if (lowercaseEnable == "true"|| lowercaseEnable == "required") {
    passwordBase.append(lowercaseBase);
}
if (uppercaseEnable == "true" || uppercaseEnable == "required") {
    passwordBase.append(uppercaseBase);
}
if (numberEnable == "true" || numberEnable == "required") {
    passwordBase.append(numberBase);
}
if (symbolEnable == "true" || symbolEnable == "required") {
    passwordBase.append(symbolBase);
}
{{< / highlight >}}

---

### 必ず特定の文字種を含める場合の処理
次に必ず特定文字種を含める場合（required指定）の処理です。

ここでは、最初に定義した「hogeBase」に対してランダム関数で文字を抽出し、  
生成パスワードとなる「password」に直接特定文字種を挿入しています。
{{< highlight java>}}
// requiredが指定されている場合、必ず指定された文字種が含まれるようにする
if (lowercaseEnable == "required") {
    password.append(lowercaseBase.charAt(new Random().nextInt(lowercaseBase.length())));
}
if (uppercaseEnable == "required") {
    password.append(uppercaseBase.charAt(new Random().nextInt(uppercaseBase.length())));
}
if (numberEnable == "required") {
    password.append(numberBase.charAt(new Random().nextInt(numberBase.length())));
}
if (symbolEnable == "required") {
    password.append(symbolBase.charAt(new Random().nextInt(symbolBase.length())));
}
{{< / highlight >}}

---

### 連続文字許可/不許可設定のための事前準備
ここでは、パスワード生成処理内で行われる連続した文字の許可/不許可処理のための事前準備を行っています。

連続する文字の比較を行うためにあらかじめ生成される文字の１つ前の文字（prevChar）を定義します。
次に、既に「required」で「password」に文字が挿入されている場合、  
「password」の最後尾の文字を「prevChar」に設定します。
{{< highlight java "linenos=true" >}}
char prevChar = '\0'; // 1つ前に生成された値を格納する変数
// passwordに文字列が格納されている場合、末尾の文字を格納する
if (password.length() != 0) {
    prevChar = password.charAt(password.length() - 1) ;
}
{{< / highlight >}}

---

### パスワード生成
最後にパスワード生成部分です。

まず、生成のための文字列が格納されている「passwordBase」に対してランダム関数で文字の抽出を行います。  
連続文字が許可されていない場合（sameChrEnable != "true"）は、抽出した文字と１ステップ前の文字と比較し、  
同じだった場合、再度ランダム関数による文字の抽出を行います。

最終的に選ばれた、文字が「password」に挿入されていきます。
{{< highlight java>}}
Random rand = new Random();
for (int i = password.length(); i < passwordMinLength; i++) {
    int num = rand.nextInt(passwordBase.length());
    char c = passwordBase.charAt(num);
        
    // 連続文字許可設定が有効でない場合、連続した文字が生成されないようにする
    while (sameChrEnable != "true"  && c == prevChar) {
        num = rand.nextInt(passwordBase.length());
        c = passwordBase.charAt(num);
    }

password.append(c);
prevChar = c;
}
{{< / highlight >}}
