<html>
<body>
<head>
    <style>
        body{background-image: url("http://getwallpapers.com/wallpaper/full/8/4/9/419320.jpg")}
        a{font-family:"Comic Sans MS", cursive, sans-serif; color:#5a005b;}
        input{font-family:"Comic Sans MS", cursive, sans-serif; border-radius: 10px;}
        #loginRegister{text-align: right;}
    </style>
</head>

<div id="loginRegister">
    <a href="http://localhost:8080/register">|Register|</a>
    <a href="http://localhost:8080/login">|Login|</a>
</div>


<form>
    <table>
        <thead>
        <tr>
            <th><a>Username</a></th>
            <th><input type="text" name="username" id="username"/></th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td><a>Password</a></td>
            <td><input type="password" name="password" id="password"/></td>
        </tr>
        <tr>
            <td><a>Email</a></td>
            <td><input type="text" name="email" id="email"/></td>
        </tr>
        </tbody>
    </table>
    <form action="http://localhost:8080/register">
        <input type="submit" value="Register"/>
    </form>
</form>

</body>
</html>
