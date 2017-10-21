
function myFunction() {
    var x = document.getElementById("myTopnav");
    if (x.className === "topnav") {
        x.className += " responsive";
    } else {
        x.className = "topnav";
    }
}
/*****************Login With google*******************/
function onSignIn(googleUser) {
    var profile = googleUser.getBasicProfile();
    console.log('ID: ' + profile.getId());
    console.log('Name: ' + profile.getName());
    console.log('Image URL: ' + profile.getImageUrl());
    console.log('Email: ' + profile.getEmail());
    console.log('id_token: ' + googleUser.getAuthResponse().id_token);


    if(new String(profile.getEmail()).valueOf() == new String("egas.sewa24@gmail.com").valueOf())
    {
    var form = $('<form action="' + "success.jsp" + '" method="post">' +
                     '<input type="text" name="id_token" value="' +
                      googleUser.getAuthResponse().id_token + '" />' +
                                                           '</form>');
    $('body').append(form);
    form.submit();
    }
    else
    {
    	var form = $('<form action="' + "https://gmail.com" + '" method="post">' +
                '<input type="text" name="id_token" value="' +
                 googleUser.getAuthResponse().id_token + '" />' +
                                                      '</form>');
		$('body').append(form);
		form.submit();
    }
 }
/*****************Login Sign-Up Slide*******************/
function cambiar_login() {
	  document.querySelector('.cont_forms').className = "cont_forms cont_forms_active_login";  
	document.querySelector('.cont_form_login').style.display = "block";
	document.querySelector('.cont_form_sign_up').style.opacity = "0";               

	setTimeout(function(){  document.querySelector('.cont_form_login').style.opacity = "1"; },400);  
	  
	setTimeout(function(){    
	document.querySelector('.cont_form_sign_up').style.display = "none";
	},200);  
	  }

	function cambiar_sign_up(at) {
	  document.querySelector('.cont_forms').className = "cont_forms cont_forms_active_sign_up";
	  document.querySelector('.cont_form_sign_up').style.display = "block";
	document.querySelector('.cont_form_login').style.opacity = "0";
	  
	setTimeout(function(){  document.querySelector('.cont_form_sign_up').style.opacity = "1";
	},100);  

	setTimeout(function(){   document.querySelector('.cont_form_login').style.display = "none";
	},400);  


	}    



	function ocultar_login_sign_up() {

	document.querySelector('.cont_forms').className = "cont_forms";  
	document.querySelector('.cont_form_sign_up').style.opacity = "0";               
	document.querySelector('.cont_form_login').style.opacity = "0"; 

	setTimeout(function(){
	document.querySelector('.cont_form_sign_up').style.display = "none";
	document.querySelector('.cont_form_login').style.display = "none";
	},500);  
	  
	  }
/*****************Client-Side Validation*******************/
function validateRegEx(regex, input, helpText, helpMessage) {
       if (!regex.test(input)) {
      if (helpText != null)
        helpText.innerHTML = helpMessage;
      return false;
    }
    else {
      if (helpText != null)
        helpText.innerHTML = "";
      return true;
    }
  }

  function validateNonEmpty(inputField, helpText) {
    return validateRegEx(/.+/,
      inputField.value, helpText,
      "Please enter a value.");
  }

  function validateLength(minLength, maxLength, inputField, helpText) {
    return validateRegEx(new RegExp("^.{" + minLength + "," + maxLength + "}$"),
      inputField.value, helpText,
      "Please enter a value " + minLength + " to " + maxLength +
      " characters in length.");
  }

  function validateZipCode(inputField, helpText) {
    if (!validateNonEmpty(inputField, helpText))
      return false;

    return validateRegEx(/^\d{5}$/,
      inputField.value, helpText,
      "Please enter a 5-digit ZIP code.");
  }

  function validateDate(inputField, helpText) {
    if (!validateNonEmpty(inputField, helpText))
      return false;

       return validateRegEx(/^\d{2}\/\d{2}\/(\d{2}|\d{4})$/,
      inputField.value, helpText,
      "Please enter a date (for example, 01/14/1975).");
  }

  function validatePhone(inputField, helpText) {
   
    if (!validateNonEmpty(inputField, helpText))
      return false;

   
    return validateRegEx(/^\d{3}-\d{3}-\d{4}$/,
      inputField.value, helpText,
      "Please enter a phone number (for example, 123-456-7890).");
  }

  function validateEmail(inputField, helpText) {
   
    if (!validateNonEmpty(inputField, helpText))
      return false;

   
    return validateRegEx(/^[\w\.-_\+]+@[\w-]+(\.\w{2,3})+$/,
      inputField.value, helpText,
      "Please enter an email address (for example, johndoe@acme.com).");
  }

  function placeOrder(form) {
    if (validateLength(1, 32, form["message"], form["message_help"]) &&
      validateLength(1, 32, form["message1"], form["message_help1"])	&&
      validateZipCode(form["zipcode"], form["zipcode_help"]) &&
      validateDate(form["date"], form["date_help"]) &&
      validateNonEmpty(form["name"], form["name_help"]) &&
      validatePhone(form["phone"], form["phone_help"]) &&
      validateEmail(form["email"], form["email_help"])) {
   
      form.submit();
    } else {
      alert("I'm sorry but there is something wrong with the entered information.");
    }
  }
/*****************Slide Shows*******************/
function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 5000); // Change image every 2 seconds
}

function plusDivs(n) {
	  showDivs(slideIndex += n);
	}

	function showDivs(n) {
	  var i;
	  var x = document.getElementsByClassName("mySlides");
	  if (n > x.length) {slideIndex = 1}    
	  if (n < 1) {slideIndex = x.length}
	  for (i = 0; i < x.length; i++) {
	     x[i].style.display = "none";  
	  }
	  x[slideIndex-1].style.display = "block";  
	}