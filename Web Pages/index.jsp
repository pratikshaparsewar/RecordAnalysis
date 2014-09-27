<%-- 
    Document   : index
    Created on : Sep 26, 2014, 12:27:56 AM
    Author     : Pratiksha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Record Analysis</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <link href="src/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="src/lib/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="src/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="src/main.css" rel="stylesheet" type="text/css"/>
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300' rel='stylesheet' type='text/css'>
    </head>
    <body>
        <h3 class="title">Unique Identity Project</h3>
        <div class="container">            
            <div class="col-md-12 operations">
                <div><a href="operations/new.jsp" class="action-button shadow animate blue">Create <i class="fa fa-plus"></i></a></div>
                <div><a href="operations/delete.jsp" class="action-button shadow animate red">DELETE <i class="fa fa-trash"></i></a></div>
                <div><a href="operations/update.jsp" class="action-button shadow animate green">UPDATE <i class="fa fa-pencil"></i></a></div>
                <div><a href="operations/list.jsp" class="action-button shadow animate yellow">LIST <i class="fa fa-list"></i></a></div>
                <div><a href="operations/analysis.jsp" class="action-button shadow animate brown">Do ANALYSIS <i class="fa fa-bar-chart"></i></a></div>
            </div>
        </div>
        <script src="src/lib/jquery.min.js" type="text/javascript"></script>
        <script src="src/lib/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    </body>
</html>
