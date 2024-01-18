pageextension 50101 " CSD Customer Card" extends "Customer Card"
{
    layout
    {
        // Add changes to page layout here
        addlast(General)
        {
            field("CSD Subscription Customer"; rec."CSD Subscription Customer")
            {
                ApplicationArea = All;
                ToolTip = 'CSD Subscription Customer';
            }
        }
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
        addafter(Contact)
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

