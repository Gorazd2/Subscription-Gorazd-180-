page 50103 "CSD Subscription Factbox"
{
    Caption = 'Subscription Factbox';
    PageType = Listpart;
    SourceTable = "CSD Customer Subscription";
    Editable = false;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("Subscription Code"; rec."Subscription Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Customer No';
                }
                field("Item No"; rec."Item No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Item No';
                }
                field("Cancelled Date"; rec."Cancelled Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Cancelled Date';
                }
            }
        }
    }
}