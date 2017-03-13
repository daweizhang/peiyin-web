/*-------------------首页下拉框JQ---------------------*/

/*-------------------首页下拉框JQ---------------------*/

/*-------------------注册页面JQ---------------------*/
$(function() {

	$("#regs_li2").click(function() {
		$("#reges_qhd2").css("display", "block");
		$("#reges_qhd1").css("display", "none");
		$("#reg_zhmia").css("display", "none");
		$("#regs_li2").addClass("beijignsy");
		$("#regs_li1").removeClass("beijignsy");
		$("#regs_li3").removeClass("beijignsy");
	});
	$("#regs_li1").click(function() {
		$("#reges_qhd1").css("display", "block");
		$("#reges_qhd2").css("display", "none");
		$("#reg_zhmia").css("display", "none");
		$("#regs_li1").addClass("beijignsy");
		$("#regs_li2").removeClass("beijignsy");
		$("#regs_li3").removeClass("beijignsy");
	});
	$("#regs_li3").click(function() {
		$("#reg_zhmia").css("display", "block");
		$("#reges_qhd1").css("display", "none");
		$("#reges_qhd2").css("display", "none");
		$("#regs_li3").addClass("beijignsy");
		$("#regs_li1").removeClass("beijignsy");
		$("#regs_li2").removeClass("beijignsy");
	});

});

/*
 * $(function(){ $("#mydiaji").click(function(){ $(".theme-popover").show();
 * $(".theme-popover-mask").show(); }); $(".close").click(function(){
 * $(".theme-popover").hide(); $(".theme-popover-mask").hide(); }); });
 */

/*-------------------注册页面JQ---------------------*/

/*---------------------登陆页面图片滚动-----------*/

var index = 0;// 记录当前是第几张图片需要显示
var maxPicNumber = 6;// 最多几张图片
var tingzhi = false;// 记录是否要将当前循环的图片停止

function changePic1() {
	if (tingzhi) {
		return;
	}
	var myLi = $("#picContainer1 .ul_left1 li");// 获取所有图片的li
	var myPage = $("#picContainer_biaozhi_11 .ul_right1 li");// 获取所有选项卡的li

	myLi.eq(index).fadeIn().siblings().fadeOut();
	myPage.eq(index).addClass("myColor1").siblings().removeClass();

	index++;
	if (index >= maxPicNumber) {// 不能大于最大的图片张数
		index = 0;
	}
}

setInterval("changePic1()", 3000);

$(function() {
	$("#picContainer_biaozhi_11 .ul_right1 li").hover(function() {
		index = $(this).index();// 获取当前li对应的下标
		// alert(index);
		changePic1();
		tingzhi = true;// 将当前的系统循环停止掉
	}, function() {
		tingzhi = false;
	});

});
/*---------------------登陆页面图片滚动-----------*/

/*---------------------展示首页导航----------------*/

