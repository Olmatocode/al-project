page 50103 "ABCar List Page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = ABCar;
    Caption = 'AB Car List';
    Editable = true;
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Car Nr"; Rec. "Car Nr")
                {
                    Caption = 'Car Nr';
                    ApplicationArea = All;
                    ToolTip = 'Car Nr';
                    
                                        
                }
                field("CarAge"; Rec. "CarAge") 
                {
                    Caption = 'Car Age';
                    ApplicationArea = All;
                    ToolTip = 'Car Age';
                }

                field("OwnerName"; Rec. "OwnerName")
                {
                    Caption = 'Owners Name';
                    ApplicationArea = All;
                    ToolTip = 'Owners Name';
                }

                field("CarType"; Rec. "CarType")
                {
                    Caption = 'Car Type';
                    ApplicationArea = All;
                    ToolTip = 'Car Type';
                }
                
                field("Car user"; Rec. "Car User")
                {   
                    Caption = 'Car User';
                    ApplicationArea = All;
                    ToolTip = 'Car User';
                }
            }
        }
        area(Factboxes)
        {
            
        }
    }
    actions
    {
        Area(Processing)
        {
            action("Show average age of all cars")
            {
                Promoted = true;
                PromotedCategory = Process;
                ApplicationArea = All;
                trigger OnAction()
                
                var 
                carlist: Record ABCar;
                AvgAge: Decimal;
                begin
                    if (carlist.Count() <= 0) 
                    then begin 

                    Message('No cars added');

                    end else begin
                     
                     carlist.CalcSums(CarAge);
                     AvgAge:= carlist.CarAge / carlist.Count();
                     
                     Message('Average car age is %1', Round(AvgAge, 0.1, '='));

                    end;

                     

                end;
            }
        }
    }
    
}