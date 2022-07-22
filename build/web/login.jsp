<%-- 
    Document   : login
    Created on : Jul 13, 2022, 6:05:58 PM
    Author     : PC
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Neumorphism Effect Login Form</title>
    <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/vendor/animate/animateregister.css">
</head>

<body>
    <div id="info-message">
		${message}
	</div>
    <div class="content">
        <div class="form-box">
            <div class="button-box">
                <button type="button" class="toggle-btn" onclick="signup()">Sign In</button>
                <button type="button" class="toggle-btn" onclick="register()">Register</button>
            </div>
        </div>


        <form id="signup" action="Login" method="POST" hidden>
            <div class="text">Sign Up</div>
            <div class="field">
                <span class="bx bxs-user"></span>
                <input type="text" placeholder="Username" name="username" required>
            </div>
          
            <div class="field">
                <span class="bx bxs-lock-alt"></span>
                <input type="password" placeholder="Password" name="password"  required>
            </div>
             <div class="field">

                <input type="radio" id="patient" name="type" placeholder="Patient" value="patient" required checked>
                <label for="patient">Patient</label><br>
                <input type="radio" id="doctor" name="type" placeholder="Doctor" value="doctor" required>
                <label for="doctor">Doctor</label><br>
                 <input type="radio" id="admin" name="type" placeholder="Administrator" value="admin" required>
                <label for="admin">Admin</label><br>
            </div>
            

            <button type="submit">Sign Up</button>

            <h4>or Sign Up with social platforms</h4>

            <div class="social_icon">
                <i class='bx bxl-facebook'></i>
                <i class='bx bxl-discord-alt'></i>
                <i class='bx bxl-twitter'></i>
                <i class='bx bxl-dribbble'></i>
            </div>

        </form>



        <form id="register" action="Register" method="get" hidden>
            <h2>Register</h2>
            <div class="field">
                <span class="bx bxs-user"></span>
                <input name="username" type="text" placeholder="Username" required>
            </div>

            <div class="field">
                <span class="bx bxs-compass"></span>
                <input id="password" name="password" type="password" placeholder="Password" required>
            </div>

            <div class="field">
                <span class="bx bxs-compass"></span>
                <input id="confirmpassword" name="confirmpassword" type="password" placeholder="Confirm Password" required>
            </div>

            <div class="field">
                <span class="bx bxs-compass"></span>
                <input name="patientCCCD" type="text" placeholder="CCCD" required>
            </div>
            
             <div class="field">
                <span class="bx bxs-compass"></span>
                <input name="patientName" type="text" placeholder="Full Name" required>
            </div>
            
             <div class="field">
                <span class="bx bxs-compass"></span>
                <input name="patientPhone" type="number" placeholder="Phone" required>
            </div>
            
             <div class="field">
                <span class="bx bxs-compass"></span>
                <input name="patientAddress" type="text" placeholder="Address" required>
            </div>

            <div class="field">

                <input type="radio" id="female" name="patientGender" placeholder="Female" value="Female" required>
                <label for="female">Female</label><br>
                <input type="radio" id="male" name="patientGender" placeholder="Male" value="Male" required>
                <label for="male">Male</label><br>
                 <input type="radio" id="LGBT" name="patientGender" placeholder="LGBT" value="LGBT" required>
                <label for="LGBT">LGBT</label><br>
            </div>

         
            <div class="field">
                <span class="bx bxs-user"></span>
                <input name="patientDOB" type="date" placeholder="Birthday" required>
            </div>

       
           
            <button type="submit" onclick="checkpassword()">Register</button>
            <button type="reset" value="Reset">Reset</button>
        </form>


        <div class="drak-light">
            <i class="bx bx-moon moon"></i>
            <i class="bx bx-sun sun"></i>
        </div>
    </div>

    <script>
        const body = document.querySelector("body"),
            modeToggle = document.querySelector(".drak-light");

        modeToggle.addEventListener("click", () => {
            modeToggle.classList.toggle("active");
            body.classList.toggle("dark");
            if (!body.classList.contains("dark")) {
                localStorage.setItem("mode", "light-mode");
            } else {
                localStorage.setItem("mode", "dark-mode");
            }
        })
        var x = document.getElementById("signup");
        var y = document.getElementById("register");
        var z = document.getElementById("btn");

        function register() {
            x.style.display = 'none';
            y.style.display = 'block';
        }

        function signup() {
            x.style.display = 'block';
            y.style.display = 'none';
        }
    </script>
</body>

</html>
