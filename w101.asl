state("WizardGraphicalClient"){
    bool isLoading : 0x02EAE0E4
}

startup {
    settings.Add("removeLoads", false, "Enable Load Time Removal");
}

isLoading
{   
    if (settings["removeLoads"]){
        return current.isLoading;
    }
    return false;
}