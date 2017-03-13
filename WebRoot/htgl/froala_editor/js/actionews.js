
var b=20;
function funcitonsto(){
	var magess=$(".froala-element").html();
    if(magess!="<p><br></p>"){
    	    var username=$("#usernanems").val();
    	    var ykeu=$("#yknames").val();
    	    var usernamesdd="";
    	    if(username==""){
    	    	usernamesdd=ykeu;
    	    }else{
    	    	usernamesdd=username;
    	    }
    	    var ym=$("#yema").val();
    	    //alert(ym);
    	    $("#newslists").html(" ");
    	    $("#newscont").val("");
    	    var html="";
    	    //magess=encodeURI(encodeURI(magess));
			$.getJSON("/peiyin//usersmessge.action",{"usernews":magess,"userName":usernamesdd,"ymas":ym},function(data){
				if(data.ms.totalCount>19){
					$("#ckgdss").html("<a href='#' style='font-size: 12px; color: #660;'>查看更多</a>");
					//alert(b+"---"+data.ms.totalPageCount);
					if(data.ms.totalCount==b){
						if(data.ms.totalCount==20){
							$("#yema").val(2);
						}else{
							$("#yema").val(data.ms.totalPageCount+1);
						}
					}else{
						$("#yema").val(data.ms.totalPageCount);
						b=data.ms.totalPageCount*20;
						//
					}
				}
				$("#newscont").val(data.newscont);
				$(data.ms.items).each(function(){
				   if(this.mspareyi=='1'){
					 html+="<div id='newsjilu'>"
							+"<div id='news1'><img src='"+this.mspareer+"' width='50' height='50'/></div>"
							+"<div id='news3'>"
							+"<a id='calos' href='javaSrict:;' style=' text-decoration:none;display: none;'><div id='deletes'>"
							+"<div style='width:18px; height: 18px; text-align:center;margin-left: -2px; display: none;font-weight:bold; font-size:14px;'>×</div></div></a>"
							+"<samp style='font-size:12px; color:#666;'>"+this.mdatesent+"</samp></div>"
							+"<div id='news2'>"
							+"<div id='mansess'><samp id='xizyssl'>"+this.messagecontent+"</samp></div></div>"
							+"</div>";
				    }
				   if(this.mspareyi=='2'){
					  html+="<div id='newsjilu' style='float:right;'>"
						  +"<div id='news1' style='float:right;'><img src='images/kefudianh.png' width='50' height='50'/></div>"
						  +"<div id='news3' style='float:right;'>"
						  +"<a id='calos' href='javaSrict:;' style=' text-decoration:none;display: none;'><div id='deletes1'>"
						  +"<div style='width:17px; height: 17px; text-align:center;font-weight:bold;display: none; font-size:14px;'>×</div></div></a><samp style='font-size:12px; color:#666;'>"+this.mdatesent+"</samp></div>"
						  +"<div id='news2' style='float:right; margin-right:2px;'><div id='mansessfd'><samp id='xizyssl'>"+this.messagecontent+"</samp></div></div>"
						  +"</div>";
				   }
					 
				});
				$(".froala-element").html("<p><br></p>");
				$("#newslists").html(html);
				$("#sysdinds2").animate({ scrollTop: $('#sysdinds2')[0].scrollHeight}, 1);
		     });
	   
	}else{
		alert("请输入消息!");	
		$("#sysdinds2").animate({ scrollTop: $('#sysdinds2')[0].scrollHeight}, 1);

	}
}




