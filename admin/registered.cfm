
<cfset admin=true>


<cfinclude template="../page_header.cfm">
	<cfset useradmin = createObject("component", "controllers.Audible")>
	<cfif isDefined("url.action")>
		<cfif url.action eq 'remove'>
			<cfset removeMsg = useradmin.deleteEmail(url.id) & ' deleted.' />
		</cfif>
	</cfif>
	
	<cfset emails = useradmin.getAllEmails()>
	

	
	<div class="container">
<div class="hero-unit">
	
	<h1>Registered Emails</h1>
	
</div>

<div class="row">
<div class="span9">
	<cfoutput>
		<section id="eventHandlers">
			<cfif isdefined("removeMsg")>
				<div>
					<cfoutput>#removeMsg#</cfoutput>
				</div>
			</cfif>
			<table class="table">
				<tr>
					<th>Address</th>
					<th>Date added</th>
					<th>Remove?</th>

				</tr>
				<cfloop query="emails">
				
				<tr>
					<td>#emails.email#</td>
					<td>#dateformat(emails.create_date, "dd/mm/yy")#</td>
					<td><a href="registered.cfm?action=remove&id=#emails.id#"><b>X</b></td>
				</tr>
				</cfloop>
			</table>

		
		
		</section>

	</cfoutput>
		
	</div>
<cfinclude template="admin_footer.cfm">
