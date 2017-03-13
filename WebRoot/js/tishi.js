
	var tishiurl;
	//提示框
	function showts(txt){
		var kuan=document.body.scrollWidth;
		var width=400;
		var height=200;
		var left=(kuan/2)-width/2;
		$("body").append("<div id='showts'></div>");
	    $("body").append("<div id='tishity'>" +
								"<div class='shang'><b>提示</b></div>" +
								"<div class='zhong'>"+txt+"</div>"+
								"<div class='xia'>"+
									"<div class='quxiao' style='cursor:pointer'  onclick='quxiao()'>取 消</div>"+
									"<div class='queding' style='cursor:pointer' onclick='queren()'>确 认</div>"+
									"</div>"+
							"</div>");
	    $("#tishity").css("left",""+left+""+"px");
	}
	
	
	/*英文提示框*/
	function showts_e(txt){
		var kuan=document.body.scrollWidth;
		var width=400;
		var height=200;
		var left=(kuan/2)-width/2;
		$("body").append("<div id='showts'></div>");
	    $("body").append("<div id='tishity'>" +
								"<div class='shang'><b>Prompt</b></div>" +
								"<div class='zhong'>"+txt+"</div>"+
								"<div class='xia'>"+
									"<div class='quxiao' style='cursor:pointer'  onclick='quxiao()'>Cancel</div>"+
									"<div class='queding' style='cursor:pointer' onclick='queren()'>Confirm</div>"+
									"</div>"+
							"</div>");
	    $("#tishity").css("left",""+left+""+"px");
	}
	//取消提示框
	function quxiao(){
		$("#showts").remove();
		$("#tishity").remove(); 
	}

	function queren(){
		$("#showts").remove();
		$("#tishity").remove();
		if(tishiurl!=null||tishiurl!=undefined){
			window.location.href =""+tishiurl+"";
		}
	}

	
	
	
	function guanbiyy(){
		$("#showts").remove();
		$("#jquery_jplayer_1").jPlayer("stop");
		$("#bofang").remove();
	} 
	
	
	function bofang(biaoti,dizi){
		$("#bofang").show();
		bofangdiv();
		$("#jquery_jplayer_1").jPlayer({
			ready: function (event) {
				$(this).jPlayer("setMedia", {
					title: ""+biaoti+"",
					m4a: "yinyue/"+dizi+"",
					oga: "yinyue/"+dizi+""
				}).jPlayer("play"); 
			},
			swfPath: "../jplayer",
			supplied: "oga,m4a",
			wmode: "window",
			useStateClassSkin: true,
			autoBlur: false,
			smoothPlayBar: true,
			keyEnabled: true,
			remainingDuration: true,
			toggleDuration: true
		});
	}
	
	function bofangdiv(){
		var kuan=document.body.scrollWidth;
		var width=450;
		var height=110;
		var left=(kuan/2)-width/2;
		$("body").append("<div id='showts'></div>");
		$("body").append("<div id='bofang'>"+
				"<div id='jquery_jplayer_1' class='jp-jplayer'></div>"+
					"<div id='jp_container_1' class='jp-audio' role='application' aria-label='media player'>"+
						"<div class='jp-type-single'>"+
							"<div class='jp-gui jp-interface'>"+
								"<div class='jp-controls'>"+
									"<button class='jp-play' role='button' tabindex='0'>play</button>"+
									"<button class='jp-stop' role='button' tabindex='0'>stop</button>"+
								"</div>"+
								"<div class='jp-progress'>"+
									"<div class='jp-seek-bar'>"+
										"<div class='jp-play-bar'></div>"+
									"</div>"+
								"</div>"+
								"<div class='jp-volume-controls'>"+
									"<button class='jp-mute' role='button' tabindex='0'>mute</button>"+
									"<button class='jp-volume-max' role='button' tabindex='0'>max volume</button>"+
									"<div class='jp-volume-bar'>"+
										"<div class='jp-volume-bar-value'></div>"+
									"</div>"+
								"</div>"+
								"<div class='jp-time-holder'>"+
									"<div class='jp-current-time' role='timer' aria-label='time'>&nbsp;</div>"+
									"<div class='jp-duration' role='timer' aria-label='duration'>&nbsp;</div>"+
									"<div class='jp-toggles'>"+
										"<button class='jp-repeat' role='button' tabindex='0'>repeat</button>"+
									"</div>"+
								"</div>"+
							"</div>"+
							"<div class='jp-details'>"+
								"<div class='jp-title' aria-label='title'>&nbsp;</div>"+
							"</div>"+
							"<div class='jp-no-solution'>"+
								"<span>Update Required</span>"+
								"To play the media you will need to either update your browser to a recent version or update your <a href='http://get.adobe.com/flashplayer/' target='_blank'>Flash plugin</a>."+
							"</div>"+
						"</div>"+
					"</div>" +
					"<div class='yyguanbi' onclick='guanbiyy()'><img src='images/guanbi01.png' width='30' height='30' /></div>"+
				"</div>");
		 $("#bofang").css("left",""+left+""+"px");
	}
	
	
	function zpxx(){
	var zpxx113="<div id='jquery_jplayer_1' class='jp-jplayer'></div>"+
		"<div id='jp_container_1' class='jp-audio' role='application' aria-label='media player'  style='width:500px;margin-left: 20px;margin-top: 50px;'>"+
			"<div class='jp-type-single'>"+
				"<div class='jp-gui jp-interface'>"+
					"<div class='jp-controls'>"+
						"<button class='jp-play' role='button' tabindex='0'>play</button>"+
						"<button class='jp-stop' role='button' tabindex='0'>stop</button>"+
					"</div>"+
					"<div class='jp-progress'>"+
						"<div class='jp-seek-bar'>"+
							"<div class='jp-play-bar'></div>"+
						"</div>"+
					"</div>"+
					"<div class='jp-volume-controls'>"+
						"<button class='jp-mute' role='button' tabindex='0'>mute</button>"+
						"<button class='jp-volume-max' role='button' tabindex='0'>max volume</button>"+
						"<div class='jp-volume-bar'>"+
							"<div class='jp-volume-bar-value'></div>"+
						"</div>"+
					"</div>"+
					"<div class='jp-time-holder'>"+
						"<div class='jp-current-time' role='timer' aria-label='time'>&nbsp;</div>"+
						"<div class='jp-duration' role='timer' aria-label='duration'>&nbsp;</div>"+
						"<div class='jp-toggles'>"+
							"<button class='jp-repeat' role='button' tabindex='0'>repeat</button>"+
						"</div>"+
					"</div>"+
				"</div>"+
				"<div class='jp-details'>"+
					"<div class='jp-title' aria-label='title'>&nbsp;</div>"+
				"</div>"+
				"<div class='jp-no-solution'>"+
					"<span>Update Required</span>"+
					"To play the media you will need to either update your browser to a recent version or update your <a href='http://get.adobe.com/flashplayer/' target='_blank'>Flash plugin</a>."+
				"</div>"+
			"</div>"+
		"</div>";
		$(".zpxx113").html(zpxx113);
	}