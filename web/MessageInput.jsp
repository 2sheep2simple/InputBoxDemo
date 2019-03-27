<%--
  Created by IntelliJ IDEA.
  User: Mr.Su
  Date: 2019/3/25
  Time: 21:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>员工信息录入</title>
</head>
<script src="js/jquery.min.js"></script>
<script>


    function submit() {
        var flag = true;
        var age = $(" input[ name='age' ] ").val()
        var name = $(" input[ name='name' ] ").val()
        var cardid = $(" input[ name='cardid' ] ").val()
        var address = $(" input[ name='address' ] ").val()
        var email = $(" input[ name='email' ] ").val()

        if (name == null || name == ""){
            window.alert ("请继续填写 ！")
            return false
        }else {
            var reg = /^[\u4e00-\u9fa5]{1,5}$/;
            if (!reg.test(name)) {
                window.alert ("请输入1-5个汉字 ！")
                return false
            }
        }

        if (cardid == null || cardid == ""){
            window.alert ("请继续填写 ！")
            return false
        }else{
            var reg = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X)$)|(^\d{14}(\d|X)$)/;
            if (!reg.test(cardid)) {
                window.alert ("请输入正确的身份证号 ！")
                return  false
            }
        }

        if (email != null && email != "") {
            var  reg = /^(([0-9a-zA-Z]+)|([0-9a-zA-Z]+[_.0-9a-zA-Z-]*[0-9a-zA-Z]+))@([a-zA-Z0-9-]+[.])+([a-zA-Z]{2}|net|NET|com|COM|gov|GOV|mil|MIL|org|ORG|edu|EDU|int|INT)$/
            if (!reg.test(email)) {
                window.alert ("请输入有效合法的E-mail地址 ！")
                return false
            }
        }

        if (age == null || age == ""){
            window.alert ("请继续填写 ！")
            return false
        }else{
            var reg = /^(1[89]|[2-8][0-9]|90)$/
            if (!reg.test(age)) {
                window.alert ("请输入正确的年龄 ！")
                return false
            }

        }

        if (flag) {
            $.post('/Servlet',
                {name:name,age:age,email:email,address:address,cardid:cardid},
                function (data) {
                    alert("录入成功")
                });
        }else {
            alert("录入错误")
        }
    }
</script>
<body>
    <table>
        <tr>
            <td>姓名</td>
            <td><input type="text" name="name" placeholder="必填"></td>
        </tr>
        <tr>
            <td>身份证</td>
            <td><input type="text" name="cardid" placeholder="必填"></td>
        </tr>
        <tr>
            <td>邮箱</td>
            <td><input type="text" name="email" ></td>
        </tr>
        <tr>
            <td>年龄</td>
            <td><input type="text" name="age" placeholder="必填"></td>
        </tr>
        <tr>
            <td>住址</td>
            <td><input name="address" ></td>
        </tr>
        <tr>
            <td><input type="button" name="submitButton" value="提交" onclick="submit()"></td>
        </tr>
    </table>
</body>
</html>
