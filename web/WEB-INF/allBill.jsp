<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/27
  Time: 20:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="/js/bootstrap.bundle.js"></script>
    <script src="/js/bootstrap.js"></script>
    <link rel="stylesheet" href="/css/bootstrap-grid.min.css"/>
    <link rel="stylesheet" href="/css/bootstrap-reboot.min.css"/>
    <link rel="stylesheet" href="/css/bootstrap.min.css"/>
</head>
<body>
<div class="container">
    <div class="alert alert-success" role="alert">
        <h4 class="alert-heading">账单信息</h4>
        <p>欢迎使用账单记录系统</p>
        <hr>
        <br/>
    </div>
    <table class="table table-hover">
        <thead>
        <tr>
            <th scope="col">ID</th>
            <th scope="col">Income</th>
            <th scope="col">Expend</th>
            <th scope="col">BillYear</th>
            <th scope="col">BillMonth</th>
            <th scope="col">BillDay</th>
            <th scope="col">BillCategory</th>
            <th scope="col">BillRemark</th>
        </tr>
        </thead>
        <tbody>
        <s:iterator var="bill" value="list" status="st">
            <tr class="table-primary">
                <th scope="row"><s:property value="id"/></th>
                <td><s:property value="income"/></td>
                <td><s:property value="expend"/></td>
                <td><s:property value="billYear"/></td>
                <td><s:property value="billMonth"/></td>
                <td><s:property value="billDay"/></td>
                <td><s:property value="billCategory"/></td>
                <td><s:property value="remark"/></td>
                <td><a href="deletebill.action?id=<s:property value="id"/>">delete bill</a>
            </tr>
        </s:iterator>
        </tbody>
    </table>
</div>
</body>
</html>
