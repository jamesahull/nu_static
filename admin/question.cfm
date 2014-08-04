
<cfset admin=true>

<cfif not isDefined("url.id")>
	<cfset url.id = 0 >
</cfif>

<cfinclude template="../page_header.cfm">
	<cfset useradmin = createObject("component", "controllers.Audible")>
	<cfset unansweredQuestions = useradmin.questions(url.id, 'N')>
	<cfset answeredQuestions = useradmin.questions(url.id, 'Y')>

	
	<div class="container">
<div class="hero-unit">
	
	<h1>Audible Questions</h1>
	
</div>

<div class="row">
<div class="span9">
	<cfoutput>
		<section id="eventHandlers">
			<div class="page-header">
				<h2>
				Questions awaiting answers
				</h2>
			</div>
			
			<table class="table">
				<cfloop query="unansweredQuestions">
				<tr>
					<th>Posted By: #unansweredQuestions.username#</th>
					<th>Post Date: #dateformat(unansweredQuestions.create_date, "dd/mm/yy")#</th>
					<th><a href="answer_question.cfm?id=#unansweredQuestions.id#">Answer question</a></th>

				</tr>
				<tr>
					<td colspan="3">#unansweredQuestions.question#</td>
				</tr>
				</cfloop>
			</table>

		
		
		</section>

		<section>
			<div class="page-header">
				<h2>
				Questions answered
				</h2>
			</div>

			<table class="table">
				<cfloop query="answeredQuestions">
				<tr>
					<th>Posted By: #answeredQuestions.username#</th>
					<th>Post Date: #dateformat(answeredQuestions.create_date, "dd/mm/yy")#</th>
					

				</tr>
				<tr>
					<td colspan="2">#answeredQuestions.question#</td>
				</tr>
				<tr>
					<td colspan="2">Your answer: <i>#answeredQuestions.answer#</i></td>
				</tr>
				</cfloop>
			</table>
		</section>

	</cfoutput>
		
	</div>
<cfinclude template="admin_footer.cfm">
