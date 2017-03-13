
function klnsekln(){
	var opm1=$("#efgabepp1").html();
	var opm2=$("#efgabepp2").html();
	var opm3=$("#efgabepp3").html();
	var opm4=$("#efgabepp4").html();
	 if(opm1==''&opm2==''&opm3==''&opm4==''){
		 $("#efgabepp5").html("");
	   }
	}

$(function(){
$(".selemenu").click(function(){
	$(this).next().slideToggle();
	$(this).addClass("ljfsvsl");
	$(".selemenu1").removeClass("ljfsvs2");
	$(".selemenu2").removeClass("ljfsvs3");
	$(".selemenu3").removeClass("ljfsvs4");
	$(this).parents().siblings().find(".citylist,.citylist3,.citylist4,.citylist5").slideUp();
	});
$(".citylist span").click(function(){
	var text=$(this).text();
	$(this).parent().prev().html(text);
	$(this).parent().prev().css("color","#666")
	$(this).parent().fadeOut();
	
	});
$(".chengshi li").click(function(){
	$(".chengshi li").removeClass("active");
	$(this).addClass("active");
    var text2=$(this).text();
	var htle="<div id='fse1'><div id='lseknmlkgs'><div id='fslekn1'><samp id='fegwvad'>"+text2+"</samp></div>"
       +"<a href='javaScript:fin1();'><img src='images/guan.gif'></a></div></div>";
	$("#efgabepp1").html(htle);
	
	var htlef5="<a href='javaScript:find8();' id='fsbbb'><div id='lseknmlkgsgg'><div id='fslekn1'><samp id='fegwvad'>清空条件</samp></div></a></div>";
	
	$("#efgabepp5").html(htlef5);
	$(".citylist2").slideUp();
	$(".selemenu").removeClass("ljfsvsl");
	var sflke=$("#efgabepp1").html();

	});
});	
$(function(){
    $(document).not($(".selectbox")).click(function(){
        $(".citylist,.citylist2").slideUp();
		$(".selemenu").removeClass("ljfsvsl");
	 });
	 $(".selectbox").click(function(event){
        event.stopPropagation();
	
    });
});





	
	
	
	
	
	
	
	$(function(){
$(".selemenu1").click(function(){
	$(this).next().slideToggle();
	$(".selemenu").removeClass("ljfsvsl");
	$(".selemenu2").removeClass("ljfsvs3");
	$(".selemenu3").removeClass("ljfsvs4");
	$(this).addClass("ljfsvs2");
	$(this).parents().siblings().find(".citylist,.citylist2,.citylist4,.citylist5").slideUp();
	});
$(".citylist span").click(function(){
	var text=$(this).text();
	$(this).parent().prev().html(text);
	$(this).parent().prev().css("color","#666")
	$(this).parent().fadeOut();
	});	
$(".chengshi1 li").click(function(){
    var text2=$(this).text();
	var htle="<div id='fse2'><div id='lseknmlkgs'><div id='fslekn1'><samp id='fegwvad'>"+text2+"</samp></div>"
       +"<a href='javaScript:fin2();'><img src='images/guan.gif'></a></div><div>";
	   var htlef5="<a href='javaScript:find8();' id='fsbbb'><div id='lseknmlkgsgg'><div id='fslekn1'><samp id='fegwvad'>清空条件</samp></div></a></div>";
	
	$("#efgabepp5").html(htlef5);
	$("#efgabepp2").html(htle);
	$(".citylist3").slideUp();
	$(".selemenu1").removeClass("ljfsvs2");
	});
	});
  $(function(){
    $(document).not($(".selectbox1")).click(function(){
        $(".citylist,.citylist3").slideUp();
		$(".selemenu1").removeClass("ljfsvs2");
	 });
	 $(".selectbox1").click(function(event){
        event.stopPropagation();
    });
	});	

	
	
	
	$(function(){
$(".selemenu2").click(function(){
	$(this).next().slideToggle();
	$(this).addClass("ljfsvs3");
	$(".selemenu").removeClass("ljfsvsl");
	$(".selemenu1").removeClass("ljfsvs2");
	$(".selemenu3").removeClass("ljfsvs4");
	$(this).parents().siblings().find(".citylist,.citylist3,.citylist2,.citylist5").slideUp();
	});

$(".citylist2 span").click(function(){
	var text=$(this).text();
	$(this).parent().prev().html(text);
	$(this).parent().prev().css("color","#666")
	$(this).parent().fadeOut();	
	});
$(".chengshi2 li").click(function(){
    var text2=$(this).text();
	var htle="<div id='fse3'><div id='lseknmlkgs'><div id='fslekn1'><samp id='fegwvad'>"+text2+"</samp></div>"
       +"<a href='javaScript:fin3();'><img src='images/guan.gif'></a></div></div>";
	   var htlef5="<a href='javaScript:find8();' id='fsbbb'><div id='lseknmlkgsgg'><div id='fslekn1'><samp id='fegwvad'>清空条件</samp></div></a></div>";
	
	$("#efgabepp5").html(htlef5);
	$("#efgabepp3").html(htle);
	$(".citylist4").slideUp();
	$(".selemenu2").removeClass("ljfsvs3");
	});

});
  $(function(){
    $(document).not($(".selectbox2")).click(function(){
        $(".citylist,.citylist4").slideUp();
		$(".selemenu2").removeClass("ljfsvs3");
	 });
	 $(".selectbox2").click(function(event){
        event.stopPropagation();
    });
	});

	
	
	
	$(function(){
	$(".selemenu3").click(function(){
		$(this).addClass("ljfsvs4");
		$(".selemenu").removeClass("ljfsvsl");
	$(".selemenu2").removeClass("ljfsvs3");
	$(".selemenu1").removeClass("ljfsvs2");
	$(this).next().slideToggle();
	$(this).parents().siblings().find(".citylist,.citylist3,.citylist2,.citylist4").slideUp();
	});

$(".citylist3 span").click(function(){
	var text=$(this).text();
	$(this).parent().prev().html(text);
	$(this).parent().prev().css("color","#666")
	$(this).parent().fadeOut();	
	});
$(".chengshi3 li").click(function(){
    var text2=$(this).text();
	var htle="<div id='fse4'><div id='lseknmlkgs'><div id='fslekn1'><samp id='fegwvad'>"+text2+"</samp></div>"
       +"<a href='javaScript:fin4();'><img src='images/guan.gif'></a></div></div>";
	   var htlef5="<a href='javaScript:find8();' id='fsbbb'><div id='lseknmlkgsgg'><div id='fslekn1'><samp id='fegwvad'>清空条件</samp></div></a></div>";
	
	$("#efgabepp5").html(htlef5);
	$("#efgabepp4").html(htle);
	$(".citylist5").slideUp();
	$(".selemenu3").removeClass("ljfsvs4");
	});
});
  $(function(){
    $(document).not($(".selectbox3")).click(function(){
        $(".citylist,.citylist5").slideUp();
		$(".selemenu3").removeClass("ljfsvs4");
	 });
	 $(".selectbox3").click(function(event){
        event.stopPropagation();
    });
	});

	