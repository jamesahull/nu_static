<cfinvoke component="controllers.Admin" method="login" loginId="#form.loginId#" pwd="#form.pwd#" returnvariable="login"/>
<cfinclude template="page_header.cfm">

	
	<div class="container">
<div class="hero-unit">
	
	<h1>Admin, yo</h1>
	
</div>

<div class="row">
<div class="span9">

		<section id="eventHandlers">
<cfif login.loggedIn eq true>		
		<p>
			You is is.
		</p>
<cfelse>
	<p>
		Better luck next time bro
	</p>
</cfif>
		</section>

	
		
	</div>



	
<cfinclude template="page_footer.cfm">
