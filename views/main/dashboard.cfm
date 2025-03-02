<cfif structKeyExists(session, "userMessage") AND session.userMessage NEQ ""><h6 style="color:#01c1f3;text-align:center;"><cfoutput>#session.userMessage#</cfoutput></h6>
    <cfset structDelete(session, "userMessage") />
</cfif>