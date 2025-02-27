component {
    public void function loginAction() {
        var username = form.username;
        var password = form.password;

        // Example user validation (replace with your own logic)
        if (username == "admin" && password == "password") {
            session.user = { username = username, role = "admin" };
            fw.redirect("main.dashboard");
        } else {
            fw.redirect("main.login?error=invalid");
        }
    }

    public void function dashboard() {
        // Dashboard logic here
    }
}
