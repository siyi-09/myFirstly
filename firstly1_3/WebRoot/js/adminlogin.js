function checkId(){
var up1=document.getElementById("aid").value;
if(up1 == ""){return false;  }
else{return true;}
}

function checkpwd3(){
var up2=document.getElementById("apwd").value;
if(up2 == ""){  
                        return false;  
                        }else{

return true;
}  
 }
 
function reg(form1){  
                    var aid=checkId();
                    var apwd=checkpwd3();
                if(aid&&apwd){
                   form1.action="adminLogin";                   
                }else{
                   alert("填完了?");
                   window.location.reload();
                   return false;
             }               
}