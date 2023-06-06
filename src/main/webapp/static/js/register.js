
const app = new Vue({
    el:'#app',
    methods:{
        checkphone() {
            var phone = document.getElementById("InputPhone").value;
            var phoneRegExp = /^\d{11}$/gi
            var ok1 = phoneRegExp.test(phone);
            if (!ok1) {
                alert("电话号码不符合要求")
                console.log("5/")
            }
        },
        equalpassword() {
            let password=document.getElementById("exampleInputPassword");
            let password1=document.getElementById("exampleInputPassword1");
            if(password==password1){
                return true
            }else{
            console.log("两次密码不同")
                alert("两次密码不同")
            return false}
        },
        checkpassword() {

            var password = document.getElementById("exampleInputPassword").value;
            var passwordRegExp = /^[a-zA-Z]\w{5,17}$/gi
            var ok = passwordRegExp.test(password);
            if (!ok) {
                alert("密码不符合要求")
                console.log("4")
            }
        },

    }
})