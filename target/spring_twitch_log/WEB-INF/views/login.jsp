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

    <title>Log in with your account</title>

    <script src="//code.jquery.com/jquery.min.js"></script>
    <script src="https://ttv-api.s3.amazonaws.com/twitch.min.js"></script>
    <script src="/resources/twitch.auth.js"></script>
    <script src="/resources/twitch.core.js"></script>
    <script src="/resources/twitch.events.js"></script>
    <script src="/resources/twitch.init.js"></script>
    <script src="/resources/twitch.storage.js"></script>

    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet">

    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

    <script>    $(function () {
        var getInfo = function (callback) {
            Twitch.getStatus(function(err, status) {
                callback(channel);
            });
        }
        Twitch.init({clientId: '1vurum8ri4igxgk7oty6d3l047mtad'}, function(error, status) {
            console.log(status);
            if (status.authenticated){
                $('.twitch-disconnect').hide();
                getInfo(function (data) {
                    $('strong').text(data.display_name);
                    $('#visit').text('Visite my channel').attr('href','https://www.twitch.tv/gogiandrosian');
                })
            } else {
                $('#login-info').hide();
            }
        });
        var chekStatus = function () {
            Twitch.getStatus(function(err, status) {
                console.log(status);
            });
        }
        chekStatus();
        var login = function () {
            Twitch.login({
                scope: ['user_read', 'channel_read']
            });
        }
        var logout = function () {
        }
        $('.twitch-connect').click(function (e) {
            e.preventDefault();
            login();
        })
        $('.twitch-disconnect').click(function (e) {
            e.preventDefault();
            logout();
        })
    })</script>


</head>

<body>

<h4 class="text-center"><a href="#"><img src="http://ttv-api.s3.amazonaws.com/assets/connect_dark.png" class="twitch-connect" /></a></h4>


<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>