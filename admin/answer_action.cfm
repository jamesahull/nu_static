
<cfset admin=true>
<cfinvoke component="controllers.Audible" method="answerquestion" argumentcollection="#form#"/>

<cfinclude template="../page_header.cfm">
	
	
	<div class="container">
<div class="hero-unit">
	
	<h1>Audible Questions</h1>
	
</div>

<div class="row">
<div class="span9">
	

		<section>
			<div class="page-header">
				<h2>
				You just answered:
				</h2>
			</div>
		 <cfoutput>#form.answer#</cfoutput>
		</section>

	
		
	</div>
<cfinclude template="admin_footer.cfm">
