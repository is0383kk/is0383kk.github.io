---
title: "【データベース】Oracle・SQLServerのセッションをまとめて切断する方法"
date: 2024-02-19T10:25:13+09:00
draft: true
isCJKLanguage: true
tags: ["技術系","データベース"]
description : "この記事では、OracleおよびSQLServerデータベースでセッションをまとめて切断する方法について解説します。データベース管理者がセッションを管理し、不要なセッションを効率的に切断する手順を紹介します。セッションの一覧や終了方法に関するSQLクエリも提供します。"
keywords: [is0383kk,yoshiwo,よしを,よしをの備忘録,Oracle, SQL Server, セッション, 切断, データベース管理, セッション管理, SQLクエリ, コマンド, データベース運用]
---

---

## はじめに

## ■ 見出し



{{< highlight sql >}}
DECLARE
  CURSOR c_sessions IS
    SELECT sid, serial#
    FROM v$session
    WHERE username LIKE '任意のユーザ名%';
BEGIN
  FOR sess IN c_sessions LOOP
    rdsadmin.rdsadmin_util.kill(sess.sid, sess.serial#);
  END LOOP;
END;
{{< /highlight >}}


{{< highlight sql >}}
DECLARE @KillCmd NVARCHAR(MAX) = N'';
SELECT @KillCmd = @KillCmd + 'KILL ' + CAST(session_id AS NVARCHAR(10)) + '; '
FROM sys.dm_exec_sessions
WHERE login_name LIKE '任意のユーザ名%';
 
EXEC sp_executesql @KillCmd;
{{< /highlight >}}