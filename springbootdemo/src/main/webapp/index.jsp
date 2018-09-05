<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>樊文杰</title>
</head>
<body>
	<div>
		<form action="${pageContext.request.contextPath}/UserServlet" method="post">
		    First name:<br>
		    <input type="text" name="firstname" value="樊文杰"><br>
		    Last name:<br>
		    <input type="text" name="lastname" value=""><br><br>
		    <input type="submit" value="提交">
		</form>
		${user}
</div>
<script>
    /*这里是提交表单前的非空校验*/
    $("form").submit(function () {
        var first = $("input[name='firstname']").val();
        var last = $("input[name='lastname']").val();

        if (first == "" || first == null || first == undefined) {
            alert("first");
            return false;/*阻止表单提交*/
        } else if (last == "" || last == null || last == undefined) {
            alert("last");
            return false;/*阻止表单提交*/
        } else {
            alert("提交");
            return true;
        }
    })
</script>
</body>
</html>