$(function() {
	$("#void_nes1 .buxian").css({
		"background-color" : "#FF9201",
		"color" : "#FFFFFF"
	});
	$("#pyy_ylcs li").eq(0).css("background-color", "#CBCBCB");
	$("#pyy_ylcs li").click(
			function() {
				$(this).css("background-color", "#CBCBCB").parent().siblings()
						.find("li").css("background-color", "#F6F6F6");
			});

	$(".void_nes113 li").click(function() {
		var index = $(this).index();
		var text = $(this).html();
		if (index == 0) {
			$(".renwulx").find("span").html(" ").parent().hide();
			$(this).css({
				"background-color" : "#FF9201",
				"color" : "#FFFFFF"
			}).siblings().css({
				"background-color" : "#FFFFFF",
				"color" : "#a1a3a6"
			});
		} else {
			$(".renwulx").find("span").html(text).parent().show();
			$(this).css({
				"background-color" : "#FF9201",
				"color" : "#FFFFFF"
			}).siblings().css({
				"background-color" : "#FFFFFF",
				"color" : "#a1a3a6"
			});
		}
		;
	});
	$(".void_nes1211 li").click(function() {
		var index = $(this).index();
		var text = $(this).html();
		if (index == 0) {
			$(".xingbielx").find("span").html(" ").parent().hide();
			$(this).css({
				"background-color" : "#FF9201",
				"color" : "#FFFFFF"
			}).siblings().css({
				"background-color" : "#FFFFFF",
				"color" : "#a1a3a6"
			});
		} else {
			$(".xingbielx").find("span").html(text).parent().show();
			$(this).css({
				"background-color" : "#FF9201",
				"color" : "#FFFFFF"
			}).siblings().css({
				"background-color" : "#FFFFFF",
				"color" : "#a1a3a6"
			});
		}
		;
	});
	$(".void_nes1221 li").click(function() {
		var index = $(this).index();
		var text = $(this).html();
		if (index == 0) {
			$(".yuyanlx").find("span").html(" ").parent().hide();
			$(this).css({
				"background-color" : "#FF9201",
				"color" : "#FFFFFF"
			}).siblings().css({
				"background-color" : "#FFFFFF",
				"color" : "#a1a3a6"
			});
		} else {
			$(".yuyanlx").find("span").html(text).parent().show();
			$(this).css({
				"background-color" : "#FF9201",
				"color" : "#FFFFFF"
			}).siblings().css({
				"background-color" : "#FFFFFF",
				"color" : "#a1a3a6"
			});
		}
		;
	});
	$(".void_nes1231 li").click(function() {
		var index = $(this).index();
		var text = $(this).html();
		if (index == 0) {
			$(".shengyinlx").find("span").html(" ").parent().hide();
			$(this).css({
				"background-color" : "#FF9201",
				"color" : "#FFFFFF"
			}).siblings().css({
				"background-color" : "#FFFFFF",
				"color" : "#a1a3a6"
			});
		} else {
			$(".shengyinlx").find("span").html(text).parent().show();
			$(this).css({
				"background-color" : "#FF9201",
				"color" : "#FFFFFF"
			}).siblings().css({
				"background-color" : "#FFFFFF",
				"color" : "#a1a3a6"
			});
		}
		;
	});
	$(".renwulx").click(function() {
		$(this).find("span").html(" ").parent().hide();
		$(".void_nes113 .buxian").css({
			"background-color" : "#FF9201",
			"color" : "#FFFFFF"
		}).siblings().css({
			"background-color" : "#FFFFFF",
			"color" : "#a1a3a6"
		});
	});
	$(".xingbielx").click(function() {
		$(this).find("span").html(" ").parent().hide();
		$(".void_nes1211 .buxian").css({
			"background-color" : "#FF9201",
			"color" : "#FFFFFF"
		}).siblings().css({
			"background-color" : "#FFFFFF",
			"color" : "#a1a3a6"
		});
	});
	$(".yuyanlx").click(function() {
		$(this).find("span").html(" ").parent().hide();
		$(".void_nes1221 .buxian").css({
			"background-color" : "#FF9201",
			"color" : "#FFFFFF"
		}).siblings().css({
			"background-color" : "#FFFFFF",
			"color" : "#a1a3a6"
		});
	});
	$(".shengyinlx").click(function() {
		$(this).find("span").html(" ").parent().hide();
		$(".void_nes1231 .buxian").css({
			"background-color" : "#FF9201",
			"color" : "#FFFFFF"
		}).siblings().css({
			"background-color" : "#FFFFFF",
			"color" : "#a1a3a6"
		});
	});

});

// 任务详情页面
$(function() {
	$(".xqrenwu313 .xqrenwu31311").hover(
			function() {
				$(this).find(".xqrenwu313111").css("color", "#F16700").parent()
						.siblings().find(".xqrenwu313111").css("color",
								"#000000");
				$(this).find(".xqrenwu313112").css("background-color",
						"#F16700").parent().siblings().find(".xqrenwu313112")
						.css("background-color", "#474E5D");

			},
			function() {
				$(".xqrenwu31311").find(".xqrenwu313111").css("color",
						"#000000");
				$(".xqrenwu31311").find(".xqrenwu313112").css(
						"background-color", "#474E5D");
			});
});

/*---------------------展示首页导航----------------*/

/*---------主页菜单----------------*/
/*
 * $(function(){ $(".mum_asccss").click(function(){
 * $(this).parent().addClass("mum_licss3").siblings().removeClass("mum_licss3");
 * $(this).addClass("beiclsl").parent().siblings().find(".mum_asccss").removeClass("beiclsl");
 * 
 * }); });
 */
/*--------------------------------*/

/*----------------------导航的JS---------------------*/

