<%--
  Created by IntelliJ IDEA.
  User: zzzzz
  Date: 2021/1/4
  Time: 19:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加书籍</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container">

    <div class="row_clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>书籍列表 ———————— 新增书籍</small>
                </h1>
            </div>
        </div>

        <form method="post" action="${pageContext.request.contextPath}/book/addBook">
            <div class="form-group">
                <label for="bkname">书籍名称：</label>
                <input type="text" name="bookName" class="form-control" id="bkname">
            </div>
            <div class="form-group">
                <label for="bkcounts">书籍数量：</label>
                <input type="text" name="bookCounts" class="form-control" id="bkcounts">
            </div>
            <div class="form-group">
                <label for="bkdetail">书籍描述：</label>
                <input type="text" name="detail" class="form-control" id="bkdetail">
            </div>
            <button type="submit" class="btn btn-default">添加</button>
        </form>

    </div>


</div>


</body>
</html>
