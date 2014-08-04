
<cfset admin=true>


<cfinclude template="../page_header.cfm">
	<cfset useradmin = createObject("component", "controllers.Audible")>
	<cfset unansweredQuestions = useradmin.questions(url.id)>

	
	<div class="container">
<div class="hero-unit">
	
	<h1>Audible Questions</h1>
	
</div>

<div class="row">
<div class="span9">
	<cfoutput>
		<section id="questions">
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
					

				</tr>
				<tr>
					<td colspan="2">#unansweredQuestions.question#</td>
				</tr>
				</cfloop>
			</table>

		
		
		</section>

		<section>
			<div class="page-header">
				<h2>
				Your answer:
				</h2>
			</div>
		 <form action="answer_action.cfm" method="post">
            
              <label for="answer">Answer to user's question</label>
              <textarea 
                name="answer" 
                
                id="answer" 
                rows="4" 
                class="form-control span9"   
                placeholder="Enter your answer here"
              ></textarea>
            
            <br>
 

            <div class="form-group"><input class="btn btn-primary" type="submit" value="Send answer &raquo;" name="submit"/></div>
            <input type="hidden" name="id" value="#url.id#">
          </form>
		</section>

	</cfoutput>
		
	</div>
<cfinclude template="admin_footer.cfm">