$(function() {
	$("#d_uucnns a #d_list_lic8").hover(function() {
		var u = $(this).parent().index();
		// $(this).css("background-color","#FC0");
		if (u == 0) {
			$(this).children().find(".cnnspp").addClass("cnnspp1");
			$(this).siblings().find(".cnnspp").removeClass("cnnspp1");
			$(this).children().find(".d_utnkcn1").addClass("d_fff1");
			$(this).siblings().find(".d_utnkcn1").removeClass("d_fff1");
		}
		if (u == 1) {
			$(this).children().find(".cnnspp").addClass("cnnspp1");
			$(this).siblings().find(".cnnspp").removeClass("cnnspp1");
			$(this).children().find(".d_utnkcn2").addClass("d_fff2");
			$(this).siblings().find(".d_utnkcn2").removeClass("d_fff2");
		}
		if (u == 2) {
			$(this).children().find(".cnnspp").addClass("cnnspp1");
			$(this).siblings().find(".cnnspp").removeClass("cnnspp1");
			$(this).children().find(".d_utnkcn3").addClass("d_fff3");
			$(this).siblings().find(".d_utnkcn3").removeClass("d_fff3");
		}
		if (u == 3) {
			$(this).children().find(".cnnspp").addClass("cnnspp1");
			$(this).siblings().find(".cnnspp").removeClass("cnnspp1");
			$(this).children().find(".d_utnkcn4").addClass("d_fff4");
			$(this).siblings().find(".d_utnkcn4").removeClass("d_fff4");
		}
		if (u == 4) {
			$(this).children().find(".cnnspp").addClass("cnnspp1");
			$(this).siblings().find(".cnnspp").removeClass("cnnspp1");
			$(this).children().find(".d_utnkcn5").addClass("d_fff5");
			$(this).siblings().find(".d_utnkcn5").removeClass("d_fff5");
		}
	}, function() {
		var u = $(this).parent().index();
		if (u == 0) {
			$(this).children().find(".cnnspp").removeClass("cnnspp1");
			$(this).children().find(".d_utnkcn1").removeClass("d_fff1");
		}
		if (u == 1) {
			$(this).children().find(".cnnspp").removeClass("cnnspp1");
			$(this).children().find(".d_utnkcn2").removeClass("d_fff2");
		}

		if (u == 2) {
			$(this).children().find(".cnnspp").removeClass("cnnspp1");
			$(this).children().find(".d_utnkcn3").removeClass("d_fff3");
		}
		if (u == 3) {
			$(this).children().find(".cnnspp").removeClass("cnnspp1");
			$(this).children().find(".d_utnkcn4").removeClass("d_fff4");
		}
		if (u == 4) {
			$(this).children().find(".cnnspp").removeClass("cnnspp1");
			$(this).children().find(".d_utnkcn5").removeClass("d_fff5");
		}

	});

	$("#d_uucnns a #d_list_lic9").hover(function() {
		var u = $(this).parent().index();
		// $(this).css("background-color","#FC0");
		if (u == 0) {
			$(this).children().find(".cnnspp").addClass("cnnspp1");
			$(this).siblings().find(".cnnspp").removeClass("cnnspp1");
			$(this).children().find(".d_utnkcn1").addClass("d_fff1");
			$(this).siblings().find(".d_utnkcn1").removeClass("d_fff1");
		}
		if (u == 1) {
			$(this).children().find(".cnnspp").addClass("cnnspp1");
			$(this).siblings().find(".cnnspp").removeClass("cnnspp1");
			$(this).children().find(".d_utnkcn2").addClass("d_fff2");
			$(this).siblings().find(".d_utnkcn2").removeClass("d_fff2");
		}
		if (u == 2) {
			$(this).children().find(".cnnspp").addClass("cnnspp1");
			$(this).siblings().find(".cnnspp").removeClass("cnnspp1");
			$(this).children().find(".d_utnkcn3").addClass("d_fff3");
			$(this).siblings().find(".d_utnkcn3").removeClass("d_fff3");
		}
		if (u == 3) {
			$(this).children().find(".cnnspp").addClass("cnnspp1");
			$(this).siblings().find(".cnnspp").removeClass("cnnspp1");
			$(this).children().find(".d_utnkcn4").addClass("d_fff4");
			$(this).siblings().find(".d_utnkcn4").removeClass("d_fff4");
		}
		if (u == 4) {
			$(this).children().find(".cnnspp").addClass("cnnspp1");
			$(this).siblings().find(".cnnspp").removeClass("cnnspp1");
			$(this).children().find(".d_utnkcn5").addClass("d_fff5");
			$(this).siblings().find(".d_utnkcn5").removeClass("d_fff5");
		}
	}, function() {
		var u = $(this).parent().index();
		if (u == 0) {
			$(this).children().find(".cnnspp").removeClass("cnnspp1");
			$(this).children().find(".d_utnkcn1").removeClass("d_fff1");
		}
		if (u == 1) {
			$(this).children().find(".cnnspp").removeClass("cnnspp1");
			$(this).children().find(".d_utnkcn2").removeClass("d_fff2");
		}

		if (u == 2) {
			$(this).children().find(".cnnspp").removeClass("cnnspp1");
			$(this).children().find(".d_utnkcn3").removeClass("d_fff3");
		}
		if (u == 3) {
			$(this).children().find(".cnnspp").removeClass("cnnspp1");
			$(this).children().find(".d_utnkcn4").removeClass("d_fff4");
		}
		if (u == 4) {
			$(this).children().find(".cnnspp").removeClass("cnnspp1");
			$(this).children().find(".d_utnkcn5").removeClass("d_fff5");
		}

	});
});

/*--------------------------------导航js-------------------------------*/

// 返回顶部的图标位置
function weizi() {
	var winWidth = 0;

	if (window.innerWidth) {
		winWidth = window.innerWidth;

	} else if ((document.body) && (document.body.clientWidth)) {
		winWidth = document.body.clientWidth;

	}

	var divkuan = document.body.clientWidth;
	var kuan = ((divkuan / 2) + 500);
	var gao = ((document.body.clientHeight) - 100);
	$("#huidingbu").css("left", kuan);
	$("#huidingbu").css("top", gao);
}

setInterval(weizi, 200);

