pageextension 50104 "CSD Item List" extends "Item List"
{
    layout
    {
        // Add changes to page layout here
        addfirst(FactBoxes)
        {
            part("CSD Subscription Item"; "CSD Subscription Factbox")
            {
                SubPageLink = "Customer No" = field("No.");
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
        addlast(Processing)
        {
            action("Subscriptions")
            {
                ApplicationArea = All;
                Caption = 'Subscriptions';
                RunObject = page "CSD Customer Subscriptions";
                RunPageLink = "Customer No" = field("No.");
                image = InsuranceRegisters;
                Promoted = true;
                PromotedCategory = Process;
                ToolTip = 'Subscriptions';
            }
        }
    }


}