<cfcomponent>
	<cfset This.name = "NorthernUnionStatic">

<cfset this.datasource = "northern_aliweb">

<cffunction name="onmissingtemplate">
	<cflocation url="404.cfm">
</cffunction>

<cffunction name="onrequeststart">
	
</cffunction>
</cfcomponent>