//动态查询用户端的消息
function funcitonstoajax(){

    	    var username=$("#usernanems").val();
    	    var ykeu=$("#yknames").val();
    	    var usernamesdd="";
    	    if(username==""){
    	    	usernamesdd=ykeu;
    	    }else{
    	    	usernamesdd=username;
    	    }
    	    var ym=$("#yema").val();
    	    //alert(ym);
    	    $("#newslists").html(" ");
    	    $("#newscont").val("");
    	    var html="";
			$.getJSON("/peiyin//usersmessge.action",{"userName":usernamesdd,"ymas":ym},function(data){
				if(data.ms.totalCount>19){
					$("#ckgdss").html("<a href='#' style='font-size: 12px; color: #660;'>查看更多</a>");
					if(data.ms.totalCount==b){
						if(data.ms.totalCount==20){
							$("#yema").val(2);
						}else{
							$("#yema").val(data.ms.totalPageCount+1);
						}
					}else{
						$("#yema").val(data.ms.totalPageCount);
						b=data.ms.totalPageCount*20;
					}
				}
				$("#newscont").val(data.newscont);
				$(data.ms.items).each(function(){
				   if(this.mspareyi=='1'){
					 html+="<div id='newsjilu'>"
							+"<div id='news1'><img src='"+this.mspareer+"' width='50' height='50'/></div>"
							+"<div id='news3'>"
							+"<a id='calos' href='javaSrict:;' style=' text-decoration:none;'><div id='deletes'>"
							+"<div style='width:17px; height: 17px; text-align:center;font-weight:bold; font-size:14px;'>×</div></div></a>"
							+"<samp style='font-size:12px; color:#666;'>"+this.mdatesent+"</samp></div>"
							+"<div id='news2'>"
							+"<div id='mansess'><samp id='xizyssl'>"+this.messagecontent+"</samp></div></div>"
							+"</div>";
				    }
				   if(this.mspareyi=='2'){
					  html+="<div id='newsjilu' style='float:right;'>"
						  +"<div id='news1' style='float:right;'><img src='images/kefudianh.png' width='50' height='50'/></div>"
						  +"<div id='news3' style='float:right;'>"
						  +"<a id='calos' href='javaSrict:;' style=' text-decoration:none;'><div id='deletes1'>"
						  +"<div style='width:17px; height: 17px; text-align:center;font-weight:bold; font-size:14px;'>×</div></div></a><samp style='font-size:12px; color:#666;'>"+this.mdatesent+"</samp></div>"
						  +"<div id='news2' style='float:right; margin-right:2px;'><div id='mansessfd'><samp id='xizyssl'>"+this.messagecontent+"</samp></div></div>"
						  +"</div>";
				   }
					 
				});
				$("#newslists").html(html);
				$("#sysdinds2").animate({ scrollTop: $('#sysdinds2')[0].scrollHeight}, 1);
		     });

}




window.onload = function(){
		$("#sysdinds2").animate({ scrollTop: $('#sysdinds2')[0].scrollHeight}, 1);
}
	

function sc(){
    var div = document.getElementById("sysdinds2");
    div.scrollTop = div.scrollHeight;
}

//后台点击用户查询用户消息
function newsusers(s,zhi){
    //alert(zhi);
	$(s).addClass("lnlns").css("border-color","#F60");
	$(s).siblings().removeClass("lnlns").css("border-color","#ccc");
	$("#newslists").html(" ");
    var html="";
	$.getJSON("/peiyin//findmessge.action",{"mesusers":zhi},function(data){
		//alert(data.mscn.totalCount);
		if(data.mscn.totalCount>20){
			$("#ckgdss").html("<a href='#' style='font-size: 12px; color: #660;'>查看更多</a>");
			//alert(b+"---"+data.ms.totalPageCount);
		}
		var k=0;
		$(data.mscn.items).each(function(){
			//alert(this.mspareer);
			if(k==0){
				$("#usersdd").html(" ");
				$("#usersdd").html(this.messagesender);
				k=1;
			}
		   if(this.mspareyi=='1'){
			 html+="<div id='newsjilu'>"
					+"<div id='news1'><img src='"+this.mspareer+"' width='50' height='50'/></div>"
					+"<div id='news3'>"
					+"<a id='calos' href='javaSrict:;' style=' text-decoration:none;'><div id='deletes'>"
					+"<div style='width:17px; height: 17px; text-align:center;font-weight:bold; font-size:14px;'>×</div></div></a>"
					+"<samp style='font-size:12px; color:#666;'>"+this.mdatesent+"</samp></div>"
					+"<div id='news2'>"
					+"<div id='mansess'><samp id='xizyssl'>"+this.messagecontent+"</samp></div></div>"
					+"</div>";
		    }
		   if(this.mspareyi=='2'){
			  html+="<div id='newsjilu' style='float:right;'>"
				  +"<div id='news1' style='float:right;'><img src='images/kefudianh.png' width='50' height='50'/></div>"
				  +"<div id='news3' style='float:right;'>"
				  +"<a id='calos' href='javaSrict:;' style=' text-decoration:none;'><div id='deletes1'>"
				  +"<div style='width:17px; height: 17px; text-align:center;font-weight:bold; font-size:14px;'>×</div></div></a><samp style='font-size:12px; color:#666;'>"+this.mdatesent+"</samp></div>"
				  +"<div id='news2' style='float:right; margin-right:2px;'><div id='mansessfd'><samp id='xizyssl'>"+this.messagecontent+"</samp></div></div>"
				  +"</div>";
		   }
		});
		//点击修改后刷新用户列表
		loadajaxdo();
		$("#newslists").html(html);
		$("#sysdinds2").animate({ scrollTop: $('#sysdinds2')[0].scrollHeight}, 1);
     });
}


