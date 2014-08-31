
<cfset admin=true>


<cfinclude template="../page_header.cfm">
<cfset useradmin = createObject("component", "controllers.Audible")>
<cfset useradmin.deletePost(url.postId) />
	
<div class="container">
<div class="hero-unit">
	
	<h1>Audible Posts</h1>
	
</div>

<div class="row">
<div class="span9">
	
		<section id="eventHandlers">
		<div class="page-header">
			<h2>
			Post Deleted
			</h2>
		</div>
		
		<a href="audibleadmin.cfm" class="btn btn-primary btn-xs">Admin Homepage</a> 
		<a href="post.cfm" class="btn btn-primary btn-xs">All Posts</a> 
		<a href="post.cfm?type=R" class="btn btn-primary btn-xs">Submitted Posts</a> 
		</section>

	
		
	</div>
<cfinclude template="admin_footer.cfm">
