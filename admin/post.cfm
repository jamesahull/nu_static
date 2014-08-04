
<cfset admin=true>

<cfif not isDefined("url.id")>
	<cfset url.id = 0 >
	
</cfif>
<cfif isdefined("url.postid")>
	<cfset title = "Post">
<cfelse>
	<cfset title = "Posts">
</cfif>


<cfinclude template="../page_header.cfm">
<cfset useradmin = createObject("component", "controllers.Audible")>

<cfif isDefined("url.type")>
	<cfset postDetails = useradmin.postDetails(url.id,0, url.type)>	
	<cfset postType = useradmin.getPostType(url.type)>
<cfelse>
	<cfset postDetails = useradmin.postDetails(url.id)>	
	<cfset postType = ''>
</cfif>
	

	
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
			#postType# #title#
			</h2>
		</div>
			<cfset userPosts = useradmin.postDetails(url.id)>
			<table class="table">
				<cfloop query="userPosts">
				<tr>
					<th>User: #userposts.username#</th>
					<th>Post Date: #dateformat(userposts.create_date, "dd/mm/yy")#</th>
					<th>Status: #userposts.name#</th>
					<th>#useradmin.postButtonHTML(userposts.id)#</th>
				</tr>
				<tr>
					<td colspan="4">
						<cfif not isdefined("url.postid")>
							#left(userposts.content,350)# ...
							<cfelse>
								#userposts.content#
						</cfif>
						
					</td>
				</tr>
				</cfloop>
			</table>

		
		
		</section>

	</cfoutput>
		
	</div>
<cfinclude template="admin_footer.cfm">
