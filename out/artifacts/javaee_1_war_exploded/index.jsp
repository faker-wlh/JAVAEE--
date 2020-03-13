<%@ page language="java" contentType="text/html; charset=GB18030" pageEncoding="GB18030"%>

<!DOCTYPE html>
<html lang="en" >

<head>
<meta charset="UTF-8">
<title>��¼ע���</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!--ͼ���-->
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css'>

<!--��Ӧʽ���-->
<link rel='stylesheet' href='css/bootstrap.min.css'>

<!--��Ҫ��ʽ-->
<link rel="stylesheet" href="css/style.css">


</head>

<body>
  
<div class="container">

	<div class="card-wrap">
	
		<div class="card border-0 shadow card--welcome is-show" id="welcome">
			<div class="card-body">
				<h2 class="card-title">��ӭ����</h2>
				<p>��ӭ�����¼ҳ��</p>
				<div class="btn-wrap"><a class="btn btn-lg btn-register js-btn" data-target="register">��ʦ</a><a class="btn btn-lg btn-login js-btn" data-target="login">ѧ��</a></div>
			</div>
		</div>
		
		<div class="card border-0 shadow card--register" id="register">
			<div class="card-body">
				<h2 class="card-title">��ʦ��¼</h2>
				<form  action="LoginTServlet" method="post" >
					<div class="form-group">
						<input class="form-control" type="text" placeholder="����" required="required" name="tusername"/>
					</div>
					<div class="form-group">
						<input class="form-control" type="password" placeholder="����" required="required" name="tpassword"/>
					</div>
					<button class="btn btn-lg" onclick="logint()">��¼</button>
				</form>
			</div>
			<button class="btn btn-back js-btn" data-target="welcome"><i class="fas fa-angle-left"></i></button>
		</div>
		
		<div class="card border-0 shadow card--login" id="login">
			<div class="card-body">
				<h2 class="card-title">ѧ����¼</h2>

				<form  action="LoginSServlet" method="post" >
					<div class="form-group">
						<input class="form-control" type="email" placeholder="����" required="required"/>
					</div>
					<div class="form-group">
						<input class="form-control" type="password" placeholder="����" required="required"/>
					</div>
					<button class="btn btn-lg" onclick="logins()">��¼</button>
				</form>
			</div>
			<button class="btn btn-back js-btn" data-target="welcome"><i class="fas fa-angle-left"></i></button>
		</div>
		
	</div>
	
</div>
  
<script src="js/index.js"></script>
<script>
	function logint() {
		var value="<%=request.getParameter("logintresult")%>";
		alert('��½�ɹ���');

		if(value=="yes"){
			window.location.href="teacher.jsp";
		}else{
			window.location.href="teacher.jsp";
		}

	}
	function logins() {
		var value="<%=request.getParameter("loginsresult")%>";
		alert('��½�ɹ���');
		window.location.href="student.jsp";
		if(value=="yes"){
			window.location.href="student.jsp";
		}else{
			window.location.href="student.jsp";
		}

	}
</script>
	
</body>
</html>