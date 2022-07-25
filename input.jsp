<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>社員情報登録</title>
</head>
<body>

<h1>社員情報登録</h1>
<p>登録する社員の情報を入力してください</p>


<form action=InputServlet method="post">
    <table>

    <tr>
      <th>氏</th>
      <td><input type="text" name="lastName" required="required" placeholder="全角文字10文字以内"> </td>
      <td> ${errorMsg.lName} </td>
    </tr>

    <tr>
      <th>名</th>
      <td><input type="text" name="firstName" required="required" placeholder="全角文字10文字以内"> </td>
      <td> ${errorMsg.fName} </td>
    </tr>

    <tr>
      <th>氏（カナ）</th>
      <td><input type="text" name="lastNameKana" required="required" placeholder="全角文字10文字以内"> </td>
      <td> ${errorMsg.lNameKana} </td>
    </tr>

    <tr>
      <th>名（メイ）</th>
      <td><input type="text" name="firstNameKana" required="required" placeholder="全角文字10文字以内"> </td>
      <td> ${errorMsg.fNameKana} </td>
    </tr>

    <tr>
      <th>性別</th>
      <td><input type="radio" name="name" value="1" required="required"> 男
      <input type="radio" name="name" value="2" required="required"> 女 </td>
    </tr>

    <tr>
      <th>部署コード</th>
      <td>
      <select name="department">
      <option value="100">人事部</option>
      <option value="200">経理部</option>
      <option value="300">営業部</option>
      <option value="400">企画部</option>
      <option value="500" selected="selected">開発部</option>
      <option value="600">総務部</option>
      </select>
      </td>
    </tr>

    <tr>
    <th>パスワード</th>
    <td><input type="password" name="password" required="required" placeholder="半角文字8文字以内"></td>
    <td> ${errorMsg.password} </td>
    </tr>

    <tr>
    <td><input type="submit" value="登録"></td>
    </tr>
    </table>
</form>
<br><a href="sample1_from.jsp">トップページに戻る</a>

</body>
</html>