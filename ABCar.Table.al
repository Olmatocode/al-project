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

        field(4; "CarType"; Option)
        {
            Caption = 'Owners Name';
            OptionMembers = "Regular car","Truck 5t","Truck 7t";
            NotBlank = true;
        }
        field(5; "Car User"; Text[40])
        {   
            Caption = 'Car User';
            TableRelation = "Employee"."No.";
            NotBlank = true;
            ValidateTableRelation = true;
            trigger OnValidate()
            var carUser: Text;
            begin
                carUser := "Car User";
                if "Car User".Contains(carUser) then
                Error('One user can have only one car');
            end;
        }
    }
    keys
    {
        key(PK; "Car Nr")
        {
            Clustered = true;
        }
        key(emp; "Car User")
        {
            Unique = true;
        }
    }
}