// 判断滚动条位置让 返回顶部的图标显示或隐藏
function ScollPostion() {
	var t;
	if (document.documentElement && document.documentElement.scrollTop) {
		t = document.documentElement.scrollTop;
	} else if (document.body) {
		t = document.body.scrollTop;
	}

	if (t >= 400) {
		$("#huidingbu .huidb1").css("display", "block");
	} else {
		$("#huidingbu .huidb1").css("display", "none");
	}
}
var gundong = setInterval(ScollPostion, 200);
$(function() {
	$("#huidingbu")
			.hover(
					function() {
						$("#huidingbu span").html(" ");

						$("#huidingbu .huidb2").css("display", "block");
						clearInterval(gundong);
					},
					function() {
						$("#huidingbu span")
								.html(
										"<img id='huidb1' class='huidb1' src='images/dingbu1.png'>");
						$(".huidb1").css("display", "block");
						$(".huidb2").css("display", "none");
						gundong = setInterval(ScollPostion, 200);
					});
	$("#huidingbu").click(function() {
		document.documentElement.scrollTop = document.body.scrollTop = 0;
	});
});

$(function() {
	$("#yaoqingjb")
			.click(
					function() {
						$("body").append("<div id='showts'></div>");
						$("body")
								.append(
										"<div id='yaoqingkuang'>"
												+ "<div class='yaoqingkuang1'>Please select invited ta to you which one dubbing tasks </div>"
												+ "<div class='yaoqingkuang2'>"
												+ "<select class='yaoqingkuang21'>"
												+ "<option>123</option>"
												+ "<option>1231</option>"
												+ "<option>1232</option>"
												+ "<option>1233</option>"
												+ "<option>1234</option>"
												+ "<option>123311</option>"
												+ "<option>123411</option>"
												+ "<option>123311</option>"
												+ "<option>123411</option>"
												+ "</select>"
												+ "</div>"
												+ "<div class='yaoqingkuang3'>"
												+ "<div class='yaoqingkuang31' style='cursor:pointer'  onclick='yaoqingqx()'>取 消</div>"
												+ "<div class='yaoqingkuang32' style='cursor:pointer'  onclick='yaoqingqx()'>确 定</div>"
												+ "</div>" + "</div>");
					});
});
function yaoqingqx() {
	$("#showts").remove();
	$("#yaoqingkuang").remove();
}

// 添加作品表单验证
$(function() {
	$("#worksfrom")
			.submit(
					function() {
						var flag = true;
						// 声音特点
						var sytdsvis = $("#sytdsvi").val();
						if (sytdsvis == "0") {
							$("#tisx").html("×请选择声音特点!");
							flag = false;
						}

						// 本人口音
						var kystt = $("#kyst").val();
						if (kystt == "0") {
							$("#tisx").html("×请选择作品口音!");
							flag = false;
						}

						// 语言类型
						var yuyan = $("#zptypeyy").val();
						if (yuyan == "0") {
							$("#tisx").html("×请选择作品语言!");
							flag = false;
						}

						// 作品类型
						var zuol = $("#zptypes").val();
						if (zuol == "0") {
							$("#tisx").html("×请选择作品类型!");
							flag = false;
						}

						// 文件
						var flis = $("#file-1").val();
						// var jqfile=flis.indexOf("");
						// int i=str.lastIndexOf(":");

						if (flis != "") {

							var i = flis.lastIndexOf(".");
							var filsxx = flis.substring(i + 1, flis.length);
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
								$("#tisx")
										.html(
												"×文件格式只能为(MP3,OGG,CD,WMA,WAV,MP3PRO,RM,REAL,APE,MODULE,MIDI,VQF,ASF)!");
								flag = false;
							}
						}
						if (flis == "") {
							$("#tisx").html("×文件不能为空!");
							flag = false;
						}

						// 作品名称
						var wName = $("#worksName").val();
						
						if(wName!=""){
							var widnx = wName.lastIndexOf(" ");
							if(widnx!=-1){
								$("#tisx").html("×作品名称不能有空格!");
								flag = false;
							}
						}
						if (wName == "") {
							$("#tisx").html("×作品名称不能为空!");
							flag = false;
						}

						return flag;
					});
});

// 编辑作品表单验证
$(function() {
	$("#zpupdate").submit(function() {
		var flag = true;

		var bsd = $("#zuopinName").val();
		if (bsd == "") {
			$("#updatetext").html("×作品名称不能为空!");
			flag = false;
		}

		return flag;
	});
});

