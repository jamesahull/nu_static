
<cfset admin=true>
<cfinclude template="../page_header.cfm">

	
	<div class="container">
<div class="hero-unit">
	
	<h1>Here be dragons</h1>
	
</div>

<div class="row">
<div class="span9">
	<cfoutput>
		<section id="eventHandlers">
		
		<p>
		

			Hi #GetAuthUser()#

		
		</p>
		
		</section>

	</cfoutput>
		
	</div>
<cfinclude template="admin_footer.cfm">
