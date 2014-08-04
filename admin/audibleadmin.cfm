
<cfset admin=true>
<cfinclude template="../page_header.cfm">

	<cfset useradmin = createObject("component", "controllers.Audible")>
	<cfset dashboard = useradmin.dashboard()>


	<div class="container">
<div class="hero-unit">
	
	<h1>Audible Thoughts Admin</h1>
	
</div>

<div class="row">
<div class="span9">
	<cfoutput>
		<section id="eventHandlers">
		
		<table class="table">
			<tr>
				<th>Users</th>
				<th>Posts</th>
				<th>Unsubmitted Posts</th>
				<th>Posts to approve</th>
				<th>Approved posts</th>
				<th>Questions waiting</th>
				<th>Registered Emails</th>
			</tr>
			<tr>
				<td><a href="users.cfm" class="btn btn-primary btn-xs">#dashboard.users#</a></td>
				<td><a href="post.cfm" class="btn btn-primary btn-xs">#dashboard.posts#</a></td>
				<td><a href="post.cfm?type=E" class="btn btn-primary btn-xs">#dashboard.saved#</a></td>
				<td><a href="post.cfm?type=R" class="btn btn-primary btn-xs">#dashboard.submitted#</a></td>
				<td><a href="post.cfm?type=Y" class="btn btn-primary btn-xs">#dashboard.approved#</a></td>
				<td><a href="question.cfm" class="btn btn-primary btn-xs">#dashboard.questions#</a></td>
				<td><a href="registered.cfm" class="btn btn-primary btn-xs">#dashboard.emails#</a></td>
			</tr>

		</table>

		</section>

	</cfoutput>
		
	</div>
<cfinclude template="admin_footer.cfm">