// 基本资料表单验证(配音员)
$(function() {
	$("#jbzlfrom").submit(function() {
		var flag = true;
		// 联系电话
		var laxd = $("#usesriples").val();
		var idslxdf = laxd.lastIndexOf(" ");
        
        if(laxd!=""){
			if(idslxdf!=-1){
				$("#updatejbzl").html("×请认真填写您的联系电话,电话号码不能有空格!");
				flag = false;
			}
        }
		if (laxd == "") {
			$("#updatejbzl").html("×请认真填写您的联系电话,后期为主要联络工具!");
			flag = false;
		}

		// 工作年限
		var gznx = $("#gznsx").val();
		if (gznx == "0") {
			$("#updatejbzl").html("×请根据情况选择您的工作年限!");
			flag = false;
		}

		// 口音类型
		var slky = $("#kouyss").val();
		if (slky == "0") {
			$("#updatejbzl").html("×请选择您的口音!");
			flag = false;
		}

		// 声音类型
		var sl = $("#lmvbked2").val();
		if (sl == "") {
			$("#updatejbzl").html("×至少选择一种声音类型!");
			flag = false;
		}

		// 配音范围
		var fw = $("#lmvbked1").val();
		if (fw == "") {
			$("#updatejbzl").html("×至少选择一种配音范围!");
			flag = false;
		}

		// 语言类型
		var ddxx = $("#lmvbke").val();
		if (ddxx == "") {
			$("#updatejbzl").html("×至少选择一种语言!");
			flag = false;
		}

		// 地区
		var dq = $("#klnklvnse").val();
		if (dq != null) {
			var ids = dq.lastIndexOf("-");
			var diqs = dq.substring(0, 2);
			var diqf = dq.substring(dq.length - 2, dq.length);
			if (ids == -1) {
				$("#updatejbzl").html("×地区格式不正确,请填写所在城市!");
				flag = false;
			}
			if (dq == "国家") {
				$("#updatejbzl").html("×地区格式不正确,不能有国家或省份字样!");
				flag = false;
			}
			if (diqs == "国家") {
				$("#updatejbzl").html("×地区格式不正确,不能有国家或省份字样!");
				flag = false;
			}
			if (diqf == "省份") {
				$("#updatejbzl").html("×地区格式不正确,不能有国家或省份字样!");
				flag = false;
			}

		}
		if (dq == "") {
			$("#updatejbzl").html("×地区不能为空!");
			flag = false;
		}

		// 生日
		var rs = $("#datetimepicker7").val();
		if (rs == "") {
			$("#updatejbzl").html("×生日不能为空!");
			flag = false;
		}

		// 性别
		var sex = $("#clklieshow").val();
		if (sex == "") {
			$("#updatejbzl").html("×性别不能为空!");
			flag = false;
		}

		return flag;
	});
});

// 个人中心
$(function() {
	$("#formdonm").submit(function() {
		var flag = true;
		var pints = $("#gerenzhongx").val();
		if (pints == "") {
			$("#idnlsns").html("请到左导航栏的“基本资料”完善以上所有信息后,才能公共自己的资料!");
			flag = false;
		}
		return flag;
	});
});

// 上传头像
$(function() {
	$("#loadtxss").submit(
			function() {
				var flag = true;
				var txName = $("#file-1").val();
				if (txName != "") {
					var i = txName.lastIndexOf(".");
					var filsNahz = txName.substring(i + 1, txName.length);

					if (filsNahz != "jpg" && filsNahz != "JPG"
							&& filsNahz != "png" && filsNahz != "PNG"
							&& filsNahz != "jpeg" && filsNahz != "JPEG") {
						$("#toxslidss").html("×头像格式只能为(JPG,PNG,JPEG)!");
						flag = false;
					}
				}
				if (txName == "") {
					$("#toxslidss").html("头像路径不能为空!");
					flag = false;
				}
				return flag;
			});
});

// 修改密码
$(function() {
	$("#updatemima").submit(function() {
		$("#lwnlosiockd").html("");
		var flag = true;

		// 确认新密码
		var qrxms = $("#querenxmim").val();
		// 新密码
		var xms = $("#xinmimas").val();

		if (qrxms != xms) {
			$("#lwnlosiockd").html("×两次密码不一致!");
			flag = false;
		}
		var oos = qrxms.lastIndexOf(" ");
		

		if (qrxms == "") {
			$("#lwnlosiockd").html("×确认新密码不能为空!");
			flag = false;
		}
		if(qrxms!=""){
			if(oos!=-1){
				$("#lwnlosiockd").html("×新密码不能有空格!");
				flag = false;
			}
		}
		if (xms.length < 6) {
			$("#lwnlosiockd").html("×新密码为6-18位数字或字母组成!");
			flag = false;
		}
		if (xms == "") {
			$("#lwnlosiockd").html("×新密码不能为空!");
			flag = false;
		}

		// 旧密码
		var jiumma = $("#jiiumima").val();
		if (jiumma == "") {
			$("#lwnlosiockd").html("×当前密码不能为空!");
			flag = false;
		}

		return flag;
	});
});

