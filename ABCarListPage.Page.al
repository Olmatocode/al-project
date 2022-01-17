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
                    ToolTip = 'Specifies car registration number';                                        
                }
                field("CarAge"; Rec. "CarAge") 
                {
                    Caption = 'Car Age';
                    ApplicationArea = All;
                    ToolTip = 'Specifies car age';
                }

                field("OwnerName"; Rec. "OwnerName")
                {
                    Caption = 'Owners Name';
                    ApplicationArea = All;
                    ToolTip = 'Specifies car owners name';
                }

                field("CarType"; Rec. "CarType")
                {
                    Caption = 'Car Type';
                    ApplicationArea = All;
                    ToolTip = 'Specifies car type';
                }
                field("Car user"; Rec. "CarUser")
                {   
                    Caption = 'Car User';
                    ApplicationArea = All;
                    ToolTip = 'Specifies car user';
                }
                field("Price Multiplier"; Rec. "PriceMultiplier")
                {
                    Caption = 'Price Multiplier';
                    ApplicationArea = All;
                    ToolTip = 'Specifies multiplier for a price';
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