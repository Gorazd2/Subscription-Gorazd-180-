page 50102 "CSD Customer Subscriptions"
{
    Caption = 'Customer Subscriptions';
    PageType = List;
    SourceTable = "CSD Customer Subscription";
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Customer No"; rec."Customer No")
                {
                    Enabled = ShowCustomerField;
                    ToolTip = 'Customer No';
                }
                field("Subscription Code"; rec."Subscription Code")
                {
                    ToolTip = 'Subscription Code';
                }
                field("Item No"; rec."Item No")
                {
                    ToolTip = 'Item No';
                }
                field("Start Date"; rec."Start Date")
                {
                    ToolTip = 'Start Date';
                }
                field("Last Invoice Date"; rec."Last Invoice Date")
                {
                    ToolTip = 'Last Invoice Date';
                }
                field("Next Invoicing Date"; rec."Next Invoicing Date")
                {
                    ToolTip = 'Next Invoicing Date';
                }
                field("Cancelled Date"; rec."Cancelled Date")
                {
                    ToolTip = 'Cancelled Date';
                }
                field(Active; rec.Active)
                {
                    ToolTip = 'Active';
                }
                field("Invoicing Price"; rec."Invoicing Price")
                {
                    ToolTip = 'Invoicing Price';
                }
            }
        }
    }
    trigger OnOpenPage()
    var
        CaptionLbl: Label 'Customer Subscriptions for %1;', Comment = '%1 = Customer Number';
    begin
        ShowCustomerField := Rec.GetFilter("Customer No") = '';
        if not ShowCustomerField then CurrPage.Caption := StrSubstNo(CaptionLbl, Rec."Customer No");
    end;

    var
        ShowCustomerField: Boolean;
}