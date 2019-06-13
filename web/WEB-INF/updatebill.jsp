<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/13
  Time: 22:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="update.action" method="post">
    <table cellpadding="0" cellspacing="0" border="0"
           class="form_table">
        <tr>
            <td valign="middle" align="right">
                id:
            </td>
            <td valign="middle" align="left">
                <input type="text" class="inputgri" name="bill.id" />
            </td>
        </tr>
        <tr>
            <td valign="middle" align="right">
                expend
            </td>
            <td valign="middle" align="left">
                <input type="text" class="inputgri" name="bill.expend" />
            </td>
        </tr>
        <tr>
            <td valign="middle" align="right">
                income
            </td>
            <td valign="middle" align="left">
                <input type="text" class="inputgri" name="bill.income" />
            </td>
        </tr>

        <tr>
            <td valign="middle" align="right">
                Year
            </td>
            <td valign="middle" align="left">
                <input type="text" class="inputgri" name="bill.billYear" />
            </td>
        </tr>

        <tr>
            <td valign="middle" align="right">
                Month
            </td>
            <td valign="middle" align="left">
                <input type="text" class="inputgri" name="bill.billMonth" />
            </td>
        </tr>

        <tr>
            <td valign="middle" align="right">
                Day
            </td>
            <td valign="middle" align="left">
                <input type="text" class="inputgri" name="bill.billDay" />
            </td>
        </tr>

        <tr>
            <td valign="middle" align="right">
                Category
            </td>
            <td valign="middle" align="left">
                <input type="text" class="inputgri" name="bill.billCategory" />
            </td>
        </tr>

        <tr>
            <td valign="middle" align="right">
                Remark
            </td>
            <td valign="middle" align="left">
                <input type="text" class="inputgri" name="bill.remark" />
            </td>
        </tr>
    </table>
    <p>
        <input type="submit" class="button" value="Confirm" />
    </p>
</form>
</body>
</html>
