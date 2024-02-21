---
title: "【データベース】Oracle・SQLServerのセッションをまとめて切断する方法"
date: 2024-02-19T10:25:13+09:00
draft: true
isCJKLanguage: true
tags: ["技術系","データベース"]
description : "この記事では、OracleおよびSQLServerデータベースでセッションをまとめて切断する方法について解説します。
また、RDSでOracleを利用している場合に「ORA-01031: 権限が不足しています」と表示されセッションが切断できない場合の対処法を紹介します。"
keywords: [is0383kk,yoshiwo,よしを,よしをの備忘録,Oracle, SQL Server, セッション, 切断, データベース管理, セッション管理, SQLクエリ, コマンド, データベース運用]
---

---

## はじめに
今回はOracle・SQLServerにおいて、セッションをまとめて切断する方法について紹介します。  
特にRDSでOracleを利用している場合、ユーザの削除・セッションの削除ができなくなることがあります。

## ■ Oracleでセッションをまとめて切断する

{{< highlight sql >}}
DECLARE @KillCmd NVARCHAR(MAX) = N'';
SELECT @KillCmd = @KillCmd + 'KILL ' + CAST(session_id AS NVARCHAR(10)) + '; '
FROM sys.dm_exec_sessions
WHERE login_name LIKE '任意のユーザ名%'; 
EXEC sp_executesql @KillCmd;
{{< /highlight >}}

### ORA-01031: 権限が不足しています と表示される場合
```
ORA-01031: 権限が不足しています
ORA-06512: 行8
ORA-06512: 行8
01031. 00000 -  "insufficient privileges"
*Cause:    An attempt was made to perform a database operation without
           the necessary privileges.
*Action:   Ask your database administrator or designated security
           administrator to grant you the necessary privileges
```

{{< highlight sql >}}
DECLARE CURSOR c_sessions IS
SELECT sid, serial#
FROM v$session
WHERE username LIKE '任意のユーザ名%';
BEGIN
  FOR sess IN c_sessions LOOP
    rdsadmin.rdsadmin_util.kill(sess.sid, sess.serial#);
  END LOOP;
END;
{{< /highlight >}}


## ■ SQLServerでセッションをまとめて切断する



{{< highlight sql >}}
DECLARE
  CURSOR c_sessions IS
    SELECT sid, serial#
    FROM v$session
    WHERE username LIKE '任意のユーザ名%';
BEGIN
  FOR sess IN c_sessions LOOP
    EXECUTE IMMEDIATE 'ALTER SYSTEM KILL SESSION ''' || sess.sid || ',' || sess.serial# || '''';
  END LOOP;
END;
{{< /highlight >}}