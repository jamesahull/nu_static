<cfcomponent name='admin'>
	<cffunction name="login">
		<cfargument name="loginId">
		<cfargument name="pwd">
		<cfset login = structNew()/>
		<cfif loginId eq 'james'>
			
			<cfset login.loggedIn = true >
		<cfelse>
			<cfset login.loggedIn = false > 
		</cfif>

		<cfreturn login>
	</cffunction>

	<cffunction name="session">
		
	</cffunction>

	
</cfcomponent>