
/*-------------登陆验证---------------*/

$(function(){
    $("#login_zylc1").focus(function(){
	   $(this).val("");
    });
});


function hhafav(){	
	 //账户名验证
    var username=$("#login_zylc1").val();
     //验证密码
    var pass=$(".passwor_id11").val();
     //验证码
    var yzm=$("#login_dls1").val();
        var flag=true;
        //账户名
       var reg=/^[a-zA-Z0-9 ]{1,18}$/;
       /*if(yzm.length==4){
    	   alert("fsf");
		   $.ajax({
				url:'/peiyin//loginUsers!seletyam.action?jsyzm='+yzm,
			    dataType: "json",
			    success: function(data) {
					if(data.yanzm==false){
						flag=false;	
						alert(data.yanzm);
						$("#fsfs_11").html("");
				       	$("#fsfs_11").html("×验证码不正确!");
		            }	
					
				}
			 });	
		   
		   }*/
       
       if(yzm.length<4){
      	 flag=false;
       	  $("#fsfs_11").html("");
       	  $("#fsfs_11").html("×Verification code can not be less than 4");
       }
       
 	   if(reg.test(username)==false){
 		   flag=false;
 	     $("#fsfs_11").html("");
 	     $("#fsfs_11").html("×Please enter your registered user name!").css("color","red");
 		   
 	   }	  
         if(yzm==""){
      	  flag=false;
      	  $("#fsfs_11").html("");
      	  $("#fsfs_11").html("×Verification code cannot be empty.");
         } 
        if(pass==""){
      	flag=false;
      	$("#fsfs_11").html("");
      	$("#fsfs_11").html("×Password can not be empty.");
        } 
       if(username==""||username=="Personal user name"){
    	  flag=false;
    	  $("#fsfs_11").html("");
    	  $("#fsfs_11").html("×User name cannot be empty.");
    	  
       }    

        return flag;
   
};



