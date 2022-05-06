component
{
    this.name="cf-api-test";
    this.appRoot=getDirectoryFromPath(getCurrentTemplatePath());

    this.restSettings={
        skipCfcWithError: false,
        autoregister: false
    };

    public boolean function onApplicationStart()
    {

        try {
            restInitApplication(this.appRoot & "rest", "v1", {isDefault=false});
        } catch (any e) {
            //Do Nothing. RestApp already initialized.
        }

        return true;
    }
}
