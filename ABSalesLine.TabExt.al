tableextension 50101 "" extends "Sales Line"
{
    fields
    {
        field(50100; "Car Nr"; Code[6])
        {
            Caption = '';
            TableRelation = ABCar."Car Nr";
            ValidateTableRelation = true;
            NotBlank = true;
            DataClassification = CustomerContent;
        }
        modify("Unit Price")
        {   
            TableRelation = ABCar."PriceMultiplier";

            trigger OnAfterValidate()

            var 
            priceMultiplier, unitPriceMultiplied : Decimal;
            carTable: Record ABCar;
            begin
                    priceMultiplier:= carTable.PriceMultiplier;
                    unitPriceMultiplied:= "Unit Price" * priceMultiplier;
                    "Unit Price":= unitPriceMultiplied;
            end; 
        }
    }
}