// 基本资料表单验证(任务方)
$(function() {
	$("#userjbzleh").submit(function() {
		var flag = true;
		// 联系电话
		var laxdf = $("#lianxirenwup").val();
		var xwksr = laxdf.lastIndexOf(" ");
		if(laxdf!=""){
			if(xwksr!=-1){
				$("#updatejbzlrwf").html("×Please enter your contact phone!");
				flag = false;
			}
		}
		
		if (laxdf == "") {
			$("#updatejbzlrwf").html("×Please enter your contact phone carefully, which should be your main contact tool!");
			flag = false;
		}
		// 地区
		var dq = $("#klnklvnse").val();
		if (dq != null) {
			var ids = dq.lastIndexOf("-");
			var diqs = dq.substring(0, 2);
			var diqf = dq.substring(dq.length - 2, dq.length);
			/*if (ids == -1) {
				$("#updatejbzlrwf").html("×Area format is not correct, please enter the area!");
				flag = false;
			}*/
			if (dq == "Country") {
				$("#updatejbzlrwf").html("×Regional format is not correct!");
				flag = false;
			}
			/*if (diqs == "Country") {
				$("#updatejbzlrwf").html("×Regional format is not correct!");
				flag = false;
			}
			if (diqf == "Province") {
				$("#updatejbzlrwf").html("×Regional format is not correct!");
				flag = false;
			}*/

		}
		if (dq == "") {
			$("#updatejbzlrwf").html("×Area can not be empty!");
			flag = false;
		}
		// 性别
		var sexd = $("#clklieshow").val();
		if (sexd == "") {
			$("#updatejbzlrwf").html("×Gender can not be empty!");
			flag = false;
		}

		return flag;
	});
});

// 修改密码(任务方)
$(function() {
	$("#renwfupadtepaseh").submit(function() {
		$("#lwnlosiockd").html("");
		var flag = true;

		// 确认新密码
		var qrxms = $("#querenxmim").val();
		// 新密码
		var xms = $("#xinmimas").val();

		if (qrxms != xms) {
			$("#lwnlosiockd").html("×Two passwords are not consistent!");
			flag = false;
		}

		if (qrxms == "") {
			$("#lwnlosiockd").html("×Pls confirm the new password!");
			flag = false;
		}
		if (xms.length < 6) {
			$("#lwnlosiockd").html("×The new password should be composed of 6-18 numbers or letters!");
			flag = false;
		}
		var xwk = xms.lastIndexOf(" ");
		if(xwk!=-1){
			$("#lwnlosiockd").html("×The new password can not have spaces!");
			flag = false;
		}
		
		if (xms == "") {
			$("#lwnlosiockd").html("×The new password can not be empty!");
			flag = false;
		}

		// 旧密码
		var jiumma = $("#jiiumima").val();
		if (jiumma == "") {
			$("#lwnlosiockd").html("×The current password cannot be empty!");
			flag = false;
		}

		return flag;
	});
});

// 上传头像(任务方)
$(function() {
	$("#touxrwfsseh").submit(
			function() {
				var flag = true;
				var txName = $("#file-1").val();
				if (txName != "") {
					var i = txName.lastIndexOf(".");
					var filsNahz = txName.substring(i + 1, txName.length);

					if (filsNahz != "jpg" && filsNahz != "JPG"
							&& filsNahz != "png" && filsNahz != "PNG"
							&& filsNahz != "jpeg" && filsNahz != "JPEG") {
						$("#toxslidss").html("×File format can only be JPG, PNG, JPEG!");
						flag = false;
					}
				}
				if (txName == "") {
					$("#toxslidss").html("×File path cannot be empty!");
					flag = false;
				}
				return flag;
			});
});

// 任务方发布任务

