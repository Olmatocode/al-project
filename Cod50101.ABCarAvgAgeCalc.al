codeunit 50101 ABCarAvgAgeCalc
{
    EventSubscriberInstance = StaticAutomatic;
    TableNo = ABCar;
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Release Sales Document", 'OnBeforeReleaseSalesDoc', '', true, true)]
    local procedure MyProcedure()
    begin
        
    end;
    trigger OnRun()
    begin
    
    end;
    
}
