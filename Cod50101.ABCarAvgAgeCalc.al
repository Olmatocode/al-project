codeunit 50103 ABCarAvgAgeCalc
{
    EventSubscriberInstance = StaticAutomatic;
    TableNo = ABCar;
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Release Sales Document", 'OnBeforeManualReleaseSalesDoc', '', true, true)]
    local procedure OnBeforeManualReleaseSalesDoc(var SalesHeader: Record "Sales Header")
    begin
        

    end;

    trigger OnRun()
    begin
    
    end;
    
}

codeunit 50121 ABAdda
{
    EventSubscriberInstance = StaticAutomatic;
    TableNo = "Sales Line";
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Release Sales Document", 'OnAfterReleaseATOs', '', true, true)]
    local procedure MyProcedure()
    begin
        
    end;
}