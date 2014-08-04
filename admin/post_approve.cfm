
<cfset admin=true>


<cfinclude template="../page_header.cfm">
<cfset useradmin = createObject("component", "controllers.Audible")>

	
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
			Approve Post
			</h2>
		</div>
			<cfset userPosts = useradmin.postDetails(url.postid)>
			<form action="approve_action.cfm" method="post">
			<table class="table">
				<cfloop query="userPosts">
				<tr>
					<th>Post Date: #dateformat(userposts.create_date, "dd/mm/yy")#</th>
					<th>Status: #userposts.name#</th>
					<th>#useradmin.postButtonHTML(userposts.id)#</th>
				</tr>
				<tr>
					<td colspan="3">
						    <textarea 
				                name="content" 
				                id="content" 
				                rows="4" 
				                class="form-control span12" 
				            >#userposts.content#</textarea>
										
						
					</td>
				</tr>
				</cfloop>
			</table>

		<div class="form-group"><input class="btn btn-primary" type="submit" value="Approve story for inclusion &raquo;" name="submit"/></div>

		<input type="hidden" name="formAction" value="approve">
		<input type="hidden" name="postId" value="#url.postid#">
          </form>
		
		</section>

	</cfoutput>
		
	</div>
<cfinclude template="admin_footer.cfm">