$(function() {
	$("#rwfehreles")
			.submit(
					function() {
						var flag = true;

						// 正式稿文字数
						var zsgsw = $("#zhensgaowzd").val();
						var regd = new RegExp("^[0-9]*$");
						if (zsgsw.length >= 100000) {
							$("#lwnlosiockdfbrw").html("×If the project is more than one hundred thousand words, please contact customer service!");
							flag = false;
						}
						/*if (zsgsw.length <= 1) {
							$("#lwnlosiockdfbrw").html("×The word count can not be less than 1!");
							flag = false;
						}*/
						if (!regd.test(zsgsw)) {
							$("#lwnlosiockdfbrw").html("×The word count can only be numeric, and can not have decimal point!");
							flag = false;
						}

						/*if (zsgsw == "") {
							$("#lwnlosiockdfbrw")
									.html("×The word count can not be empty!");
							flag = false;
						}*/
						
						//需要翻译吗?
						var fxfys=$("#lfwnlsefg").val();
						/*if(fxfys=="0"){
							$("#lwnlosiockdfbrw").html("×Pls confirm whether you need translation or not!");
							flag = false;
						}*/
						

						// 正式稿文文件
						var zsgwfle = $("#zsgwfile").val();
						var ivs = zsgwfle.lastIndexOf(".");
						var lsnls = zsgwfle.substring(ivs + 1, zsgwfle.length);
						//alert(lsnls);
						if (zsgwfle != ''){
						    if (!lsnls && lsnls != "txt" && lsnls != "TXT" && lsnls != "rtf"
								&& lsnls != "RTF" && lsnls != "doc"
								&& lsnls != "DOC" && lsnls != "xls"
								&& lsnls != "DOCX" && lsnls != "docx"
								&& lsnls != "XLS" && lsnls != "ppt"
								&& lsnls != "PPT" && lsnls != "html"
								&& lsnls != "HTML" && lsnls != "wpd"
								&& lsnls != "WPD" && lsnls != "pdf"
								&& lsnls != "xlsx" && lsnls != "XLSX"
								&& lsnls != "PDF") {
							//alert("david");
							    ("#lwnlosiockdfbrw")
									.html(
											"×File should be in txt, RTF, Doc, xls, PPT, HTML, WPD, xlsx, or PDF!");
							    flag = false;
						    }
						}
						/*if (zsgwfle == "") {
							$("#lwnlosiockdfbrw").html("×Pls upload project script!");
							flag = false;
						}*/

						// 正式背景音乐
						var files = $("#filewnjs").val();
						var it = files.lastIndexOf(".");
						var filsxx = files.substring(it + 1, files.length);
						if (files != "") {	
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
							$("#lwnlosiockdfbrw")
									.html(
											"×File format should be MP3, OGG, CD, WMA, WAV, MP3PRO, RM, REAL, APE, MODULE, VQF, MIDI, ASF!");
							flag = false;
						}
						}
						/*if (files == "") {
							$("#lwnlosiockdfbrw").html(
									"×Background music can not be empty!");
							flag = false;
						}
*/
						// 试音稿文
						var gws = $("#sygaows").val();

						if (gws.length > 1000) {
							$("#lwnlosiockdfbrw").html("×Audtion text should be less than 500 words!");
							flag = false;
						}
						if (gws.length < 1) {
							$("#lwnlosiockdfbrw").html("×Audtion text should not be less than 1 words!");
							flag = false;
						}
						if (gws == "") {
							$("#lwnlosiockdfbrw").html("×Audtion text can not be empty!");
							flag = false;
						}

						// 任务口音类型 (local accent)
						var rwkouy = $("#kouyins").val();
						/*if (rwkouy == "0") {
							$("#lwnlosiockdfbrw").html("×Please select the accent, you can select 'Unlimited'!");
							flag = false;
						} */
						// 任务口音类型
						var flasegs = $("#peiywjfge").val();
						if (flasegs == "0") {
							$("#lwnlosiockdfbrw").html("×Field required, you can select 'Unlimited'!");
							flag = false;
						}

						// 任务口音类型
						var rwkouy = $("#kouyins").val();
						/*if (rwkouy == "0") {
							$("#lwnlosiockdfbrw").html("×Field required, you can select 'Unlimited'!");
							flag = false;
						}*/
						// 任务性别类型
						var sexs = $("#yqusex").val();
						if (sexs == "0") {
							$("#lwnlosiockdfbrw").html("×Please select the talent gender!");
							flag = false;
						}

						// 配音语言类型
						var lytyope = $("#yaluyans").val();
						if (lytyope == "0") {
							$("#lwnlosiockdfbrw").html("×Please select the language!");
							flag = false;
						}
						// 任务类型 (category)
						var usndtupe = $("#rwleixss").val();
						if (usndtupe == "0") {
							$("#lwnlosiockdfbrw").html("×Please select a project category!");
							flag = false;
						}

						// 预算费用
						var ysfy = $("#yusuanfeiyong").val();
						var reg = new RegExp("^[0-9]*$");
						var idsre = ysfy.lastIndexOf(".");
						if (ysfy >= 10000) {
							$("#lwnlosiockdfbrw").html("×If the budget is greater than ten thousand, please contact customer service staff directly.!");
							flag = false;
						}
						if(ysfy<50){
							$("#lwnlosiockdfbrw").html("×Budget can not be less than 50USD!");
							flag = false;
						}
						if (idsre != -1) {
							$("#lwnlosiockdfbrw").html("×Budget can not have decimal point!");
							$("#yusuanfeiyong").val("");
							flag = false;
						}
                          
						if (!reg.test(ysfy)) {
							$("#lwnlosiockdfbrw").html("×Budget can not have decimal point!");
							flag = false;
						}
						if (ysfy.length <= 1) {
							$("#rwbjslcas").html("×Budget can not be less than 1!");
							flag = false;
						}
						if (ysfy == "") {
							$("#lwnlosiockdfbrw").html("×Budget can not be empty!");
							flag = false;
						}
                       
						// 任务标题
						var rwfs = $("#rwNames").val();
						var rkges = rwfs.lastIndexOf(" ");
						if (rwfs != "") {
							/*if(rkges!=-1){
								$("#lwnlosiockdfbrw").html("×标题不能有空格!");
								flag = false;
							}*/
							if (rwfs.length < 1) {
								$("#lwnlosiockdfbrw").html("×Title length should not be less than 1!");
								flag = false;
							}
							if (rwfs.length > 40) {
								$("#lwnlosiockdfbrw").html("×Title length should not be greater than 40!");
								flag = false;
							}
						}
						if (rwfs == "") {
							$("#lwnlosiockdfbrw").html("×Title cannot be empty!");
							flag = false;
						}
						// 判断任务方的电话填写了没
						var rwpiles = $("#yonghudiha").val();

						if (rwpiles == "") {
							$("#lwnlosiockdfbrw").html("×Pls leave your contact info before posting a project!");
							flag = false;
						}

						return flag;
					});
});

