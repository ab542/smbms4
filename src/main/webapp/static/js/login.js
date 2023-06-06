//从页面获取值
var name = document.getElementById("exampleInputName1").value;
var password = document.getElementById("exampleInputPassword1").value;

function checkPassword1(){

    var password = document.getElementById("exampleInputPassword1").value;
    var passwordRegExp = /^[a-zA-Z]\w{5,17}$/gi
    var ok = passwordRegExp.test(password);
    if (!ok) {
        console.log("11密码不符合要求")
        alert("密码不符合要求")
    }
    return ok
}
/*
function checkPhone() {
    var phone = document.getElementById("InputPhone").value;
    var phoneRegExp = /^\d{11}$/gi
    var ok1 = phoneRegExp.test(phone);
    if (!ok1) {
        console.log("22电话号码不符合要求")
        alert("电话号码不符合要求")
    }
    return ok1
}*/
const app = new Vue({
    el:'#box',
    methods:{
        aclick(){
            if(checkPassword1()&&(name!=null)){
                console.log("33密码和电话号码 账号符合要求")
            }else{
                alert("不符合要求")

            }


        }
    }
})

