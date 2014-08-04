
<cfset admin=true>


<cfinclude template="../page_header.cfm">
<cfinvoke component="controllers.Audible" method="editpost" argumentcollection="#form#" />
	
<div class="container">
<div class="hero-unit">
	
	<h1>Audible Posts</h1>
	
</div>

<div class="row">
<div class="span9">
	<cfoutput>
		<section id="eventHandlers">
		<div class="page-header">
			<h2>
			Post Approved
			</h2>
		</div>
		
		</section>

	</cfoutput>
		
	</div>
<cfinclude template="../lastfooter.cfm">
