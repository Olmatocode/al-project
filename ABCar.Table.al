table 50102 "ABCar"
{
    Caption = 'Car';
    DataClassification = CustomerContent;
    fields
    {

        field(1; "Car Nr"; Code[6])
        {
            Caption = 'Car Nr';
            DataClassification = CustomerContent;
            NotBlank = true;
            trigger OnValidate()
            var
                Input: Text;
            begin
                Input := "Car Nr";
                Input := Input.ToUpper();
            end;

        }
        field(2; "CarAge"; Integer)
        {
            Caption = 'Car Age';
            DataClassification = CustomerContent;
            MinValue = 0;
            MaxValue = 30;
            NotBlank = true;
        }
        field(3; "OwnerName"; Text[30])
        {
            Caption = 'Owners Name';
            DataClassification = CustomerContent;
            NotBlank = true;
        }

        field(4; "CarType"; Enum"ABCarType")
        {
            Caption = 'Car type';
            NotBlank = true;
        }
        field(5; "CarUser"; Text[40])
        {   
            Caption = 'Car User';
            TableRelation = "Employee"."No.";
            NotBlank = true;
            ValidateTableRelation = true;
        }
        field(6; "PriceMultiplier"; Decimal)
        {
            Caption = 'Price Multiplier';
            NotBlank = true;
            DataClassification = CustomerContent;
            MinValue = 0.0;
            MaxValue = 2.0;
        }
        field(7; "Registration date"; Date)
        {
            DataClassification = CustomerContent;
            
        }
    }
    keys
    {
        key(PK; "Car Nr")
        {
            Clustered = true;
        }
        key(emp; "CarUser")
        {
            Unique = true;
        }
    }
}