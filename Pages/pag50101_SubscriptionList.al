page 50101 "CSD Subscription List"
{
    Caption = 'Subscription List';
    PageType = List;
    SourceTable = "CSD Subscription";
    Editable = false;
    CardPageId = "CSD Subscription Card";
    ApplicationArea = all;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(Code; rec.Code)
                {
                    ApplicationArea = All;
                    ToolTip = 'Code';
                }
                field(Name; rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Name';
                }
                field("Item No"; rec."Item No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Item No';
                }
                field("Invoicing Schedule"; rec."Invoicing Schedule")
                {
                    ApplicationArea = All;
                    ToolTip = 'Invoicing Schedule';
                }
                field("Invoicing Frequence"; rec."Invoicing Frequence")
                {
                    ApplicationArea = All;
                    ToolTip = 'Invoicing Frequence';
                }
                field("Invoicing Price"; rec."Invoicing Price")
                {
                    ApplicationArea = All;
                    ToolTip = 'Invoicing Price';
                }

            }
        }
    }
}