// 任务编辑
$(function() {
	$("#rwbjehzil")
			.submit(
					function() {
						var flag = true;
						// 正式稿文
						var bjzsgw = $("#bjzsgaown").val();
						
						
						var ivszs = bjzsgw.lastIndexOf(".");
						var zsgaws = bjzsgw.substring(ivszs + 1, bjzsgw.length);
						// alert(lsnls);
						if (bjzsgw != "") {
							if (zsgaws != "txt" && zsgaws != "TXT"
									&& zsgaws != "rtf" && zsgaws != "RTF"
									&& zsgaws != "doc" && zsgaws != "DOC"
									&& lsnls != "DOCX" && lsnls != "docx"
									&& zsgaws != "xls" && zsgaws != "XLS"
									&& zsgaws != "ppt" && zsgaws != "PPT"
									&& zsgaws != "html" && zsgaws != "HTML"
									&& zsgaws != "wpd" && zsgaws != "WPD"
									&& zsgaws != "pdf" && zsgaws != "xlsx"
									&& zsgaws != "XLSX" && zsgaws != "PDF") {
								$("#rwbjslcas")
										.html(
												"×Format can only be txt, RTF, Doc, xls, PPT, HTML, WPD, xlsx, PDF!");
								flag = false;
							}
						}
						// 背景音乐
						var bejmus = $("#bjpjminus").val();
						var ita = bejmus.lastIndexOf(".");
						var filsmus = bejmus.substring(ita + 1, bejmus.length);
						if (bejmus != "") {
							if (filsmus != "mp3" && filsmus != "MP3"
									&& filsmus != "OGG" && filsmus != "ogg"
									&& filsmus != "CD" && filsmus != "cd"
									&& filsmus != "WMA" && filsmus != "wma"
									&& filsmus != "WAV" && filsmus != "wav"
									&& filsmus != "MP3PRO"
									&& filsmus != "mp3pro" && filsmus != "RM"
									&& filsmus != "rm" && filsmus != "REAL"
									&& filsmus != "real" && filsmus != "APE"
									&& filsmus != "ape" && filsmus != "MODULE"
									&& filsmus != "module" && filsmus != "MIDI"
									&& filsmus != "midi" && filsmus != "VQF"
									&& filsmus != "vqf" && filsmus != "ASF"
									&& filsmus != "asf") {
								$("#rwbjslcas")
										.html(
												"×Format can only be MP3, OGG, CD, WMA, WAV, MP3PRO, RM, REAL, APE, MODULE, VQF, MIDI, ASF!");
								flag = false;
							}
						}

						// 任务试音稿文
						var shijbgw = $("#rwnshiygwsbj").val();
						if (shijbgw.length > 1000) {
							$("#rwbjslcas").html("×Audition text should be less than 500 words!");
							flag = false;
						}
						if (shijbgw.length < 1) {
							$("#rwbjslcas").html("×Audition text should be more than 1 word!");
							flag = false;
						}
						if (shijbgw == "") {
							$("#rwbjslcas").html("×Audition text can not be empty!");
							flag = false;
						}

						// 预算价格
						var ysjws = $("#bjysjw").val();
						var regfy = new RegExp("^[0-9]*$");
						if (ysjws >= 10000) {
							$("#rwbjslcas").html("×If the budget is greater than ten thousand, please contact client service staff directly!");
							flag = false;
						}

						if (!regfy.test(ysjws)) {
							$("#rwbjslcas").html("×Budget can only be numeric and can not have decimal point!");
							flag = false;
						}
						if (ysjws.length <= 1) {
							$("#rwbjslcas").html("×Budget can not be less than 1!");
							flag = false;
						}
						if (ysjws == "") {
							$("#rwbjslcas").html("×Budget can not be empty!");
							flag = false;
						}

						// 正式稿文字数
						var zsgstt = $("#zsgwzshus").val();
						var regdf = new RegExp("^[0-9]*$");
						if (zsgstt.length >= 100000) {
							$("#rwbjslcas").html("×If the number of words is more than one hundred thousand, please contact customer service staff!");
							flag = false;
						}
						/*if (zsgstt.length <= 1) {
							$("#rwbjslcas").html("×The word count should not be less than 1!");
							flag = false;
						}*/
						if (!regdf.test(zsgstt)) {
							$("#rwbjslcas").html("×The word count can only be numeric, and can not have decimal point!");
							flag = false;
						}

						/*if (zsgstt == "") {
							$("#rwbjslcas").html("×The word count can not be empty!");
							flag = false;
						}*/

						// 任务名称
						var bjName = $("#rewnumingxs").val();
						if (bjName != "") {
							if (bjName.length < 10) {
								$("#rwbjslcas").html("×Title length should not be less than 5 words!");
								flag = false;
							}
							if (bjName.length > 100) {
								$("#rwbjslcas").html("×Title can not be more than 25 words!");
								flag = false;
							}
						}
						if (bjName == "") {
							$("#rwbjslcas").html("Title cannot be empty!");
							flag = false;
						}

						return flag;
					});
});
