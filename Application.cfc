<cfcomponent>
	<cfset This.name = "NorthernUnionStatic">

<cfset this.datasource = "northern_core">

<cffunction name="onmissingtemplate">
	<cflocation url="404.cfm">
</cffunction>

<cffunction name="onrequeststart">
	
</cffunction>
</cfcomponent>