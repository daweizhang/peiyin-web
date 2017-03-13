function getAddress(regionId,type) {
  var array = {};
  if(type==0) {//省级列表
	var obj = address['0'];
	var len = obj.length;
	for(var i=0; i<len; i++) {
		var key = obj[i][0];
		var value = obj[i][1];
		array[key] = value;
	}
  } else if(type==1) {//市级列表
	var str = regionId.substring(0,2);
	var obj = address['1'];
	var len = obj.length;
	for(var i=0; i<len; i++) {
		var key = obj[i][0];
		var value = obj[i][1];
		if(key.substring(0,2)==str) {array[key] = value;}
	}
  } else if(type==2) {//区县级列表
	var str = regionId.substring(0,4);
	var obj = address['2'];
	var len = obj.length;
	for(var i=0; i<len; i++) {
		var key = obj[i][0];
		var value = obj[i][1];
		if(key.substring(0,4)==str) {array[key] = value;}
	}
  }
  return array;
}

var s = [ "s1", "s2", "s3" ];
	var opt0 = [ "国家", "省份", "地级市、县" ];
	function setup() {

		change(0);
		
	}
$(function(){
	setup();});
	function loadProvince(regionId) {
		$("#id_provSelect").html("");
		$("#id_provSelect").append("<option value=''>请选择省份</option>");
		var jsonStr = getAddress(regionId, 0);
		for ( var k in jsonStr) {
			$("#id_provSelect").append(
					"<option value='"+k+"'>" + jsonStr[k] + "</option>");
		}
		if (regionId.length != 6) {
			$("#id_citySelect").html("");
			$("#id_citySelect").append("<option value=''>请选择城市</option>");
			$("#id_areaSelect").html("");
			$("#id_areaSelect").append("<option value=''>请选择区域</option>");
		} else {
			$("#id_provSelect").val(regionId.substring(0, 2) + "0000");

		}
	}

	function loadCity(regionId) {
		$("#id_citySelect").html("");
		$("#id_citySelect").append("<option value=''>请选择城市</option>");
		if (regionId.length != 6) {
			$("#id_areaSelect").html("");
			$("#id_areaSelect").append("<option value=''>请选择区域</option>");
		} else {
			var jsonStr = getAddress(regionId, 1);
			for ( var k in jsonStr) {
				$("#id_citySelect").append(
						"<option value='"+k+"'>" + jsonStr[k] + "</option>");
			}
			if (regionId.substring(2, 6) == "0000") {
				$("#id_areaSelect").html("");
				$("#id_areaSelect").append("<option value=''>请选择区域</option>");
			} else {
				$("#id_citySelect").val(regionId.substring(0, 4) + "00");

			}
		}
	}

	function loadArea(regionId) {
		$("#id_areaSelect").html("");
		$("#id_areaSelect").append("<option value=''>请选择区域</option>");
		if (regionId.length == 6) {
			var jsonStr = getAddress(regionId, 2);
			for ( var k in jsonStr) {
				$("#id_areaSelect").append(
						"<option value='"+k+"'>" + jsonStr[k] + "</option>");
			}
			if (regionId.substring(4, 6) != "00") {
				$("#id_areaSelect").val(regionId);
			}
		}
	}
	function getCountry(fsadfa) {
		
		$("#klnklvnse").val(" ");
		
		
		
		//$("#klnklvnse").val(vlks);
		//$("#klnklvnse").val(fsadfa+"-"+$("#s2").val());
		//["中国","韩国","日本","新加坡","马来西亚","菲律宾","沙特阿拉伯","朝鲜","越南","缅甸","德国","英国","法国","爱尔兰","波兰","西班牙","意大利","俄罗斯","荷兰","美国","加拿大","巴西","阿根廷","新西兰","澳大利亚","印度","埃及"]);
		if(fsadfa=='中国'){
			$("#klnklvnse").val(fsadfa+"-安徽省");
		}else if(fsadfa=='韩国'){
			$("#klnklvnse").val(fsadfa+"-汉城特別市");
		}else if(fsadfa=='日本'){
			$("#klnklvnse").val(fsadfa+"-东京都");
		}else if(fsadfa=='新加坡'){
			$("#klnklvnse").val(fsadfa);
		}else if(fsadfa=='马来西亚'){
			$("#klnklvnse").val(fsadfa+"-吉打 Kedah");
		}else if(fsadfa=='菲律宾'){
			$("#klnklvnse").val(fsadfa+"-伊罗戈斯 Ilocos");
		}else if(fsadfa=='沙特阿拉伯'){
			$("#klnklvnse").val(fsadfa+"-利雅得 Ar Riyad");
		}else if(fsadfa=='朝鲜'){
			$("#klnklvnse").val(fsadfa+"-平壤直辖市");
		}else if(fsadfa=='越南'){
			$("#klnklvnse").val(fsadfa+"-河内市");
		}else if(fsadfa=='缅甸'){
			$("#klnklvnse").val(fsadfa+"-实皆省 Sagaing");
		}else if(fsadfa=='德国'){
			$("#klnklvnse").val(fsadfa+"-巴登-符腾堡 Baden-Württemberg");
		}else if(fsadfa=='英国'){
			$("#klnklvnse").val(fsadfa+"-英格兰 England");
		}else if(fsadfa=='法国'){
			$("#klnklvnse").val(fsadfa+"-法兰西岛 Ile-de-France");
		}else if(fsadfa=='爱尔兰'){
			$("#klnklvnse").val(fsadfa+"-穆斯特省 Munster");
		}else if(fsadfa=='波兰'){
			$("#klnklvnse").val(fsadfa+"-下西里西亚 Dolnoslaskie");
		}else if(fsadfa=='西班牙'){
			$("#klnklvnse").val(fsadfa+"-安达卢西亚 Andalucía");
		}else if(fsadfa=='意大利'){
			$("#klnklvnse").val(fsadfa+"-阿布鲁佐 Abruzzi");
		}else if(fsadfa=='俄罗斯'){
			$("#klnklvnse").val(fsadfa+"-西北 Severo-Zapadnyj");
		}else if(fsadfa=='荷兰'){
			$("#klnklvnse").val(fsadfa+"-德伦特 Drenthe");
		}else if(fsadfa=='美国'){
			$("#klnklvnse").val(fsadfa+"-阿拉巴马 Alabama");
		}else if(fsadfa=='加拿大'){
			$("#klnklvnse").val(fsadfa+"-新不伦瑞克省 New Brunswick");
		}else if(fsadfa=='巴西'){
			$("#klnklvnse").val(fsadfa+"-联邦首都 Distrito Federal");
		}else if(fsadfa=='阿根廷'){
			$("#klnklvnse").val(fsadfa+"-联邦首都 Distrito Federal");
		}else if(fsadfa=='新西兰'){
			$("#klnklvnse").val(fsadfa+"-北地 Northland");
		}else if(fsadfa=='澳大利亚'){
			$("#klnklvnse").val(fsadfa+"-新南威尔士州 New South Wales");
		}else if(fsadfa=='印度'){
			$("#klnklvnse").val(fsadfa+"-查谟和克什米尔* Jammu & Kashmīr");
		}else if(fsadfa=='埃及'){
			$("#klnklvnse").val(fsadfa+"-开罗 Al Qahirah");
		}
		
		change(1);
		
		var country = document.getElementById("s1");
		var province = document.getElementById("s2");
		var city = document.getElementById("s3");
		var provSelect = document.getElementById("id_provSelect");
		var citySelect = document.getElementById("id_citySelect");
		var areaSelect = document.getElementById("id_areaSelect");
		
		if (country.value == "中国") {
			loadProvince('440116');
			provSelect.style.display = "block";
			province.style.display = "none";
			city.style.display = "none";
		} else {
			province.style.display = "block";
			provSelect.style.display = "none";
			citySelect.style.display = "none";
			areaSelect.style.display = "none";
		}
		
	}
