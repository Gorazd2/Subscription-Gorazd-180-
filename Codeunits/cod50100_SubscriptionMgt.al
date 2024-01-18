codeunit 50100 "CSD Event Subscription"
{
    [EventSubscriber(ObjectType::Codeunit, 80, 'OnAfterPostSalesDoc', '', false, false)]
    local procedure UpdateSubscriptions(var SalesHeader: Record "Sales Header";
        var
            GenJnlPostLine: Codeunit "Gen. Jnl.-Post Line";
            SalesShptHdrNo: Code[20];
            RetRcpHdrNo: Code[20];
            SalesInvHdrNo: Code[20];
            SalesCrMemoHdrNo: Code[20])
    var
        CustomerSubscription: Record "CSD Customer Subscription";
        SalesInvLine: Record "Sales Invoice Line";
        Subscription: Record "CSD Subscription";
    begin
        if (SalesInvHdrNo <> '') then begin

            SalesInvLine.SETRANGE("Document No.", SalesInvHdrNo);
            SalesInvLine.SETRANGE(Type, SalesInvLine.Type::Item);
            if SalesInvLine.FINDSET() then
                repeat
                    CustomerSubscription.SETRANGE("Item No", SalesInvLine."No.");
                    CustomerSubscription.SETRANGE(Active, true);
                    if CustomerSubscription.FINDFIRST() then begin

                        Subscription.GET(CustomerSubscription."Subscription Code");
                        CustomerSubscription."Last Invoice Date" := SalesHeader."Posting Date";
                        CustomerSubscription."Next Invoicing Date" := CALCDATE(Subscription."Invoicing Frequence", SalesHeader."Posting Date");
                        CustomerSubscription.MODIFY();
                    end;
                until SalesInvLine.NEXT() = 0;
        end;
    end;
}