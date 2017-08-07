<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
  <meta charset="UTF-8">
  <title>Login/Sign-Up</title>
  
  
  <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Open+Sans:400,300'>
<link rel='stylesheet prefetch' href='https://fonts.googleapis.com/icon?family=Material+Icons'>

      <link rel="stylesheet" href="css/style.css">

  
</head>

<body>
  <div class="cotn_principal">
<div class="cont_centrar">

  <div class="cont_login">
<div class="cont_info_log_sign_up">
      <div class="col_md_login">
<div class="cont_ba_opcitiy">
        
        <h2>LOGIN</h2>  
 
  <button class="btn_login" onclick="cambiar_login()">LOGIN</button>
  </div>
  </div>
<div class="col_md_sign_up">
<div class="cont_ba_opcitiy">
  <h2>SIGN UP</h2>
  
  <button class="btn_sign_up" onclick="cambiar_sign_up()">SIGN UP</button>
</div>
  </div>
       </div>

    
    <div class="cont_back_info">
       <div class="cont_img_back_grey">
        </div>
       
    </div>
<div class="cont_forms" >
    <div class="cont_img_back_">
     </div>
 <form action="login" method="post">
 <div class="cont_form_login">
<a href="#" onclick="ocultar_login_sign_up()" ><i class="material-icons">&#xE5C4;</i></a>
   <h2>LOGIN</h2>
 <input type="text" placeholder="Email" name="Email"/>
<input type="password" placeholder="password" name="password"/>
<button class="btn_login" onclick="cambiar_login()">LOGIN</button>
</form>>
  </div>
   <form action="Register" method="post"> 
   <div class="cont_form_sign_up">
<a href="#" onclick="ocultar_login_sign_up()"><i class="material-icons">&#xE5C4;</i></a>
     <h2>SIGN UP</h2>
<input type="text" placeholder="First Name" name="First_Name"/>     
<input type="text" placeholder="Last Name" name="Last_Name"/>
<input type="text" placeholder="Contact_no" name="Contact_no"/>
<input type="text" placeholder="Email" name="Email"/>
<input type="password" placeholder="Confirm Password" name="password"/>
<button class="btn_sign_up" onclick="cambiar_sign_up()">SIGN UP</button>
</form>
  </div>

    </div>
    
  </div>
 </div>
</div>
  
    <script src="js/index.js"></script>

</body>
</html>
