function checkform() {
    /*获取到表单内容 
    var name=form1.name.value;
    var password=form1.password.value;
    这种方式JavaScript可以不放到最后
    因为没有出现为出现的id值

    但是下面的利用documentHTML文件获取到节点里面的属性值时
    我们要将JavaScript放到最后 因为出现了未出现的id值
    */
    var name = document.getElementById("exampleInputName1").value;
    var password = document.getElementById("exampleInputPassword1").value;
    if (name == "") {
        alert("请输入名字")
        console.log("1")
    }
    if (password == "") {
        alert("请输入密码")
        console.log("2")
    }
    /**这里需要从数据库中获取数据 */
    if (name == "liying" && password == "aa1234") {
        alert("登录成功")
        console.log("3")
    }
}
/**利用这种方式不必在HTML页面里写上onclink属性的值 修改的时候方面 只有修改一次 不必在HTML页面里面修改
 * 
 * 同时利用onload事件 就可以在页面加载完后执行此代码
 * 就不用将JavaScript放到最后了
 
window.onload = function() {
    var getonclink = document.getElementById("btn");
    getonclink.onclick = checkform;
}
*/

/**密码(以字母开头，长度在6~18之间，只能包含字母、数字和下划线)
 * 全局 忽略大小写
 */
function checkPassword() {

    var password = document.getElementById("exampleInputPassword").value;
    var passwordRegExp = /^[a-zA-Z]\w{5,17}$/gi
    var ok = passwordRegExp.test(password);
    if (!ok) {
        alert("密码不符合要求")
        console.log("4")
    }
}

function checkPhone() {
    var phone = document.getElementById("InputPhone").value;
    var phoneRegExp = /^\d{11}$/gi
    var ok1 = phoneRegExp.test(phone);
    if (!ok1) {
        alert("电话号码不符合要求")
        console.log("5/")
    }
}
window.onload = function() {
    var getonblur = document.getElementById("exampleInputPassword1");
    getonblur.onblur = checkPassword;
    var getonblur1 = document.getElementById("InputPhone");
    getonblur1.onblur = checkPhone;
}