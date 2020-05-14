<html>
<body>
<head>
    <style>
        body{background-color: darkgrey;}
    </style>
</head>
<a href="http://localhost:8080/addnew">|Add new location|</a>
<a href="http://localhost:8080/viewall">|View added locations|</a>
<a href="http://localhost:8080/register">   |Register|</a>
<a href="http://localhost:8080/login">|Login|</a>

<form>
    <table>
        <thead>
        <tr>
            <th>Username</th>
            <th><input type="text" name="username" id="username"/></th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>Password</td>
            <td><input type="password" name="password" id="password"/></td>
        </tr>
        </tbody>
    </table>
    <form action="http://localhost:8080/login">
        <input type="submit" value="Login"/>
    </form>
</form>


</body>
</html>