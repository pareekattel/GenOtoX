component extends="framework.one.Application" {
    this.name = "GenOtoX";
    this.applicationTimeout = createTimeSpan(0, 2, 0, 0); // 2 hours
    this.sessionManagement = true;
    this.sessionTimeout = createTimeSpan(0, 1, 0, 0); // 1 hour
    this.setClientCookies = true;

    public void function setupApplication() {
        // Configure the application
        variables.framework = {
            defaultSection = "main",
            defaultItem = "login",
            applicationKey = "GenOtoX",
            pageTitle = "Generation Old to X",
            homeURL = "main.dashboard",
            loginURL = "main.login"
        };

        // Register your security service
        variables.framework.services.security = "model.security";
    }

    public boolean function onRequestStart(string targetPage) {
        super.onRequestStart(arguments.targetPage);

        // Add any custom code for request start
        return true;
    }

    public void function onApplicationStart() {
        super.onApplicationStart();

        // Any additional application setup code
    }
}
