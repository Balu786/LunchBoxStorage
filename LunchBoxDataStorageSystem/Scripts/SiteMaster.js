function enableDisableMenu(userRole) {
    if (userRole == 1) {
        $("#menuHome").hide();
        $("#menuPatent").hide();
        $("#menuOrders").hide();
        $("#menuTherapist").hide();
        $("#menuAgents").hide();
    }
    else if (userRole == 2) {
        /*$("#menuHome").hide();
        $("#menuPatent").hide();
        $("#menuOrders").hide();
        $("#menuTherapist").hide();
        $("#menuAgents").hide();*/
        //menuHome.Style["display"] = "inline";
    }
    else if (userRole == 3) {
        /*$("#menuHome").hide();
        $("#menuPatent").hide();
        $("#menuOrders").hide();
        $("#menuTherapist").hide();
        $("#menuAgents").hide();
        menuHome.Style["display"] = "none";*/
    }
}

