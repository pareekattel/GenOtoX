component output="false" {
    variables.fw = '';
    variables.rules = [
        { whitelist = "^main.login, ^main.loginAction", securelist = "^main.*", roles = "admin", redirect = "main.login", noaccess = "main.noaccess" }
    ];

    public any function init(required any fw) {
        variables.fw = arguments.fw;
        return this;
    }

    public any function checkUser(currentAction, sessionStruct, rolekey) {
        var loggedin = isStruct(arguments.sessionStruct) and structKeyExists(arguments.sessionStruct, arguments.rolekey);
        var rulesLen = arrayLen(rules);
        var securearea = true;

        for (x = 1; x <= rulesLen; x++) {
            if (rules[x].roles == "" or isActionInPattern(arguments.currentAction, rules[x].whitelist)) continue;
            if (isActionInPattern(arguments.currentAction, rules[x].securelist)) {
                if (!loggedin) variables.fw.redirect(rules[x].redirect);
                if (loggedin and listFindNoCase(rules[x].roles, arguments.sessionStruct[arguments.rolekey]) == 0) variables.fw.redirect(rules[x].noaccess);
            }
        }
    }

    private boolean function isActionInPattern(currentAction, patternList) {
        for (var unsecured in listToArray(patternList)) {
            if (reFindNoCase(unsecured, currentAction) != 0) return true;
        }
        return false;
    }
}
