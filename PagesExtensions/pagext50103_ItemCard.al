pageextension 50103 "CSD ItemCardExt" extends "Item Card"
{
    layout
    {
        // Add changes to page layout here 
        addlast(Item)
        {
            field("Subscription Item"; Rec."CSD Subscription Item")
            {
                ApplicationArea = All;
                ToolTip = 'CSD Subscription Item';
            }
        }
        addfirst(FactBoxes)
        {
            part("Subscription Factbox"; "CSD Subscription Factbox")
            {
                SubPageLink = "Item No" = field("No.");
                ApplicationArea = All;
            }
        }
    }
    actions
    {
        // Add changes to page actions here 
        addfirst(Processing)
        {
            action("Subscriptions")
            {
                ApplicationArea = All;
                Caption = 'Subscriptions';
                RunObject = page "CSD Customer Subscriptions";
                RunPageLink = "Item No" = field("No.");
                image = InsuranceRegisters;
                Promoted = true;
                PromotedCategory = Process;
                ToolTip = 'Subscriptions';
            }
        }
    }
}