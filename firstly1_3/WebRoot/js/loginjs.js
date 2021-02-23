function checkName2(){
var up1=document.getElementById("uid").value;
if(up1 == ""){return false;  }
else{return true;}
}

function checkpwd2(){
var up2=document.getElementById("upwd").value;
if(up2 == ""){  
                        return false;  
                        }else{

return true;
}  
 }
 
function reg(form1){  
                    var uid=checkName2();
                    var upwd=checkpwd2();
                if(uid&&upwd){
                   form1.action="loginuser";                   
                }else{
                   alert("填完了?");
                   window.location.reload();
                   return false;
             }               
}