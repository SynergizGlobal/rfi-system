<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300..800;1,300..800&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">	
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
	<link rel="stylesheet" type="text/css" href="/css/style.css">
	<style>
		
	</style>
</head>
<body>
<div class="login-page">
	<div class="login-banner-image">
		<img src="/images/login-side-image.png" alt="side image">
	</div>
	<div class="login-form">
		<div class="login-logo">
			<img src="/images/MRVC.webp" alt="" width="250" height="250">
		</div>
		<h2>Login</h2>
		        <form class="col s12 m3" id="loginForm" name="loginForm" method="post" >
			<label>Username: </label>
			<div class="form-fields">
            	<input type="text" name="user_id" id="user_id" placeholder="Enter Username">
            </div>
            <label>Password: </label>
            <div class="form-fields">
            	<input type="password" name="password" id="password" placeholder="Enter password">
            </div>
            <div class="form-fields-checkbox">
            	<input type="checkbox" name="remember_me" id="remember_me">
            	<label for="remember_me">Remember Me</label>
            </div>
            
            <input type="submit" name="submit" value="Login">
		</form>
		<!-- Forgot Password Link -->
  <a href="javascript:void(0)" class="forgot-password" onclick="showForgotPassword()">Forgot Password?</a>

  <!-- Forgot Password Section (Initially Hidden) -->
  <div id="forgotPasswordSection" style="display: none;">
	<form>
		<label>Enter Email:</label>
		<div class="form-fields">
		<input type="email" id="forgotEmail" placeholder="Enter your email" required>
		</div>
		<div class="d-flex">
			<button type="button" class="btn btn-red" onclick="openOtpPopup()">Change</button>
			<button type="button" class="btn btn-white" onclick="cancelForgotPassword()" style="margin-left: 10px;">Cancel</button>
		</div>
	</form>
  </div>
</div>

<!-- OTP Popup -->
<div id="otpPopup" class="modal" style="display:none; position:fixed; top:0; left:0; width:100%; height:100%; background-color:rgba(0,0,0,0.5);">
  <div class="modal-content" style="background:#fff; padding:20px; max-width:400px; margin:100px auto; border-radius:10px;">
    <span class="btn-close" onclick="closeOtpPopup()" style="float:right; cursor:pointer;"></span>
    <h3>Enter OTP</h3>
    <input type="text" id="otpField" placeholder="Enter OTP" style="width:100%; padding:10px; margin-bottom:10px;">
	<div class="d-flex">
		<button type="button" class="btn btn-red" onclick="submitOtp()">Submit OTP</button>
		<button type="button" class="btn btn-white">Resend</button>
	</div>
  </div>
</div>

<script>
  function showForgotPassword() {
    document.getElementById('loginForm').style.display = 'none';
    document.querySelector('.forgot-password').style.display = 'none';
    document.getElementById('forgotPasswordSection').style.display = 'block';
  }

  function openOtpPopup() {
    const email = document.getElementById('forgotEmail').value;
    if (!email) {
      alert("Please enter your email.");
      return;
    }
    document.getElementById('otpPopup').style.display = 'block';
  }

  function closeOtpPopup() {
    document.getElementById('otpPopup').style.display = 'none';
  }

  function submitOtp() {
    const otp = document.getElementById('otpField').value;
    if (!otp) {
      alert("Please enter the OTP.");
    } else {
      alert("OTP submitted: " + otp);
      closeOtpPopup();
    }
  }

  function cancelForgotPassword() {
  document.getElementById('forgotPasswordSection').style.display = 'none';
  document.getElementById('loginForm').style.display = 'flex';
  document.querySelector('.forgot-password').style.display = 'block';
}
</script>

</body>
</html>