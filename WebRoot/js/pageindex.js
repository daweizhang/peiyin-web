//参与竞标
$(function() {
	$("#cyjnsls")
			.submit(
					function() {
						var flag = true;
						// 竞标价格
						var jbjsge = $("#rmbidnexs").val();
						var reg = new RegExp("^[0-9]*$");
						// var idsre = jbjsge.lastIndexOf(".");
						if (jbjsge != "") {
							if (jbjsge >= 10000) {
								$("#messges").html(
										"×如预算价格大于一万,请直接联系客服人员!");
								flag = false;
							}
							
							if (jbjsge < 300) {
								$("#messges").html("×预算价位不能小300(RMB)!");
								flag = false;
							}
							if (!reg.test(jbjsge)) {
								$("#messges").html("×预算费用只能为数字且不能有小数点!");
								flag = false;
							}
						}
						if (jbjsge == "") {
							$("#messges").html("×预算费用不能为空!");
							flag = false;
						}

						// 文件格式
						var fileindex = $("#filesy").val();
						var itb = fileindex.lastIndexOf(".");
						var filsxx = fileindex.substring(itb + 1,
								fileindex.length);
						if (filsxx != "mp3" && filsxx != "MP3"
								&& filsxx != "OGG" && filsxx != "ogg"
								&& filsxx != "CD" && filsxx != "cd"
								&& filsxx != "WMA" && filsxx != "wma"
								&& filsxx != "WAV" && filsxx != "wav"
								&& filsxx != "MP3PRO" && filsxx != "mp3pro"
								&& filsxx != "RM" && filsxx != "rm"
								&& filsxx != "REAL" && filsxx != "real"
								&& filsxx != "APE" && filsxx != "ape"
								&& filsxx != "MODULE" && filsxx != "module"
								&& filsxx != "MIDI" && filsxx != "midi"
								&& filsxx != "VQF" && filsxx != "vqf"
								&& filsxx != "ASF" && filsxx != "asf") {
							$("#messges")
									.html(
											"×试音文件格式只能为(MP3,OGG,CD,WMA,WAV,MP3PRO,RM,REAL,APE,MODULE,MIDI,VQF,ASF)格式!");
							flag = false;
						}

						if (fileindex == "") {
							$("#messges").html("×试音文件不能为空!");
							flag = false;
						}

						return flag;
					});
});

//任务方点击合作formtijiasz

$(function() {
	$("#formtijiasz")
			.submit(
					function() {
						var flag = true;
						//支付宝账户
						var zfb=$("#zhifbhes").val();
						var idsre = zfb.lastIndexOf(" ");
						if(idsre!=-1){
							$("#tijzhsnes").html("×支付宝账户不能有空格!");
							flag=false;
						}
						if(zfb.length<6){
							$("#tijzhsnes").html("×支付宝账户不能小于6位!");
							flag=false;
						}
						if(zfb==""){
							$("#tijzhsnes").html("×支付宝为核实您支付身份的凭证!不能为空!");
							flag=false;
						}
						
						

						return flag;
					});
});
//配音员点击提交成品

$(function() {
	$("#peiycheform")
			.submit(
					function() {
						var flag = true;
						//支付宝账户
						var zhjifb=$("#zifzhhus").val();
						var zfb = zhjifb.lastIndexOf(" ");
						if(zhjifb!=""){
							if(zfb!=-1){
								$("#tijcpspan").html("您好!支付宝账户不能空格!");
								flag=false;
							}
						}
						if(zhjifb==""){
							$("#tijcpspan").html("您好!支付宝账户不能为空!");
							flag=false;
						}
						
						//收款人姓名
						var skname=$("#skrname").val();
						var itbsg = skname.lastIndexOf(" ");
						if(skname!=""){
							if(itbsg!=-1){
								$("#tijcpspan").html("您好!收款人姓名不能空格!");
								flag=false;
							}
						}
						if(skname==""){
							$("#tijcpspan").html("您好!收款人姓名不能为空!");
							flag=false;
						}
						
						
                        //成品文件
						var files=$("#filesy").val();
						var itb = files.lastIndexOf(".");
						var filsxx = files.substring(itb + 1,
								files.length);
						if (filsxx != "mp3" && filsxx != "MP3"
								&& filsxx != "OGG" && filsxx != "ogg"
								&& filsxx != "CD" && filsxx != "cd"
								&& filsxx != "WMA" && filsxx != "wma"
								&& filsxx != "WAV" && filsxx != "wav"
								&& filsxx != "MP3PRO" && filsxx != "mp3pro"
								&& filsxx != "RM" && filsxx != "rm"
								&& filsxx != "REAL" && filsxx != "real"
								&& filsxx != "APE" && filsxx != "ape"
								&& filsxx != "MODULE" && filsxx != "module"
								&& filsxx != "MIDI" && filsxx != "midi"
								&& filsxx != "VQF" && filsxx != "vqf"
								&& filsxx != "ASF" && filsxx != "asf") {
							$("#tijcpspan")
									.html(
											"×成品文件格式只能为(MP3,OGG,CD,WMA,WAV,MP3PRO,RM,REAL,APE,MODULE,MIDI,VQF,ASF)格式!");
							flag = false;
						}
						if(files==""){
							$("#tijcpspan").html("您好!文件不能为空!");
							flag=false;
						}
						return flag;
					});
});

//任务方邀请竞标人员参与竞标

$(function() {
	$("#fklnalws")
			.submit(
					function() {
						var flag = true;
						//任务ID
						var rwid=$("#pids").val();
						if(rwid==""){
							$(".losein55").html("您好!请选择任务!");
							flag=false;
						}
						

						return flag;
					});
});


