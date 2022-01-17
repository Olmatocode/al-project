page 50122 CarCard
{
    Caption = 'CarCard';
    PageType = Card;
    UsageCategory = Documents;
    SourceTable = ABCar;
    
    layout
    {
        area(content)
        {
            group(General)
            {
                field("Car Nr"; Rec."Car Nr")
                {
                    ToolTip = 'Specifies car registration number';
                    ApplicationArea = All;
                }
                field(CarAge; Rec.CarAge)
                {
                    ToolTip = 'Specifies car age';
                    ApplicationArea = All;
                }
                field(CarType; Rec.CarType)
                {
                    ToolTip = 'Specifies car type';
                    ApplicationArea = All;
                }
                field(CarUser; Rec.CarUser)
                {
                    ToolTip = 'Specifies car user';
                    ApplicationArea = All;
                }
                field(OwnerName; Rec.OwnerName)
                {
                    ToolTip = 'Specifies car owners name';
                    ApplicationArea = All;
                }
                field(PriceMultiplier; Rec.PriceMultiplier)
                {
                    ToolTip = 'Specifies multiplier for a price';
                    ApplicationArea = All;
                }
            }
        }
    }
}
