pageextension 50102 "CSD Customer List" extends "Customer List"
{
    layout
    {
        // Add changes to page layout here
        addfirst(FactBoxes)
        {
            part("Subscription Factbox"; "CSD Subscription Factbox")
            {
                SubPageLink = "Customer No" = field("No.");
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
        addafter("C&ontact")
        {
            action("Subscriptions")
            {
                ApplicationArea = All;
                Caption = 'Subscriptions';
                RunObject = page "CSD Customer Subscriptions";
                RunPageLink = "Customer No" = field("No.");
                image = InsuranceRegisters;
                ToolTip = 'Subscriptions';
            }
        }
        addlast(Category_Process)
        {
            actionref(Subscriptions_Promoted; Subscriptions)
            {
            }
        }
    }


}