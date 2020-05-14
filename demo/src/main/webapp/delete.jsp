<html>
<head>
    <style>
        body{background-image: url("http://getwallpapers.com/wallpaper/full/8/4/9/419320.jpg")}
        a{font-family:"Comic Sans MS", cursive, sans-serif; color:#5a005b;}
        input{font-family:"Comic Sans MS", cursive, sans-serif; border-radius: 10px;}
        #links{text-align: left;}
        #loginRegister{text-align: right;}
    </style>
</head>
<body>

<div id="links">
    <a href="http://localhost:8080/addnew">|Add new location|</a>
    <a href="http://localhost:8080/viewall">|View added locations|</a>
</div>
<div id="loginRegister">
    <a href="http://localhost:8080/login">|Logout|</a>
</div>

<form>
    <table>
        <thead>
        <tr>
            <th><a>Id</a></th>
            <th><input type="text" name="id" id="id"/></th>
            <form action="http://localhost:8080/delete">
                <th><input type="submit" value="Delete Entry"></th>
            </form>
        </tr>
        </thead>
    </table>
</form>

</body>
</html>