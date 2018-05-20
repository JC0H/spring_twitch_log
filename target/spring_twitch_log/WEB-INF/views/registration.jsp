<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Create an account</title>

    <script src="//code.jquery.com/jquery.min.js"></script>
    <script src="https://ttv-api.s3.amazonaws.com/twitch.min.js"></script>
    <script src="/resources/twitch.auth.js"></script>
    <script src="/resources/twitch.core.js"></script>
    <script src="/resources/twitch.events.js"></script>
    <script src="/resources/twitch.init.js"></script>
    <script src="/resources/twitch.storage.js"></script>

    <!-- Bootstrap Core CSS -->
    <link href="${contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="${contextPath}/resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
    <link href="${contextPath}/resources/vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${contextPath}/resources/css/stylish-portfolio.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet">

    <script>$(function() {
        var getInfo = function(callback) {
            Twitch.api({method: 'channel'}, function(error, channel) {
                callback(channel);
            });
        }

        Twitch.init({clientId: '1vurum8ri4igxgk7oty6d3l047mtad'}, function(error, status) {
            if (status.authenticated) {
                $('.twitch-connect').hide();

                getInfo(function(data) {
                    var name = data.display_name;
                    input = document.getElementById('target');
                    target.value = name;
                    $('strong').text(data.display_name)
                });
            } else {
                $('#login-info').hide();
            }
        });

        var login = function()
        {
            Twitch.login({
                scope: ['user_read', 'channel_read']
            });
        }

        $('.twitch-connect').click(function(e) {
            e.preventDefault();

            login();
        })
    })</script>

</head>

<body id="page-top">


<!-- Header -->
<header class="masthead d-flex">
    <div class="container">


        <center><h1 class="mb-1">Regestration</h1>

            <a href="#"><img src="http://ttv-api.s3.amazonaws.com/assets/connect_dark.png" class="twitch-connect" /></a>
        </center>

        <div id="login-info">

            <div align="center"><h2 class="form-signin-heading">Welcome <strong></strong>!</h2></div>

            <form:form method="POST" modelAttribute="userForm" class="form-signin">

                <spring:bind path="usercode">
                    <div class="form-group ${status.error ? 'has-error' : ''}">
                        <form:input type="text" path="usercode" class="form-control" placeholder="Kod promocyjny"
                                    autofocus="true"></form:input>
                        <form:errors path="usercode"></form:errors>
                    </div>
                </spring:bind>


                <spring:bind path="username">
                    <div class="form-group ${status.error ? 'has-error' : ''}">
                        <form:input type="text" path="username" class="form-control" id="target"
                                    autofocus="true"></form:input>
                        <form:errors path="username"></form:errors>
                    </div>
                </spring:bind>

                <spring:bind path="password">
                    <div class="form-group ${status.error ? 'has-error' : ''}">
                        <form:input type="password" path="password" class="form-control" placeholder="Haslo"></form:input>
                        <form:errors path="password"></form:errors>
                    </div>
                </spring:bind>

                <spring:bind path="confirmPassword">
                    <div class="form-group ${status.error ? 'has-error' : ''}">
                        <form:input type="password" path="confirmPassword" class="form-control"
                                    placeholder="Potwierdzenie hasla"></form:input>
                        <form:errors path="confirmPassword"></form:errors>
                    </div>
                </spring:bind>

                <button class="btn btn-lg btn-primary btn-block" type="submit">OK</button>
            </form:form>

        </div>



    </div>
</header>


<!-- Bootstrap core JavaScript -->
<script src="${contextPath}/resources/vendor/jquery/jquery.min.js"></script>
<script src="${contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Plugin JavaScript -->
<script src="${contextPath}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for this template -->
<script src="${contextPath}/resources/js/stylish-portfolio.min.js"></script>

</body>
</html>