
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Chat</title>
    <script src="JS/chat.js"></script>
</head>
<body>
    <textarea id="messagesChat" readonly rows="10" cols="45"></textarea>
    <input type="text" id="messagesWrite" size="50"/>
    <input type="button" value="Send" onclick="sendMessage()"/>
</body>
</html>
