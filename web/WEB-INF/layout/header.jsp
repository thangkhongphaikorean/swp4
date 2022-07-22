	<header>
		<a href="${pageContext.request.contextPath}/index.jsp">
		 <img id="logo" src="${pageContext.request.contextPath}/resources/logo.png"/>
		 </a>
		 <h1><a href="${pageContext.request.contextPath}/index.jsp">MEDICAL DEPARTMENT</a></h1>
	</header>
        
        <header>
       

        <nav class="navbar navbar-expand-lg navbar-light shadow-sm">
            <div class="container">
                <a class="navbar-brand" href="${pageContext.request.contextPath}home.jsp"><span class="text-primary">FPT</span>-Hopital</a
          >

        

          <button
            class="navbar-toggler"
            type="button"
            data-toggle="collapse"
            data-target="#navbarSupport"
            aria-controls="navbarSupport"
            aria-expanded="false"
            aria-label="Toggle navigation"
          >
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupport">
            <ul class="navbar-nav ml-auto">
               <li class="nav-item active ">
                <a href="${pageContext.request.contextPath}registerDoctor.jsp" class="nav-link" >Register Doctor</a>
            </li> 
             <li class="nav-item">
                <a href="${pageContext.request.contextPath}infoPatient.jsp" class="nav-link">Info Patient</a>
            </li> 
            
            <li class="nav-item">
                <a href="${pageContext.request.contextPath}RegisterAppointment.jsp" class="nav-link">Register treatment appointment</a>
            </li>
            <li class="nav-item">
                <a href="${pageContext.request.contextPath}ViewAppointment.jsp" class="nav-link">Register treatment</a>
            </li>
            
            <li class="nav-item">
                <a href="${pageContext.request.contextPath}UpdateResults.jsp" class="nav-link">Results</a>
            </li>
                </ul>
            </div>
            <!-- .navbar-collapse -->
            </div>
            <!-- .container -->
        </nav>
    </header>