//单机后该用户的消息
function cadminservice(){
	
	var magess=$(".froala-element").html();
    if(magess!="<p><br></p>"){
    	 var userName=$("#usersdd").html();
    	    //alert(userName);
    	 if(userName=="(无)"){
    		alert("您好!当前无用户会话!");
    	 }else{
    		var ym=$("#admyema").val();
     	    //alert(ym);
     	    $("#newslists").html(" ");
     	    var html="";
 			$.getJSON("/peiyin//ckliefsnews.action",{"newscom":magess,"userNames":userName,"usyema":ym},function(data){
 				//alert(data.ms.totalCount);
 				if(data.mdts.totalCount>19){
 					$("#ckgdss").html("<a href='#' style='font-size: 12px; color: #660;'>查看更多</a>");
 					//alert(b+"---"+data.mdts.totalPageCount);
 					if(data.mdts.totalCount==b){
 						if(data.mdts.totalCount==20){
 							$("#admyema").val(2);
 						}else{
 							$("#admyema").val(data.mdts.totalPageCount+1);
 						}
 					}else{
 						
 						$("#admyema").val(data.mdts.totalPageCount);
 						b=data.mdts.totalPageCount*20;

 					}
 				}
 				$(data.mdts.items).each(function(){
 					//alert(this.mspareer);
 				   if(this.mspareyi=='1'){
 					 html+="<div id='newsjilu'>"
 							+"<div id='news1'><img src='"+this.mspareer+"' width='50' height='50'/></div>"
 							+"<div id='news3'>"
 							+"<a id='calos' href='javaSrict:;' style=' text-decoration:none;'><div id='deletes'>"
 							+"<div style='width:17px; height: 17px; text-align:center;font-weight:bold; font-size:14px;'>×</div></div></a>"
 							+"<samp style='font-size:12px; color:#666;'>"+this.mdatesent+"</samp></div>"
 							+"<div id='news2'>"
 							+"<div id='mansess'><samp id='xizyssl'>"+this.messagecontent+"</samp></div></div>"
 							+"</div>";
 				    }
 				   if(this.mspareyi=='2'){
 					  html+="<div id='newsjilu' style='float:right;'>"
 						  +"<div id='news1' style='float:right;'><img src='images/kefudianh.png' width='50' height='50'/></div>"
 						  +"<div id='news3' style='float:right;'>"
 						  +"<a id='calos' href='javaSrict:;' style=' text-decoration:none;'><div id='deletes1'>"
 						  +"<div style='width:17px; height: 17px; text-align:center;font-weight:bold; font-size:14px;'>×</div></div></a><samp style='font-size:12px; color:#666;'>"+this.mdatesent+"</samp></div>"
 						  +"<div id='news2' style='float:right; margin-right:2px;'><div id='mansessfd'><samp id='xizyssl'>"+this.messagecontent+"</samp></div></div>"
 						  +"</div>";
 				   }
 					 
 				});
 				
 				$("#newslists").html(html);
 				$("#sysdinds2").animate({ scrollTop: $('#sysdinds2')[0].scrollHeight}, 1);
 			
 		     });
 			
    	 }   
	}else{
		alert("请输入消息!");	
		$("#sysdinds2").animate({ scrollTop: $('#sysdinds2')[0].scrollHeight}, 1);
	}
	
}


