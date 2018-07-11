// JavaScript Document
$(document).ready(function(e) {
    mana_topul();
	manage_nav();
	selects();
	squere_block(); 
	dfun("#startdate");
	dfun("#enddate");
});
function mana_topul(){
	if($("#manage_ul").length<=0){ return null;}
	$("#manage_ul>li").hover(function(){
			$(this).children("ul").show();
		},function(){
			$(this).children("ul").hide();
		});
}
function manage_nav(){
	if($("#manage_nav").length<=0){ return null;}
	$("#manage_nav>li>a").click(function(){
			var t = $(this);
			t.parent().prevAll("li").children(".sub-nav").slideUp(200);
			t.parent().nextAll("li").children(".sub-nav").slideUp(200);
			$(this).next(".sub-nav").slideToggle(200);
		});
}

function selects(){
	if($(".selects").length<=0){ return null;}
	$(".selects").hover(function(){
		$(this).children("dd").show();
		$(this).css("zIndex","999");
	},function(){
		$(this).children("dd").hide();
		$(this).css("zIndex","");
	});
	$(".selects>dd>a").click(function(){
		var nr = $(this).html();
		$(this).parent().parent().find(".selects_s").html(nr);
		$(this).parent().hide();
	});
}

function squere_block(){
	if($(".squere_block").length<=0){ return null;}
	var n=null;
	var img = null;
	$(".squere_block>a").hover(function(){ 
		var v = $(this).attr("shuom");
		v = $.trim(v);
		if(!v){
			return null;
		}
		n = $("<div>");
		img = $("<img>");
		img.attr("src","../common/images/dsj.gif");
		n.addClass("shuom");
		n.html(v);
		n.appendTo( $(this).parent() );
		img.appendTo( $(this).parent() );
		$(this).parent().css("zIndex",99);
	},function(){
		n.remove();
		img.remove();
		$(this).parent().css("zIndex",1);
	});
}

function dfun(obj){
	if( $(obj).length<=0 ){return null;} 
	$(obj).datetimepicker({
		onGenerate:function( ct ){
			$(this).find('.xdsoft_disabled').removeClass("xdsoft_disabled");
				 
		}, 
		format:'Y-m-d',
		minDate:'-1970/01/2',
		maxDate:'+1970/01/2',
		timepicker:false
	});	
}