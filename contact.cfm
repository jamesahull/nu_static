<cfif isDefined("form.submit")>
	<cfif len(form.email) gt 0>
		<cfset msg = "urgg spam yo">
	<cfelse>
		<cfif isValid("email", form.yourEmail)>
		<cfquery name="q">
				insert into northern_aliweb.contactrequests (email, message, datesubmitted) VALUES
					(<cfqueryparam value="#form.yourEmail#" cfsqltype="cf_sql_varchar">,
					<cfqueryparam value="#form.details#" cfsqltype="cf_sql_varchar">,
					<cfqueryparam value="#now()#" cfsqltype="cf_sql_date">)
			</cfquery>	
		<cfelse>
			<cfset msg = "Invalid Email address!" />		
		</cfif>
	</cfif>
</cfif>
<cfinclude template="page_header.cfm">
	
	<div class="container">
<div class="hero-unit">
	
	<h1>Contact The Northern Union</h1>
	
</div>

<div class="row">
<div class="span9">

		<section id="eventHandlers">
		<cfif not isDefined("form.submit")>
			
		
		<div class="page-header">
			<h2>
			Get in touch
			</h2>
		</div>

		<form action="contact.cfm" method="post" class="form-control">
				<label for="yourEmail">Email:</label>
				<input type="text" name="yourEmail" id="yourEmail" class="form-control" placeholder="Email" /><br>
				<label for="details">What would you like to ask?</label>
				<textarea name="details" id="details" class="form-control" rows=3 cols=200></textarea><br>
				<input type="submit" name="Submit" class="form-control btn" id="btnSubmit" value="Submit"/>
				<input name="email" id="hidey">
			</form>
		<cfelseif isdefined("msg")>
			<div class="page-header">
				<h2>
				<cfoutput>#msg#</cfoutput>
				</h2>
			</div>
		<cfelse>
		<div class="page-header">
			<h2>
			Thanks!
			</h2>
		</div>
		<p>We'll be in touch.</p>
		</cfif>	
		</section>

		
		
		
	</div>
<cfinclude template="page_footer.cfm">