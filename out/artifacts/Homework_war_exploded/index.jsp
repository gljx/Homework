<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/26
  Time: 17:14
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
    <script>
      function reloadframe() {
          console.log("rnm");
          var frame=document.getElementById("all");
          frame.contentWindow.location.reload(true);
      }
    </script>
  </head>
  <body>
    <div class="container">
      <div class="jumbotron">
        <h1 class="display-4">XX家庭账单系统</h1>
        <p class="lead">欢迎使用小型家庭账单系统</p>
        <hr class="my-4">
        <p>详细源码请访问关于</p>
        <a class="btn btn-primary btn-lg" href="https://github.com/gljx/Homework" role="button">About us</a>
      </div>
      <div class="row">
        <div class="col-1">
          <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
            <a class="nav-link active" id="v-pills-Add-tab" data-toggle="pill" href="#v-pills-Add" role="tab" aria-controls="v-pills-Add" aria-selected="true">Add</a>
            <a class="nav-link" id="v-pills-More-tab" onclick="reloadframe()" data-toggle="pill" href="#v-pills-More" role="tab" aria-controls="v-pills-More" aria-selected="false">More</a>
            <a class="nav-link" id="v-pills-Update-tab" data-toggle="pill" href="#v-pills-Update" role="tab" aria-controls="v-pills-Update" aria-selected="false">Update</a>
          </div>
        </div>
        <div class="col-11">
          <div class="tab-content" id="v-pills-tabContent">
            <div class="tab-pane fade show active" id="v-pills-Add" role="tabpanel" aria-labelledby="v-pills-Add-tab">
              <iframe src="goadd.action" style="width:100%;height:100%"></iframe>
            </div>
            <div class="tab-pane fade" id="v-pills-More" role="tabpanel" aria-labelledby="v-pills-More-tab">
              <iframe src="query.action" id="all" style="width:100%;height:100%"></iframe>
            </div>
            <div class="tab-pane fade" id="v-pills-Update" role="tabpanel" aria-labelledby="v-pills-Update-tab">
            <iframe src="goupdate.action" style="width:100%;height:100%"></iframe>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
