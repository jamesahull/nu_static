<cfset admin=true>
<cfinclude template="../page_header.cfm">

	
	<div class="container">
<div class="hero-unit">
	
	<h1>Here be dragons</h1>
	
</div>

<div class="row">
<div class="span9">

		<section id="eventHandlers">
		
		<p>
			<form action="index.cfm" method="post" class="form-control">
				
				<input type="text" name="j_username" id="loginId" class="form-control" placeholder="Login" /><br>
				<input type="password" name="j_password" id="pwd" class="form-control" placeholder="Password" /><br>
				
				<input type="submit" name="Submit" class="form-control btn" id="btnSubmit" value="Gerrem Onside"/>
				
			</form>
		</p>
		</section>

	
		
	</div>
<cfinclude template="admin_footer.cfm">
