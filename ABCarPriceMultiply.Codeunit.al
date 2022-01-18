codeunit 50103 ABCarPriceMultiply
{   Access = Internal;
    EventSubscriberInstance = StaticAutomatic;
    TableNo = "Sales Line";
    
    


    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Release Sales Document", 'OnBeforeManualReleaseSalesDoc', '', true, true)]
    local procedure BeforeManualReleaseSalesDoc(var SalesHeader: Record "Sales Header"; PreviewMode: Boolean)
    var 
    SalesLine: Record "Sales Line"; 
    begin

            
    end;    
}


