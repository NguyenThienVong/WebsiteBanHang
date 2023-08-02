<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Page Loader -->
<nav class="navbar navbar-expand-lg" style="background-color: whitesmoke;">
	<div class="container-fluid">
		<a class="navbar-brand " style="color: #2f3542;"
			href="<c:url value='/index' />"> 
			<i class="fa fa-gamepad" aria-hidden="true"></i>
			𝓝𝓮𝔂𝓶𝓪𝓻 
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<i class="fas fa-bars"></i>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ml-auto mb-2 mb-lg-0" >
				<c:choose>
					<c:when test="${not empty sessionScope.currentUser}">
						<li class="nav-item"><a class="nav-link nav-link-1"
							data-toggle="modal" data-target="#changePassModal"
							aria-current="page" href="" style="color: black">Welcome,${sessionScope.currentUser.username}</a>
						</li>
						<li class="nav-item"><a class="nav-link nav-link-1"
							href="favorites" style="color: black;">My Favourites</a></li>
						<li class="nav-item"><a class="nav-link nav-link-1"
							href="history"style="color: black;">History</a></li>
						<c:if test = "${sessionScope.currentUser.getIsAdmin() == true}">
							<li class="nav-item"><a style="color: black" class="nav-link nav-link-1"
								href="http://localhost:8080/ASM_Final/admin">Admin</a></li>
						</c:if>
						<li class="nav-item"><a class="nav-link nav-link-1"
							href="logout" style="color: black;">Log out</a></li>
					</c:when>
					<c:otherwise>
						<li class="nav-item"><a class="nav-link nav-link-1"
							href="forgotPass" style="color: black;">Forgot Password</a></li>
						<li class="nav-item"><a class="nav-link nav-link-1"
							href="login" style="color: black;">Login</a></li>
						<li class="nav-item"><a class="nav-link nav-link-1"
							href="register" style="color: black;">Register</a></li>
					</c:otherwise>
				</c:choose>
			</ul>
		</div>
	</div>
</nav>
<div class="tm-hero d-flex justify-content-center align-items-center"
	data-parallax="scroll"
	data-image-src="<c:url value='/Template/User/img/hinhnen.jpg'/>">
</div>
<!-- Modal -->
<div class="modal fade" id="changePassModal" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title text-center" id="exampleModalLabel">Change Password</h5>
				<button type="button" class="close btn btn-danger rounded-pill"
					data-dismiss="modal" aria-label="Close">X</button>
			</div>
			<div class="modal-body">
			<div class="form-control ">
				<input type="password" name="currentPass" id="currentPass" class="form-control rounded-pill" placeholder="Current Password?" required> 
			</div>
			<br> 
			<div class="form-control">
				<input type="password" name="newPass" id="newPass" class="form-control rounded-pill" placeholder="New Password?" required>
			</div>
			<h5 style="color:red" class="text-center" id="messageChangePass"></h5>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary rounded-pill" data-dismiss="modal">Close</button>
				<button type="button" class="btn btn-primary rounded-pill" id="changePassBtn">Save changes</button>
			</div>
		</div>
	</div>
</div>
 </div>