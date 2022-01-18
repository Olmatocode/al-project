page 50123 OwnerImage
{
    Caption = 'OwnerImage';
    DeleteAllowed = false;
    InsertAllowed = false;
    LinksAllowed = false;
    PageType = CardPart;
    SourceTable = ABCar;
    layout
    {
        area(content)
        {
            group(Picture)
            {
                field("Car Nr"; Rec."Car Nr")
                {
                    ApplicationArea = Basic;
                    ShowCaption = false;
                    ToolTip = 'Specifies the picture that has been inserted for the item.';
                }

            }
        }
    }
    procedure GetPicture()
    var
        Item: Record Item;
        Client: HttpClient;
        Response: HttpResponseMessage;
        InStr: InStream;
        PictureURL: Text;
    
    begin
        Client.Get(PictureURL, Response);
        Response.Content().ReadAs(InStr);
        Item.Get();
        Item.Picture.ImportStream(InStr, 'Picture From URL');
        Item.Modify();
    end;
}
