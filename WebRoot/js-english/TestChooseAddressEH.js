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
	var opt0 = [ "Country", "Province", "地级市、县" ];
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
		$("#klnklvnse").val(fsadfa);
		
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

function getProvcs(csvef){
	if(lks==true){
	$("#lmvbke").val(" ");
	lks=false;
	}
	
	var lkmfdv=$("#lmvbke").val();
	if(lkmfdv==" "){
		$("#lmvbke").val(csvef);
	}else{
		$("#lmvbke").val(lkmfdv+"♫"+csvef);
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
function getProvcsd1(csvef){
	if(lkss==true){
		$("#lmvbked1").val(" ");
		lkss=false;
		}

	var lkmfdv=$("#lmvbked1").val();
 
	if(lkmfdv==" "){
		$("#lmvbked1").val(csvef);
	}else{
		$("#lmvbked1").val(lkmfdv+"♫"+csvef);
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
function getProvcsd2(csvef){
	if(lksss==true){
		$("#lmvbked2").val(" ");
		lksss=false;
		}
	var lkmfdv=$("#lmvbked2").val();
	if(lkmfdv==" "){
		$("#lmvbked2").val(csvef);
	}else{
		$("#lmvbked2").val(lkmfdv+"♫"+csvef);
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



		