function getProvince(tfsaf){
	var lic=$("#s1").val();
	var vlks=lic+"-"+tfsaf
	$("#klnklvnse").val(vlks);
	
}	
	
var address = {};

address['0'] = [['110000','北京市'],['120000','天津市'],['130000','河北省'],['140000','山西省'],['150000','内蒙古自治区'],
['210000','辽宁省'],['220000','吉林省'],['230000','黑龙江省'],['310000','上海市'],['320000','江苏省'],
['330000','浙江省'],['340000','安徽省'],['350000','福建省'],['360000','江西省'],['370000','山东省'],
['410000','河南省'],['420000','湖北省'],['430000','湖南省'],['440000','广东省'],['450000','广西壮族自治区'],
['460000','海南省'],['500000','重庆市'],['510000','四川省'],['520000','贵州省'],['530000','云南省'],
['540000','西藏自治区'],['610000','陕西省'],['620000','甘肃省'],['630000','青海省'],['640000','宁夏回族自治区'],
['650000','新疆维吾尔自治区'],['710000','台湾省'],['810000','香港特别行政区'],['820000','澳门特别行政区'],['900000','外国']
];



var lks=true;

function getProvcs(fls,csvef){

	if(lks==true){
	$("#lmvbke").val(" ");
	$("#lsneions").val(" ");
	lks=false;
	}
	
	var lkmfdv=$("#lmvbke").val();
	var yinws=$("#lsneions").val();
	if(lkmfdv==" "){
		$("#lmvbke").val(csvef);
	}else{
		$("#lmvbke").val(lkmfdv+"♫"+csvef);
	}
	if(yinws==" "){
		$("#lsneions").val(fls);
	}else{
		$("#lsneions").val(yinws+"♫"+fls);
	}
	//alert(csvef);
	var objS = document.getElementById("eunvsle");
    for(var i=0;i<objS.options.length;i++)
    {
    
        if(objS.options[i].text == csvef)
        {
            objS.options.remove(i);
            return ;
        }
    }
    
	//$("#eunvsle").options.remove(index); 
}
var lkss=true;
function getProvcsd1(ehtys,csvef){
	if(lkss==true){
		$("#lmvbked1").val(" ");
		$("#peiytype").val(" ");
		lkss=false;
		}

	var lkmfdv=$("#lmvbked1").val();
    var tyehs=$("#peiytype").val();
	if(lkmfdv==" "){
		$("#lmvbked1").val(csvef);
	}else{
		$("#lmvbked1").val(lkmfdv+"♫"+csvef);
	}
	if(tyehs==" "){
		$("#peiytype").val(ehtys);
	}else{
		$("#peiytype").val(tyehs+"♫"+ehtys);
	}
	//alert(csvef);
	var objS = document.getElementById("eunvsled1");
    for(var i=0;i<objS.options.length;i++)
    {
    
        if(objS.options[i].text == csvef)
        {
            objS.options.remove(i);
            return ;
        }
    }
	//$("#eunvsle").options.remove(index); 
}
var lksss=true;
function getProvcsd2(ysles,csvef){
	//alert(ysles);
	//alert(csvef);
	if(lksss==true){
		$("#lmvbked2").val(" ");
		$("#ysliepeiyt").val(" ");
		lksss=false;
	}
	var lkmfdv=$("#lmvbked2").val();
	var ystys=$("#ysliepeiyt").val();
	if(lkmfdv==" "){
		$("#lmvbked2").val(csvef);
	}else{
		$("#lmvbked2").val(lkmfdv+"♫"+csvef);
	}
	if(ystys==" "){
		$("#ysliepeiyt").val(ysles);
	}else{
		$("#ysliepeiyt").val(ystys+"♫"+ysles);
	}
	//alert(csvef);
	var objS = document.getElementById("eunvsled2");
    for(var i=0;i<objS.options.length;i++)
    {
    
        if(objS.options[i].text == csvef)
        {
            objS.options.remove(i);
            return ;
        }
    }
	//$("#eunvsle").options.remove(index); 
}


