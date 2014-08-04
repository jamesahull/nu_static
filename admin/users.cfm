
<cfset admin=true>
<cfif not isDefined("url.id")>
	<cfset url.id = 0 >
</cfif>
<cfinclude template="../page_header.cfm">
	<cfset useradmin = createObject("component", "controllers.Audible")>
	<cfset userdetails = useradmin.userdetails(url.id)>

	
	<div class="container">
<div class="hero-unit">
	
	<h1>Audible Users</h1>
	
</div>

<div class="row">
<div class="span9">
	<cfoutput>
		<section id="eventHandlers">
		
		<table class="table">
			<tr>
				<th>User name</th>
				<th>Sector</th>
				<th>Age</th>
				<th>Sex</th>
				<th>Posts</th>
				<th>Date joined</th>
				<th>Last login</th>
				
				
			</tr>				
		
			<cfloop query="userdetails">
				<cfset postcount = useradmin.countPosts(userdetails.id)/>
				<tr>
					<td><a href="users.cfm?id=#id#">#userdetails.username#</a></td>
					<td>#userdetails.sector#</td>
					<td>#userdetails.age#</td>
					<td>#userdetails.sex#</td>
					<td>#postcount#</td>
					<td>#dateformat(userdetails.create_date, "dd/mm/yy")#</td>
					<td></td>
				</tr>
			</cfloop>
			</table>
		<cfif url.id neq 0>
			<cfset extraDetails = useradmin.extraDetails(url.id)>
			<cfset userPosts = useradmin.PostDetails(url.id)>
			<h2>More information</h2>
			<p>Mental Health: #extradetails.mentalhealth#</p>
			<p>Ethnic background: #extradetails.ethnic# #extradetails.ethnicgroup#</p>
			<table class="table">
				<cfloop query="userPosts">
				<tr>
					<th>Post Date: #dateformat(userposts.create_date, "dd/mm/yy")#</th>
					<th>Status: #userposts.name#</th>
				</tr>
				<tr>
					<td colspan="2">#userposts.content#</td>
				</tr>
				</cfloop>
			</table>

		</cfif>
		
		</section>

	</cfoutput>
		
	</div>
<cfinclude template="admin_footer.cfm">
