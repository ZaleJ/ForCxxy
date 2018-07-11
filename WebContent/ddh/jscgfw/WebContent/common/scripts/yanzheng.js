// JavaScript Document
jQuery.validator.addMethod("stringCheck", function(value, element) {         
    return this.optional(element) || /^\w{4,16}$/.test(value);         
 }, "只能包括英文字母、数字和下划线，且是6到16位之间");  
 jQuery.validator.addMethod("qqcheck", function(value, element) {         
    return this.optional(element) || /^\d{4,16}$/.test(value);         
 }, "请输入合法的qq号码"); 
  jQuery.validator.addMethod("telcheck", function(value, element) {         
    return this.optional(element) || /^1[2-9]\d{9}$/.test(value);         
 }, "请输入合法的手机号码"); 
  jQuery.validator.addMethod("weixincheck", function(value, element) {         
    return this.optional(element) || /^[\u4e00-\u9fa5\w]+$/.test(value);         
 }, "请输入合法的手机号码");
$(document).ready(function() {
	 $("#myform").validate({
		rules: {
		   	username: {
				required: true,
				stringCheck:true
			},
		    password: {
				required: true,
				minlength: 6
			   },
			 password2: {
				required: true,
				equalTo:'#password'
			   },
			  qq: {
				required: true,
				qqcheck:true
			   }, 
			  tel:{
			  	required: true,
				telcheck:true
			  },
			  weixin:{
			  	required: true,
				weixincheck:true
			  }, 
			yzm: "required"
		},
		  messages: {
  			 yzm: "请输入验证码"
		  }
	 });
});