var lkssss=true;
function getProvcsd3(ysles,csvef,index){
	//alert(ysles);
	//alert(index);
	//alert(csvef);
	//if(lkssss==true){
		//$("#accentValueId").val(" ");
	//	$("#accentTypeId").val(" ");
	//	lkssss=false;
	//}
	var lkmfdv=$("#accentValueId").val();
	//var ystys=$("#accentTypeId").val();
	
	if(lkmfdv==" " || lkmfdv == '0'){
		$("#accentValueId").val(csvef);
	}else{
		$("#accentValueId").val(lkmfdv+"♫"+csvef);
	} 
	/*
	if(ystys==" " || ystys == '0'){
		$("#accentTypeId").val(ysles);
	}else{
		$("#accentTypeId").val(ystys+"♫"+ysles);
	}*/
	//alert(csvef);
	var objS = document.getElementById("accentSelectorId");
	//alert(objS.options);
	var selectVal = csvef.replace(/(\s*$)/g, "");
    for(var i=0;i<objS.options.length;i++)
    {
        //alert(objS.options[i].text + ">>" + selectVal + ">>" + i);
        if(objS.options[i].text == selectVal)
        {
        	//alert("Ok");
            objS.options.remove(i);
            return ;
        }
    }
	//$("#eunvsle").options.remove(index); 
}



		