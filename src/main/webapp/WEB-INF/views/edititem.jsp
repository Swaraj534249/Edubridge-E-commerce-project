
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title>Item Detail</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.0.slim.min.js"
	integrity="sha256-u7e5khyithlIdTpu22PHhENmPcRdFiHRjhAuHcs05RI="
	crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>

	<script type="text/javascript">
		function updatesuccess() {
			alert("Data has been successfully Updated");
		}
	</script>

	<%@ include file="headerAdmin.jsp"%>
	&nbsp;&nbsp;

	

	<div class="row justify-content-center">
		<div class="col-4 ">
			<form:form method="post" action="editcurrentitem.html"
			onsubmit="updatesuccess()" commandName="Item">
				<div class="mb-3">
					<label for="itemname" class="form-label">Item Name </label> <input
						name="itemname" id="itemname" type="text" class="form-control" value="${item.itemname}">

				</div>
				<div class="mb-3">
					<label for="itemprice" class="form-label">Item Price</label> <input
						name="itemprice" id="itemprice" type="text" class="form-control"
						value="${item.itemprice}">
						
				</div>
				<div class="mb-3">
					
					 <input name="itemid" type="hidden" class="form-control" value="${item.itemid}" />
						
				</div>
				<!-- <div class="mb-3">

					<label class="form-label" for="itemdesc">Item Desc</label>
					<textarea class="form-control" name="itemdesc" id="itemdesc"
						rows="2"></textarea>
				</div> -->
				<button type="submit" class="btn btn-primary">Submit</button>
			</form:form>
		</div>
	</div>


</body>
</html>

