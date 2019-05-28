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
    <script src="/js/bootstrap.bundle.min.js"></script>
    <script src="/js/bootstrap.js"></script>
    <script src="/js/bootstrap.min.js"></script>
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
                <td><a href="deletebill.action?id=<s:property value="id"/>">delete bill</a>&nbsp;<a
                        href="updatebill.action?id=<s:property value="id"/>">update bill</a></td>
            </tr>
        </s:iterator>
        </tbody>
    </table>
</div>
<div id="wrap">
    <div id="top_content">
        <div id="header">
            <div id="rightheader">
                <p>
                    2009/11/20 <br />
                </p>
            </div>
            <div id="topheader">
                <h1 id="title">
                    <a href="#">main</a>
                </h1>
            </div>
            <div id="navigation"></div>
        </div>
        <div id="content">
            <p id="whereami"></p>
            <h1>Welcome!</h1><%--
            <table class="table" border=1>
                <tr class="table_header">
                    <td>ID</td>
                    <td>Income</td>
                    <td>Expend</td>
                    <td>BillYear</td>
                    <td>BillMonth</td>
                    <td>BillDay</td>
                    <td>BillCategory</td>
                    <td>BillRemark</td>
                </tr>
                <s:iterator var="bill" value="list" status="st">
                    <tr class="row1">
                        <td><s:property value="id"/></td>
                        <td><s:property value="income"/></td>
                        <td><s:property value="expend"/></td>
                        <td><s:property value="billYear"/></td>
                        <td><s:property value="billMonth"/></td>
                        <td><s:property value="billDay"/></td>
                        <td><s:property value="billCategoty"/></td>
                        <td><s:property value="remark"/></td>
                        <td><a href="deletebill.action?id=<s:property value="id"/>">delete bill</a>&nbsp;<a
                                href="updatebill.action?id=<s:property value="id"/>">update bill</a></td>
                    </tr>
                </s:iterator>
            </table>--%>
            <p>
                <input type="button" class="btn-primary" value="Add bill"
                       onclick="location='toAdd.action'" />
            </p>

            <%--<div id="pages">
                <s:if test="page==1">
                    <a href="#">previous page</a>
                </s:if>
                <s:if test="page!=1">
                    <a href="query.action?page=${page-1}">previous page</a>
                </s:if>

                <s:iterator var="i" begin="1" end="totalPage">
                    <s:if test="#i==page">
                        <a href="#">${i}</a>
                    </s:if>
                    <s:if test="#i!=page">
                        <a href="query.action?page=${i}">${i}</a>
                    </s:if>
                </s:iterator>

                <s:if test="page==totalPage">
                    <a href="#">Next page</a>
                </s:if>
                <s:if test="page!=totalPage">
                    <a href="query.action?page=${page+1}">Next page</a>
                </s:if>
            </div>--%>
        </div>
    </div>
    <div id="footer">
        <div id="footer_bg">ABC@126.com</div>
    </div>
</div>
</body>
</html>
