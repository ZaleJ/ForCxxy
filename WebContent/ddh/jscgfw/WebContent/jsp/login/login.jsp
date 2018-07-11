
<%@ page contentType="text/html; charset=UTF-8" %>
    <!DOCTYPE html>  
    <html>  
    <head>  
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<html >
<head>
 <link rel="stylesheet" href="../../css/bootstrap.min.css">
        <link rel="stylesheet" href="../../css/animate.css">
        <link rel="stylesheet" href="../../css/style.css">
  <link rel="stylesheet" href="../../css/style3.css">
	<link rel="stylesheet" href="../../css/reset.css"> <!-- CSS reset -->
	<link rel="stylesheet" href="../../css/style2.css"> <!-- Resource style -->
	<link rel="stylesheet" href="../../css/component.css"> <!-- Resource style -->
	<link rel="stylesheet" href="../../css/animated-bg.css"> <!-- Resource style -->
	<title>登录</title>
	
	  <script type="text/javascript">  
            function myfunction()  
            {  
                if(document.getElementById("gonghao").value=='')  
                {  
                    alert("请输入用户名！"); 
                  
                    return false;                     
                }  
                if(document.getElementById("inkey").value=='')  
                {  
                    alert("请输入密码！");  
                
                    return false;                     
                }  
              
                      
                return true;  
            }  
        </script>  
    
	
</head>
<body>
	<header class="cd-header">
		<div class="cd-logo"> <p>忘记密码？ <a href="注册.html">注册</a> | <a href="">忘记密码?</a></p></div>

		<a class="cd-primary-nav-trigger" href="#0">
			<span class="cd-menu-text">Menu</span><span class="cd-menu-icon"></span>
		</a> <!-- cd-primary-nav-trigger -->
	</header>



	<nav>

		</ul>
	</nav>


				<div id="large-header" class="large-header">
					<canvas id="demo-canvas"></canvas>
		
	
		
    <div class="main-title">
  <div >
    <div class=>
      <div class="login__check"></div>
      <div class="login__form">
         <%  
    
        Cookie[] c = request.getCookies();  
        String   gonghao ="gonghao"; 
        String  inkey = "Password"; 
   
    %> 
        <div class="login__row">
        
          <form  name="LoginForm" method="post" action="teacher_login_signup/login.jsp" onSubmit="return InputCheck(this)"  >
          <svg class="login__icon name svg-icon" viewBox="0 0 20 20">
        
          </svg>
        
          <input type="text" class="login__input name"  id="gonghao" name="gonghao"   placeholder="<%=gonghao%>"/>
        </div>
           <%     if (c != null) {  
            for (int i = 0; i < c.length; i++) {  
                if ("gonghao".equals(c[i].getName())) {  
                   gonghao = c[i].getValue();  
                } 
                
                 if ("inkey".equals(c[i].getName())) {  
                   inkey = c[i].getValue();  
                }  
            }  
        } 
        else {  
           gonghao = " ";  
            inkey = " ";  
        }   %>
        
        <div class="login__row">
          <svg class="login__icon pass svg-icon" viewBox="0 0 20 20">
      
          </svg><input type="password" class="login__input pass" placeholder="<%=inkey%>"id="inkey" name="inkey"  >
          
        </div>
            <div class="login__row">
                   
           
          <svg class="login__icon pass svg-icon" viewBox="0 0 20 20">
          
    
         
          </svg><input type="checkbox" name="passcookies" class="login__input pass" value="jizhu" style="width: 23px; height: 18px; "><p class="login__signup login__input pass">记住密码 </p>
              
              <svg class="login__icon pass svg-icon" viewBox="0 0 20 20">
          
     
          </svg>
   
        </div>
        
        
        <div class="login__row"><input type="submit" value="登陆" class="btn btn-primary login__input pass" onclick="return myfunction()">
       
          
         
          
                   

             
        </div>
        </form>
         <div class="login__row">
          <svg class="login__icon pass svg-icon" viewBox="0 0 20 20">
           <p class="login__signup">忘记密码？ <a  class="login__signup" href="注册.html">注册</a> | <a   class="login__signup" href="">忘记密码?</a></p>  
          </svg>
         
        </div>
         <div class="login__row">
          <svg class="login__icon pass svg-icon" viewBox="0 0 20 20">
      
          </svg>
         
        </div>
      </div>
      
    </div>




        </div>
      </div>

    </div>
    </div>
</div>
		
		 <div class="main-title">
  
          
        
     
   
</div>
		
		
		
		
		
		
				</div>





<!-- Section 1 (Tell The World About Yourself) -->



<!-- Section 2 (The Amazing People Behind This) -->
		



<!-- Section 3 (We Like To Write) -->
	


		
	</main>





<!-- Section 1 (Tell The World About Yourself) -->


	<script src="../../js/jquery-2.1.1.js"></script>
	<script src="../../js/main.js"></script>



		<script src="../../js/TweenLite.min.js"></script>
		<script src="../../js/EasePack.min.js"></script>
		<script src="../../js/rAF.js"></script>
		<script src="../../js/demo-1.js"></script>

<!-- Script for smooth scrolling -->
<script>

</script>
 
    
    <!--ä¸»ä½åå®¹ end-->
    <script src="js/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Placeholder -->
    <script src="js/jquery.placeholder.min.js"></script>
    <!-- Waypoints -->
    <script src="js/jquery.waypoints.min.js"></script>
    <!-- Main JS -->
    <script src="js/main.js"></script>

    <!--<script type="text/javascript" src="../../__AdminAsset__common/scripts/jquery-1.11.2.min.js"></script>
    <script type="text/javascript" src="../../__AdminAsset__common/scripts/jquery.validate.min.js"></script>
    <script type="text/javascript" src="../../__AdminAsset__common/scripts/v_cn.js"></script>
    <script type="text/javascript" src="../../__AdminAsset__common/scripts/yanzheng.js"></script>-->
    
</body>
</html>