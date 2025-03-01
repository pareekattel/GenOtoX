component {

    public any function init(fw) {
        variables.fw = fw;
        return this;
    }
    
    function default() {
        applicationStop();
        writeOutput("Application has been restarted.");
        abort;
    }
}
