codeunit 50103 ABCarAvgAgeCalc
{   Access = Internal;
    EventSubscriberInstance = StaticAutomatic;
    TableNo = "Sales Line";
    
    


    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Release Sales Document", 'OnBeforeManualReleaseSalesDoc', '', true, true)]
    local procedure OnBeforeManualReleaseSalesDoc(var SalesHeader: Record "Sales Header")
    var SalesLine: Record "Sales Line"; 
    begin
       

    end;    
}


