<html>

<head>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

</head>


<body>

<div class="jumbotron">
  <h1>LetsEncrypt Testing Page</h1>
	<p></p>
  	<p>This page is designed to help out with Troubleshooting of LetsEncrypt Configuration on IIS Servers </p>
  	<p>If this helped you in anyway feel free to donate to LetsEncrypt: <a href="https://letsencrypt.org/donate/">Donate Here</a> </p>
	<p> Server Variables Presented are in line with W3SCHOOLS Documentation. Available Here: <a href="https://www.w3schools.com/asp/coll_servervariables.asp"> Documentation </a> </p>
</div>


<div class="row">

<div class="col-md-4"> <div class="well well-lg"><h3>How You Called This Server </h3>
		<p>
			<b>The server's domain name:</b>
			<%Response.Write(Request.ServerVariables("server_name"))%>
		</p>
		<p>
			<b>The server's port:</b>
			<%Response.Write(Request.ServerVariables("server_port"))%>
		</p>
		<p>
			<b>The method used to call the page:</b>
			<%Response.Write(Request.ServerVariables("request_method"))%>
		</p>
		<p>
			<b>Your IP address is:</b>
			<%Response.Write(Request.ServerVariables("remote_addr"))%>
		</p>
	</div>
</div>
  

<div class="col-md-4"> <div class="well well-lg"><h3>Certificate Related Info</h3>
		<p></p>
		<p>
		<b>The server's CERT_SERVER_ISSUER:</b>
		<%Response.Write(Request.ServerVariables("CERT_SERVER_ISSUER"))%>
		</p>
		<p>
		<b>The server's CERT_KEYSIZE:</b>
		<%Response.Write(Request.ServerVariables("CERT_KEYSIZE"))%>
		</p>

		<p>
		<b>The server's CERT_SERVER_SUBJECT:</b>
		<%Response.Write(Request.ServerVariables("CERT_SERVER_SUBJECT"))%>
		</p>

	</div>
</div>


<div class="col-md-4"> <div class="well well-lg"><h3>Session Related Info</h3>
		<p></p>
		<p>
		<b>The server's SERVER_PORT_SECURE </b>
		<%Response.Write(Request.ServerVariables("SERVER_PORT_SECURE"))%>
		</p>
	</div>
</div>

</div>

</body>
</html> 