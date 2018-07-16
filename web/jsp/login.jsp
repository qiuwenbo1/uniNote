<%--
  Created by IntelliJ IDEA.
  User: seriouszyx
  Date: 2018/7/16
  Time: 10:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Dynamic Single Page Login + Sign Up</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href='https://fonts.googleapis.com/css?family=Roboto:300,400,600' rel='stylesheet' type='text/css'>


    <link rel="stylesheet" href="../css/login.css">


</head>

<body>

<div id="back">
    <canvas id="canvas" class="canvas-back"></canvas>
    <div class="backRight">
    </div>
    <div class="backLeft">
    </div>
</div>

<div class="foo" id="left-letter">
    <span class="letter" data-letter="u">u</span>
    <span class="letter" data-letter="n">n</span>
    <span class="letter" data-letter="i">i</span>
    <span class="letter" data-letter="N">N</span>
    <span class="letter" data-letter="o">o</span>
    <span class="letter" data-letter="t">t</span>
    <span class="letter" data-letter="e">e</span>
</div>

<div id="right-letter">
    <b>Note</b>
    <b>the</b>
    <b>Universe</b>
</div>

<div id="slideBox">
    <div class="topLayer">
        <div class="left" style="overflow-x: hidden;overflow-y: hidden">
            <div class="content">
                <h2>Sign Up</h2>
                <form id="form-signup" method="post" onsubmit="return false;" action="${pageContext.request.contextPath}/UserServlet?method=userSignup">
                    <div class="form-element form-stack">
                        <label for="email" class="form-label">Email</label>
                        <input id="email" type="email" name="email">
                    </div>
                    <div class="form-element form-stack">
                        <label for="username-signup" class="form-label">Username</label>
                        <input id="username-signup" type="text" name="username">
                    </div>
                    <div class="form-element form-stack">
                        <label for="password-signup" class="form-label">Password</label>
                        <input id="password-signup" type="password" name="password">
                    </div>
                    <div class="form-element form-checkbox">
                        <input id="confirm-terms" type="checkbox" name="confirm" value="yes" class="checkbox">
                        <label for="confirm-terms">I agree to the
                            <a href="#">Terms of Service</a> and
                            <a href="#">Privacy Policy</a>
                        </label>
                    </div>
                    <div class="form-element form-submit">
                        <button id="signUp" class="signup" type="submit" name="signup">Sign up</button>
                        <button id="goLeft" class="signup off">Log In</button>
                    </div>
                </form>
            </div>
        </div>
        <div class="right">
            <div class="content">
                <h2>Login</h2>
                <form id="form-login" method="post" onsubmit="return false;">
                    <div class="form-element form-stack">
                        <label for="username-login" class="form-label">Username</label>
                        <input id="username-login" type="text" name="username">
                    </div>
                    <div class="form-element form-stack">
                        <label for="password-login" class="form-label">Password</label>
                        <input id="password-login" type="password" name="password">
                    </div>
                    <div class="form-element form-submit">
                        <button id="logIn" class="login" type="submit" name="login">Log In</button>
                        <button id="goRight" class="login off" name="signup">Sign Up</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/paper.js/0.11.3/paper-full.min.js'></script>



<script src="../js/login.js"></script>




</body>

</html>