/*-------------注册表单---------------*/
$(function(){

	$(".regs_js").change(function(){
		//角色
		var regName=$(".regs_js").val();
		if(regName!=1){
			$("#regesjs1").html("√").css("color","red");
		}
		if(regName==1){
			$("#regesjs1").html("×Please select the role you need to correspond to the business!").css("color","red");
		}		
	});
	
	
	
	
	$(".reg_uname").blur(function(){
		//用户名
		var reg=/^[a-zA-Z0-9 ]{1,18}$/;
		var uname=$(".reg_uname").val();
		if(uname!=""){
			$("#regesjs2").html("√").css("color","red");
		}
		$.ajax({
			url:'/peiyin//loginUsers!findUs.action?jsdyh='+uname,
		    dataType: "json",
		    success: function(data) {
			   if(data.yamyhm==false){
				   $("#regesjs2").html("");
				   $("#regesjs2").html("×User name already exists！");
			   }	
			}
		 });	
		if(reg.test(uname)==false){
		     $("#regesjs2").html("");
		     $("#regesjs2").html("×Please fill in the size of the English letters, numbers, length of 8-18 characters.");
		   }
		if(uname==""){
			$("#regesjs2").html("×Please fill in your user name.").css("color","red");
		}
	});
	
	$(".reg_unames").blur(function(){
		//用户名
		var reg=/^[a-zA-Z0-9 ]{1,18}$/;
		var uname=$(".reg_unames").val();
		if(uname!=""){
			$("#regesjs2").html("√").css("color","red");
		}
		if(reg.test(uname)==false){
		     $("#regesjs2").html("");
		     $("#regesjs2").html("×Please fill in the size of the English letters, numbers, length of 8-18 characters");
		   }
		if(uname==""){
			$("#regesjs2").html("×Please fill in your user name!").css("color","red");
		}
	});
	$(".u_email").blur(function(){
	
		//邮箱
		var uemal=$(".u_email").val();
		//邮箱
	     var rec=/^\w+@\w+(\.[a-zA-Z]{2,3}){1,2}$/;
	    
		if(uemal!=""){
			$("#regesjs3").html("√").css("color","red");
		}
		if(rec.test(uemal)==false){
		     $("#regesjs3").html("");
		     $("#regesjs3").html("×E-mail format is not correct, please re - enter!").css("color","red");
		  }
		if(uemal==""){
			$("#regesjs3").html("×This field is required!").css("color","red");
		}
		
	});
	
	
	$(".u_emails").blur(function(){
		
		//邮箱
		var uemal=$(".u_emails").val();
		//邮箱
	     var rec=/^\w+@\w+(\.[a-zA-Z]{2,3}){1,2}$/;
	    
		if(uemal!=""){
			$(".cvsfevs").html("√").css("color","red");
		}
		if(rec.test(uemal)==false){
		     $(".cvsfevs").html("");
		     $(".cvsfevs").html("×E-mail format is not correct, please re - enter!").css("color","red");
		  }
		if(uemal==""){
			$(".cvsfevs").html("×This field is required!").css("color","red");
		}
		
	});
	
	$(".u_pawd").blur(function(){
		//密码
		var upwd=$(".u_pawd").val();
		//密码
	    var rem=/^[a-zA-Z0-9]{6,20}$/;
		if(upwd!=""){
			$("#regesjs4").html("√").css("color","red");
		}
		if(rem.test(upwd)==false){
		     $("#regesjs4").html("");
		     $("#regesjs4").html("×Password format error, please write English letters, numbers, length 6-20 characters!").css("color","red");
		   }
		if(upwd==""){
			$("#regesjs4").html("×Password can not be empty!").css("color","red");
		}
	});
	
	$(".u_pwdqr").blur(function(){
		//密码
		var upwd=$(".u_pawd").val();
		//确认密码
		var qumima=$(".u_pwdqr").val();
		if(qumima==""){
			$("#regesjs5").html("");
		}
		if(upwd==qumima){
			$("#regesjs5").html("√").css("color","red");
		}
		if(upwd!=qumima){
			$("#regesjs5").html("");
			$("#regesjs5").html("×Two passwords are not consistent!").css("color","red");
		}
	});
	
	
	$(".u_pawds").blur(function(){
		//密码
		var upwd=$(".u_pawds").val();
		//密码
	    var rem=/^[a-zA-Z0-9]{6,20}$/;
		if(upwd!=""){
			$(".fxinmim").html("√").css("color","red");
		}
		if(rem.test(upwd)==false){
		     $(".fxinmim").html("");
		     $(".fxinmim").html("×Password format error, please write English letters, numbers, length 6-20 characters!").css("color","red");
		   }
		if(upwd==""){
			$(".fxinmim").html("×Password can not be empty!").css("color","red");
		}
	});
	
	$(".u_pwdqrs").blur(function(){
		//密码
		var upwd=$(".u_pawds").val();
		//确认密码
		var qumima=$(".u_pwdqrs").val();
		if(qumima==""){
			$(".fxinmimss").html("");
		}
		if(upwd==qumima){
			$(".fxinmimss").html("√").css("color","red");
		}
		if(upwd!=qumima){
			$(".fxinmimss").html("");
			$(".fxinmimss").html("×两次密码不一致!").css("color","red");
		}
	});
	
	$(".yam_cc").blur(function(){
		//验证码
		var yaz=$(".yam_cc").val();
		if(yaz!=""){
			$("#regesjs6").html("√").css("color","red");
		}
		if(yaz==""){
			$("#regesjs6").html("");
			$("#regesjs6").html("×Please enter the verification code!").css("color","red");
		}
	});
	$(".regsscs_yam").blur(function(){
		//验证码
		var yaz=$(".regsscs_yam").val();
		if(yaz!=""){
			$(".yazmdcsv_oo").html("√").css("color","red");
		}
		if(yaz==""){
			$(".yazmdcsv_oo").html("");
			$(".yazmdcsv_oo").html("×Please enter the verification code!").css("color","red");
		}
	});
	$("#checkboxf").click(function(){
		//协议选择
		var xiyi=$("#checkboxf").is(":checked");
		if(xiyi==true){
			
			$("#regesjs7").html("√").css("color","red");
			
		}
		
	});
	
/*$("#login_zylc1").focus(function(){
$(this).val("");*/
});
$(function(){
  $("#regesfrom").submit(function(){
	var flag=true;
	var yiyi=0;
	//角色
	var regName=$(".regs_js").val();
	//用户名
	var uname=$(".reg_uname").val();
	//邮箱
	var uemal=$(".u_email").val();
	//密码
	var upwd=$(".u_pawd").val();
	//确认密码
	var qumima=$(".u_pwdqr").val();
	//验证码
	var yaz=$(".yam_cc").val();
	//协议选择
	var xiyi=$("#checkboxf").is(":checked");
	
	
	//账户名
    var reg=/^[a-zA-Z0-9]{6,18}$/;
    //邮箱
    var rec=/^\w+@\w+(\.[a-zA-Z]{2,3}){1,2}$/;
    //密码
    var rem=/^[a-zA-Z0-9]{6,20}$/;
    
    
  
    
    //密码
    if(rem.test(upwd)==false){
		   flag=false;
	     $("#regesjs4").html("");
	     $("#regesjs4").html("×Password format error, please write English letters, numbers, length 6-20 characters!").css("color","red");
	   }
    //邮箱
    if(rec.test(uemal)==false){
		   flag=false;
	     $("#regesjs3").html("");
	     $("#regesjs3").html("×E - mail format is not correct, please re - enter!").css("color","red");
	   }	
    //用户名
    if(reg.test(uname)==false){
		   flag=false;
	     $("#regesjs2").html("");
	     $("#regesjs2").html("×Please fill in the size of the English letters, numbers, length of 8-18 characters!").css("color","red");
	   }	
	//协议选择
	if(xiyi==false){
		flag=false;
		$("#regesjs7").html("");
		$("#regesjs7").html("× You need to agree to the Protocol to sign up!").css("color","red");
	}
	
	//验证码
	if(yaz==""){
		flag=false;
		$("#regesjs6").html("");
		$("#regesjs6").html("×Please enter the verification code!").css("color","red");
	}
	//确认密码
	if(upwd!=qumima){
		flag=false;
		$("#regesjs5").html("");
		$("#regesjs5").html("×Two passwords are not consistent!").css("color","red");
	}
	//密码
	if(upwd==""){
		flag=false;
		$("#regesjs4").html("");
		$("#regesjs4").html("×Password can not be empty!").css("color","red");
	}
	
	//邮箱
	if(uemal==""){
		flag=false;
		$("#regesjs3").html("");
		$("#regesjs3").html("×This field is required!").css("color","red");
	}
	
	//用户名
	if(uname==""){
		flag=false;
		$("#regesjs2").html("");
		$("#regesjs2").html("×Please fill in your user name!").css("color","red");
	}
	//角色选择
	if(regName==1){
		flag=false;
		$("#regesjs1").html("");
		$("#regesjs1").html("×Please select the role you need to correspond to the business!").css("color","red");
	}
	
	
	/*//验证码验证
	if(yaz.length==4){
	$.ajax({
		url:'/peiyin//loginUsers!yzamez.action?zcyzm='+yaz,
	    dataType: "json",
	    success: function(data) {
	    	//alert(data.zcbr);
		   if(data.zcbr==false){
			   yiyi=1;
			   //alert(yiyi);
			   $("#regesjs6").html("");
			   $("#regesjs6").html("×验证码错误!").css("color","red");
			   
		   }	
		   
		}
	 });
	}*/
	
	return flag;
  });
});
//找回密码的验证
$(function(){
	  $("#backpsdfrom").submit(function(){
		var flag=true;

		
		//用户名
		var uname=$(".reg_unamess").val();
		
		//验证码
		var yaz=$(".yam_cc").val();
		
		//账户名
	    var reg=/^[a-zA-Z0-9]{8,18}$/;
	    //邮箱
		var uemal=$(".u_emails").val();
		//邮箱
	    var rec=/^\w+@\w+(\.[a-zA-Z]{2,3}){1,2}$/;
	  //邮箱
	    if(rec.test(uemal)==false){
			   flag=false;
		     $(".cvsfevs").html("");
		     $(".cvsfevs").html("×E-mail format is not correct, please re - enter!").css("color","red");
		   }	

	    //用户名
	    if(reg.test(uname)==false){
			   flag=false;
		     $("#regesjs2").html("");
		     $("#regesjs2").html("×Please fill in the size of the English letters, numbers, length of 8-18 characters!").css("color","red");
		   }
	   //邮箱
		if(uemal==""){
			flag=false;
			$(".cvsfevs").html("");
			$(".cvsfevs").html("×This field is required!").css("color","red");
		}
		
		//验证码
		if(yaz==""){
			flag=false;
			$("#regesjs6").html("");
			$("#regesjs6").html("×Please enter the verification code!").css("color","red");
		}
		
		//用户名
		if(uname==""){
			flag=false;
			$("#regesjs2").html("");
			$("#regesjs2").html("×Please fill in your user name!").css("color","red");
		}

		return flag;
	  });
});

