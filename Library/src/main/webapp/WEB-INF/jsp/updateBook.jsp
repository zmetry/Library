<%--
  Created by IntelliJ IDEA.
  User: zzzzz
  Date: 2021/1/4
  Time: 20:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改书籍</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">

    <div class="row_clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>书籍列表 ———————— 修改书籍</small>
                </h1>
            </div>
        </div>

        <form method="post" action="${pageContext.request.contextPath}/book/updateBook">
            <div class="form-group">
                <label for="bkname">书籍名称：</label>
                <input type="text" name="bookName" class="form-control" value="${QueryBook.bookName}" id="bkname">
            </div>
            <div class="form-group">
                <label for="bkcounts">书籍数量：</label>
                <input type="text" name="bookCounts" class="form-control" value="${QueryBook.bookCounts}" id="bkcounts">
            </div>
            <div class="form-group">
                <label for="bkdetail">书籍描述：</label>
                <input type="text" name="detail" class="form-control" value="${QueryBook.detail}" id="bkdetail">
            </div>
            <div class="form-group">
                <label for="bkID"></label>
                <input type="hidden" name="bookID" class="form-control" value="${QueryBook.bookID}" id="bkID">
            </div>
            <button type="submit" class="btn btn-default">修改</button>
        </form>

    </div>


</div>

</body>
</html>
