<cfset rc.pageTitle = "Login" />
<cfset rc.currentPageCSSFile = "login.css" />
<div class="container centered-login-form">
    <div class="row">
        <div class="col">
            <form class="login-form" action="index.cfm?action=main.loginAction" method="post">
                <cfif structKeyExists(session, "userMessage") AND session.userMessage NEQ ""><h6 style="color:#000;text-align:center;"><cfoutput>#session.userMessage#</cfoutput></h6>
                    <cfset structDelete(session, "userMessage") />
                </cfif>
                <h3 class="text-center">Login</h3>
                <div class="form-group">
                    <label for="username">Username</label>
                    <input type="text" class="form-control" id="username" name="username" required>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" id="password" name="password" placeholder="Password">
                </div>
                <button type="submit" class="btn btn-primary btn-block">Login</button><br>
                <h6>Don't have account?&nbsp;&nbsp;<a href="index.cfm?action=main.signup" class="btn btn-secondary custom-btn">Sign Up</a></h6>
            </form>
        </div>
    </div>
</div>