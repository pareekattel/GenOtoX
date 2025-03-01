component {

    public any function init(fw) {
        variables.fw = fw;
        return this;
    }

    public void function loginaction() {
       var username = form.username;
        var password = form.password;
        // Example user validation (replace with your own logic)
        if (username == "admin" && password == "password") {
            session.user = { username = username, role = "admin" };
            variables.fw.redirect(action="main.dashboard");
        } else {
            variables.fw.redirect(action="main.login");
        }
    }

    public void function dashboard() {
        // Dashboard logic here
        rc.pageTitle = "Dashboard";
    }

    public void function login() {
        rc.pageTitle = "Login";
    }

    public void function signup() {
        rc.pageTitle = "Sign Up";
    }
}
