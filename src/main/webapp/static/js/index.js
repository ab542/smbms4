
console.log("pig")
function  f(show) {
    let xhr = new XMLHttpRequest();
    let obj;
    xhr.onreadystatechange = function(){
        if( xhr.status == 200 && xhr.readyState == 4){
            let data = xhr.responseText;
            // 把json格式的字符串 转为 json
             obj = JSON.parse(data);
            console.log(obj)
            //alert("data=="+ obj + ", id属性="+obj.id);

        }
    }
    const proid=Number(document.getElementById("pn_input").value);
    console.log(Number(document.getElementById("pn_input").value));
    xhr.open("get","/smbms/show1?proid="+proid+"&show="+show,false);
    xhr.send();
    return obj;
}

const app = new Vue({
    el: '#app',
    data: {
        apple: "pet_show1"
    },
    methods: {
        change(apple1) {
            switch (Number(apple1)) {
                case 1:this.apple="pet_show1";break;
                case 2:this.apple="pet_show2";break;
                case 3:this.apple="pet_show3";break;
                case 4:this.apple="pet_show4";break;
                case 5:this.apple="pet_show5";break;
            }
            page.currentpage=1
            app1.pets=f(this.apple)

        },
        buttonclick() {
            apple1()
        }
    }
})

const page = new Vue({
    el:'#page',
    data:{
        currentpage:1,
    },
    methods:{
        add(){
            this.currentpage++
        },
        sub(){
            this.currentpage--
        },
        pageclick(){
            app1.pets=f(app.apple)

        }
    }
});


const app1 = new Vue({
    el:'#app1',
    data:{
        pets:f(app.apple)
    },

});




/*
如果是show1 就向pet_show1表 请求数据
如果是show2 就向pet_show2表 请求数据
如果是show3 就向pet_show3表 请求数据*/