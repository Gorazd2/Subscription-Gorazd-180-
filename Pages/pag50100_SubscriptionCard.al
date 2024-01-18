page 50100 "CSD Subscription Card"
{
    Caption = 'Subscription Card';
    PageType = Card;
    SourceTable = "CSD Subscription";

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field(Code; rec.Code)
                {
                    ToolTip = 'Code';
                }
                field(Name; rec.Name)
                {
                    ToolTip = 'Name';
                }
                field("Item No"; rec."Item No")
                {
                    ToolTip = 'Item No';
                }
                field("Invoicing Schedule"; rec."Invoicing Schedule")
                {
                    ToolTip = 'Invoicing Schedule';
                }
                field("Invoicing Frequence"; rec."Invoicing Frequence")
                {
                    ToolTip = 'Invoicing Frequence';
                }
                field("Invoicing Price"; rec."Invoicing Price")
                {
                    ToolTip = 'Invoicing Pric';
                }
            }
        }
    }
}