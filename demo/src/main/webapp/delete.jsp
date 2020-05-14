<html>
<head>
    <style>
        body{background-color: darkgrey;}
    </style>
</head>
<body>
<a href="http://localhost:8080/addnew">|Add new location|</a>
<a href="http://localhost:8080/viewall">|View added locations|</a>
<a href="http://localhost:8080/register">   |Register|</a>
<a href="http://localhost:8080/login">|Login|</a>

<form>
    <table>
        <thead>
        <tr>
            <th>Id</th>
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