//输入邮箱判断的验证码
$(function(){
	  $("#formczshn").submit(function(){
		var flag=true;

		
		
		//验证码
		var yaz=$(".regsscs_yam").val();
		
		
	    

	  
		
		//验证码
		if(yaz==""){
			flag=false;
			$(".yazmdcsv_oo").html("");
			$(".yazmdcsv_oo").html("×Please enter the verification code!").css("color","red");
		}
		if(yaz.length<6){
	      	 flag=false;
	       	  $(".yazmdcsv_oo").html("");
	       	  $(".yazmdcsv_oo").html("×Verification code can not be less than 6!");
	       }
		

		return flag;
	  });
});




//手机验证等待时间--------------------------------------------------------
$(function  () {
	//获取短信验证码
	var validCode=true;
	$(".msgs").click (function  () {
		var time=3600;
		var code=$(this);
		if (validCode) {
			validCode=false;
			code.addClass("msgs1");
		var t=setInterval(function  () {
			time--;
			code.html("已发送，剩余"+time+"秒后过期");
			if (time==0) {
				clearInterval(t);
			code.html("点击重新发送");
				validCode=true;
			code.removeClass("msgs1");
			}
		},1000);
		}
	});
});
//修改新密码-------------------------------------------------------
$(function(){
	  $("#formxinmm").submit(function(){
		  var flag=true;

		    //密码
		    var rem=/^[a-zA-Z0-9]{6,20}$/;
		    //密码
			var upwd=$(".u_pawds").val();
			//确认密码
			var qumima=$(".u_pwdqrs").val();
			 //密码
		    if(rem.test(upwd)==false){
				   flag=false;
			     $(".fxinmim").html("");
			     $(".fxinmim").html("×Password format error, please write English letters, numbers, length 6-20 characters!").css("color","red");
			   }
			//确认密码
			if(upwd!=qumima){
				flag=false;
				$(".fxinmimss").html("");
				$(".fxinmimss").html("×Two passwords are not consistent!").css("color","red");
			}
			//密码
			if(upwd==""){
				flag=false;
				$(".fxinmim").html("");
				$(".fxinmim").html("×Password can not be empty!").css("color","red");
			}
		return flag;
	  });
});







