<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zzzzz
  Date: 2021/1/4
  Time: 16:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>书籍展示</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container">

    <div class="row_clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>书籍列表 ———————— 显示所有书籍</small>
                </h1>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4 column">
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/toAddPaper">新增书籍</a>
            </div>
            <div class="col-md-4 column">
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/allBook">显示全部书籍</a>
            </div>
            <div class="col-md-4 column">
                <!--查询书籍-->
                <form method="post" action="${pageContext.request.contextPath}/book/queryBookByName" style="float:right">
                    <input type="text" name="bookName" class="form-inline" placeholder="请输入要查询的书籍名称">
                    <input type="submit" class="btn-primary" value="查询">
                </form>
            </div>
        </div>

    </div>

    <div class="row clearfix">
    <div class="col-md-12 column">
        <table class="table table-hover table-striped">
            <thead>
            <tr>
                <th>书籍编号</th>
                <th>书籍名称</th>
                <th>书籍数量</th>
                <th>书籍详情</th>
            </tr>
            </thead>

            <tbody>
            <c:forEach var="book" items="${booksList}">
                <tr>
                    <td>${book.bookID}</td>
                    <td>${book.bookName}</td>
                    <td>${book.bookCounts}</td>
                    <td>${book.detail}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/book/toUpdate?bookID=${book.bookID}" class="btn btn-primary">修改</a>
                        &nbsp; &nbsp;
                        <a href="${pageContext.request.contextPath}/book/deleteBook/${book.bookID}" class="btn btn-primary">删除</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>

        </table>
    </div>

    </div>
</div>


</body>
</html>
