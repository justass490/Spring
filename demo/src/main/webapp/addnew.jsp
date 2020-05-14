<html>
<head>
    <title>Locations</title>
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
            <th><a>Name</a></th>
            <th><a>X-coordinates</a></th>
            <th><a>Y-coordinates</a></th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td><input type="text" name="coordname" id="coordname"/></td>
            <td><input type="text" name="xcoord" id="xcoord"/></td>
            <td><input type="text" name="ycoord" id="ycoord"/></td>
            <form action="http://localhost:8080/addnew">
            <td><input type="submit" value="submit"/></td>
            </form>
        </tr>
        </tbody>
    </table>
</form>
</body>
</html>