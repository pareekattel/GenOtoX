component extends=framework.one {
    this.name = "GenOtoX";
    this.applicationTimeout = createTimeSpan(0, 2, 0, 0); // 2 hours
    this.sessionManagement = true;
    this.sessionTimeout = createTimeSpan(0, 1, 0, 0); // 1 hour
    this.setClientCookies = true;

    /*public void function setupApplication() {
        // Configure the application
            variables.framework = {
            action = "action",
            usingSubsystems = false,
            defaultSubsystem = "",
            defaultSection = "main",
            defaultItem = "login",
            subsystemDelimiter = ":",
            home = "main.login",
            reload = "reload",
            password = "true",
            reloadApplicationOnEveryRequest = false,
            preserveKeyURLKey = "fw1pk",
            maxNumContextsPreserved = 10,
            baseURL = "useCGIScriptName",
            generateSES = false,
            SESOmitIndex = false,
            unhandledExtensions = "cfc",
            unhandledPaths = "/includes",
            UNHANDLEDPATHREGEX = "includes/*",
            SUBSYSTEMSFOLDER = "",
            CONTROLLERSFOLDER  = "controller",
            cacheFileExists = false,
            SUBSYSTEMS = { },
            diengine = "di1",
            DILOCATIONS = "model,controller",
            BASE = "",
            DICOMPONENT = "framework.aop",
            DICONFIG = { },
            PREFLIGHTOPTIONS  = false,
            SITEWIDELAYOUTSUBSYSTEM  = "main",     
            applicationKey = "GenOtoX",
            homeURL = "main.dashboard",
            loginURL = "main.login"
        };

        // Register your security service
        variables.framework.services.security = "model.security";
    }*/
   
}
