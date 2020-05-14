<html>
<head>
    <title>Locations</title>
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
            <th>Name</th>
            <th>X-coordinates</th>
            <th>Y-coordinates</th>
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