//动态查询用户列表
function loadajaxdo(){
	
	//$(s).siblings().removeClass("lnlns").css("border-color","#ccc");
	$("#usercount3").html("");
	var htmlu="";
	$.getJSON("/peiyin//newsduser.action",function(data){
		$(data.tpsd.items).each(function(){
			var cbd="";
			if(this.mrole.substring(0,1)=='Y'){
				cbd="游客";
			}else{
				cbd=this.mrole;
			}
			var bqehtcss="";
			if(this.mclick==201){
				bqehtcss="class='lnlns' style='border-color:#F60;'";
			}else{
				bqehtcss="";
			}

			htmlu+="<div id='userslist' "+bqehtcss+" onclick=\"newsusers(this,'"+this.messagesender+"');\">"
				 +"<div id='userids1'>"
				 +"<div id='ltouxians1'><img src='"+this.mspareer+"' width='60' height='60'/></div>"
				 +"<div id='ltouxians2'>"
				 +"<div id='flwosn1'><samp style=' font-size:12px; line-height:25px; color:#666;'>&nbsp;待查看消息：<samp style='font-weight:bold; font-size:16px; color:red;'>"+this.mcount+"</samp></samp></div>"
				 +"<div id='flwosn2'><samp style=' font-size:14px; line-height:25px; color:#666;'>&nbsp;ID:<samp style='font-weight:bold; font-size:14px; color:red;'>"+this.messagesender+"</samp></samp></div>"
				 +"</div>"
				 +"</div>"
				 +"<div id='userids2'><samp style=' font-size:12px; '><samp style='font-weight:bold; font-size:16px; color:red;'>"+this.messagesender+"<samp style='font-size:12px;'>&nbsp;("+cbd+")"
				 +"</samp>"
				 +"</samp></samp></div>"
				 +"<div style='border:0px solid red; width: 20px; height: 20px; position:relative; right: -180px; top: -16px; font-weight: bold;color: #333;'><a style='color: #333;' href='deletnews.action?umesName="+this.messagesender+"'>×</a></div>"
				 +"</div>";
		});
		
		$("#usercount3").html(htmlu);
     });
}


function ajaxfindload(){

var userName=$("#usersdd").html();
    //alert(userName);
 if(userName=="(无)"){
	 //alert("你有新消息!");
 }else{
	var ym=$("#admyema").val();
	    //alert(ym);
	    $("#newslists").html(" ");
	    var html="";
		$.getJSON("/peiyin//ckliefsnews.action",{"userNames":userName,"usyema":ym},function(data){
			//alert(data.ms.totalCount);
			if(data.mdts.totalCount>19){
				$("#ckgdss").html("<a href='#' style='font-size: 12px; color: #660;'>查看更多</a>");
				//alert(b+"---"+data.mdts.totalPageCount);
				if(data.mdts.totalCount==b){
					if(data.mdts.totalCount==20){
						$("#admyema").val(2);
					}else{
						$("#admyema").val(data.mdts.totalPageCount+1);
					}
				}else{
					
					$("#admyema").val(data.mdts.totalPageCount);
					b=data.mdts.totalPageCount*20;

				}
			}
			$(data.mdts.items).each(function(){
				//alert(this.mspareer);
			   if(this.mspareyi=='1'){
				 html+="<div id='newsjilu'>"
						+"<div id='news1'><img src='"+this.mspareer+"' width='50' height='50'/></div>"
						+"<div id='news3'>"
						+"<a id='calos' href='javaSrict:;' style=' text-decoration:none;'><div id='deletes'>"
						+"<div style='width:17px; height: 17px; text-align:center;font-weight:bold; font-size:14px;'>×</div></div></a>"
						+"<samp style='font-size:12px; color:#666;'>"+this.mdatesent+"</samp></div>"
						+"<div id='news2'>"
						+"<div id='mansess'><samp id='xizyssl'>"+this.messagecontent+"</samp></div></div>"
						+"</div>";
			    }
			   if(this.mspareyi=='2'){
				  html+="<div id='newsjilu' style='float:right;'>"
					  +"<div id='news1' style='float:right;'><img src='images/kefudianh.png' width='50' height='50'/></div>"
					  +"<div id='news3' style='float:right;'>"
					  +"<a id='calos' href='javaSrict:;' style=' text-decoration:none;'><div id='deletes1'>"
					  +"<div style='width:17px; height: 17px; text-align:center;font-weight:bold; font-size:14px;'>×</div></div></a><samp style='font-size:12px; color:#666;'>"+this.mdatesent+"</samp></div>"
					  +"<div id='news2' style='float:right; margin-right:2px;'><div id='mansessfd'><samp id='xizyssl'>"+this.messagecontent+"</samp></div></div>"
					  +"</div>";
			   }
				 
			});
			
			$("#newslists").html(html);
			$("#sysdinds2").animate({ scrollTop: $('#sysdinds2')[0].scrollHeight}, 1);
		
	     });
     }
 }		
