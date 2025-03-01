<cfset rc.pageTitle = "Login" />
<cfset rc.currentPageCSSFile = "login.css" />
<div class="container centered-login-form">
    <div class="row">
        <div class="col">
            <form class="login-form" action="index.cfm?action=main.loginAction" method="post">
                <h3 class="text-center">Login</h3>
                <div class="form-group">
                    <label for="username">Username</label>
                    <input type="text" class="form-control" id="username" name="username" required>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" id="password" name="password" placeholder="Password">
                </div>
                <button type="submit" class="btn btn-primary btn-block">Login</button>
            </form>
        </div>
    </div>
</div>

