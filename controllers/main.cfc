component {

    public any function init(fw) {
        variables.fw = fw;
        return this;
    }

    public void function loginaction() {
        var username = form.username;
        var password = form.password;        
        // Example user validation (replace with your own logic)
        if (validateLogin(username, password)) {
            session.user = { username = username, role = "admin" };
            session.userMessage = "Welcome #form.username#";
            variables.fw.redirect(action="main.dashboard");
        } else {
            session.userMessage = "User Name does not exist. Please try again.";
            variables.fw.redirect(action="main.login");
        }
    }

    public void function signupAction() {
        var username = form.username;
        var password = form.password;        
        if(NOT checkIfUserExists(username, password)) {
            //addUser;
            session.userMessage = "User Created Successfully.Please Login";
            variables.fw.redirect(action="main.login");
        } else {
            session.userMessage = "User Name already exists. Please try other username.";
            variables.fw.redirect(action="main.signup");
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

    public function checkIfUserExists(username, password) {
        var usernameList = "admin,paul,john,ashish,daddy,pappa";
        if(listFind(usernameList, username) GT 0) {
            return true;
        }
        return false;
    }

    public function validateLogin(username, password) {
        if (username == "admin" && password == "password") {
            return true;
        } else {
            return false;
        }
    }
}
