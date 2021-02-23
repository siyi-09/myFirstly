function checkName(){
    //用户名的规则： 昵称的长度为1-8，包含任意的字母、数字、中文，不可以使用其他符号
    var un=document.getElementById("username").value;
    var reg =/^([\u4e00-\u9fa5]|[a-zA-Z0-9]){1,8}$/i;
    var re = reg.test(un);
if(form1.username.value.trim() == ""){
document.getElementById("un").value="请设置用户名";
document.getElementById("un").type="text";
                        return false;  
}
if(re!=true){ 
document.getElementById("un").value="不符合规范哦";
document.getElementById("un").type="text";
                        return false;  
                    }else{
document.getElementById("un").type="hidden";
return true;
                    }
}

function checkpwd(){
//数字和26个英文字母组成
var up=document.getElementById("upwd").value;
var reg =/^([a-zA-Z0-9]){6,16}$/i;
var re=reg.test(up);
if(form1.upwd.value.trim() == ""){  
document.getElementById("up").value="请设置密码";
document.getElementById("up").type="text";
                        return false;  }
if(re!=true){ 
document.getElementById("up").value="不符合规范哦";
document.getElementById("up").type="text";
                        return false;  
                    }else{
document.getElementById("up").type="hidden"; 
return true;
                    }  
}

function checkapwd(){
if(form1.aupwd.value == ""){
document.getElementById("aup").value="请再写一遍密码确认";
document.getElementById("aup").type="text";
                        return false;}
if(form1.upwd.value != form1.aupwd.value){  
document.getElementById("aup").value="你这俩密码也不一样啊";
document.getElementById("aup").type="text";
                        return false;  
                        }else{
document.getElementById("aup").type="hidden"; 
return true;  
                    }  
}

function reg(form1){
  form1.action="regist.action";
 }
        var nc_token = ["CF_APP_1", (new Date()).getTime(), Math.random()].join(':');
        var NC_Opt = 
        {
            renderTo: "#your-dom-id",
            appkey: "CF_APP_1",
            scene: "register",
            token: nc_token,
            customWidth: 250,
            trans:{"key1":"code0"},
            elementID: ["usernameID"],
            is_Opt: 0,
            language: "cn",
            isEnabled: true,
            timeout: 3000,
            times:5,
            apimap: {
                // 'analyze': '//a.com/nocaptcha/analyze.jsonp',
                // 'get_captcha': '//b.com/get_captcha/ver3',
                // 'get_captcha': '//pin3.aliyun.com/get_captcha/ver3'
                // 'get_img': '//c.com/get_img',
                // 'checkcode': '//d.com/captcha/checkcode.jsonp',
                // 'umid_Url': '//e.com/security/umscript/3.2.1/um.js',
                // 'uab_Url': '//aeu.alicdn.com/js/uac/909.js',
                // 'umid_serUrl': 'https://g.com/service/um.json'
            },   
            callback: function call(data) { 
                window.console && console.log(nc_token);
                window.console && console.log(data.csessionid);
                window.console && console.log(data.sig);
                var uname=checkName();
                var pwd=checkpwd();
                var apwd=checkapwd();
                if(uname&&pwd&&apwd){
                    document.getElementById("regist").disabled=""; 
                    return true;              
                } 
                else{
                    alert("答应我先填完资料ok?");
                    window.location.reload();
                    return false;
                } }
                
            };
        var nc = new noCaptcha(NC_Opt);
        nc.upLang('cn', {
            _startTEXT: "请按住滑块，拖动到最右边",
            _yesTEXT: "验证通过",
            _error300: "哎呀，出错了，点击<a href=\"javascript:__nc.reset()\">刷新</a>再来一次",
            _errorNetwork: "网络不给力，请<a href=\"javascript:__nc.reset()\">点击刷新</a>",
        });
     