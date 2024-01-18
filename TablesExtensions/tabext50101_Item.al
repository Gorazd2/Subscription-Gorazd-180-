tableextension 50101 "CSD Item" extends Item
{
    fields
    {
        // Add changes to table fields here
        field(50100; "CSD Subscription Item"; Boolean)
        {
            Caption = 'Subscription Item';
            FieldClass = FlowField;
            CalcFormula = exist("CSD Subscription" where("Item No" = field("No.")));
            Editable = false;
        }
    }
}