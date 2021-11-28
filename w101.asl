state("WizardGraphicalClient"){
    sbyte loading : 0x02F143D8, 0x258, 0x100, 0x10, 0x10, 0x8;
}

startup {
    settings.Add("removeLoads", false, "Enable Load Time Removal");
}

isLoading
{   
    if (settings["removeLoads"] && current.loading == 1){
        return true;
    }
	else{
		return false;
	}
}
