$(document).ready(function(e) {
    $(".accordion-toggle").click(function(){ 
		var r  = $(this).attr("href"); 
		$("#index_content").find(".panel-collapse").slideUp(200);
		$(r).slideDown(200);  
		return false;
		});
});