<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <title>入力内容の確認</title>
</head>
<body>
    <h1>入力内容の確認</h1>
    <p>名前：${onamae}</p>
    <p>メールアドレス：${mail_address}</p>
    <p>性別：${sex}</p>
    <p>お問い合わせ種別：
<%
String[] cates = (String[]) request.getAttribute("cates");
if (cates != null) {
    for (String cate : cates) {
        out.print(cate + " ");
    }
}
%>
</p>
    <p>住まいエリア：${pref}</p>
    <p>メッセージ：<span style="white-space: pre-wrap;">${message}</span></p>
<form action="${pageContext.request.contextPath}/contact/thanks" method="post">
    <input type="hidden" name="onamae" value="${onamae}">
    <input type="hidden" name="mail_address" value="${mail_address}">
    <input type="hidden" name="sex" value="${sex}">
    <input type="hidden" name="pref" value="${pref}">
    <input type="hidden" name="message" value="${message}">

    <%
    if (cates != null) {
        for (String cate : cates) {
    %>
    <input type="hidden" name="cates" value="<%= cate %>">
    <%
        }
    }
    %>

    <button type="submit">完了画面へ</button>
</form>
</body>
</html>