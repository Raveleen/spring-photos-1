<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-COMPATIBLE" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Menu</title>

    <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/style.css"/>" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="/">Menu</a>
        </div>
    </div>
</nav>

<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
            <ul class="nav nav-sidebar">
                <li><a href="/">Menu</a></li>
                <li><a href="/discount">Dishes with discount</a></li>
                <li><a href="/portion">Portion of dishes under 1kg</a></li>
                <li><a href="#input_price" data-toggle="collapse">Dishes within price range</a>
                    <div id="input_price" class="collapse">
                        <form action="/price" method="get">
                            <div class="input-group-sm">
                                <input type="text" pattern="[1-9]{1}[0-9]{,6}" class="form-control" name="min_price"
                                       placeholder="Minimal price"><br>
                                <input type="text" pattern="[1-9]{1}[0-9]{,6}" class="form-control" name="max_price"
                                       placeholder="Maximal price"><br>
                                <button type="submit" class="btn btn-sm btn-success">Search</button>
                            </div>
                        </form>
                    </div>
                </li>
                <li><a href="/add-form">Add dish to menu</a></li>
            </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <form action="/add" method="post">
                <div class="input-group-sm">
                    <input type="text" pattern="^[A-Za-z\s]+$" class="form-control" name="name"
                           placeholder="Name"><br>
                    <input type="text" pattern="[1-9]{1}[0-9]{,6}" class="form-control" name="weight"
                           placeholder="Weight"><br>
                    <input type="text" pattern="[1-9]{1}[0-9]{,6}" class="form-control" name="price"
                           placeholder="Price"><br>
                    <input type="text" pattern="[0-9]{1,2}" class="form-control" name="discount" placeholder="Discount"><br>
                    <button type="submit" class="btn btn-sm btn-success">Add</button>
                </div>
            </form>
        </div>
    </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
</body>
</html>