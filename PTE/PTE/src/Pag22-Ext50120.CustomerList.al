pageextension 50120 CustomerList extends "Customer List" //22
{
    actions
    {
        addlast("&Customer")
        {
            action(DoSomethingWithCustomer)
            {
                ApplicationArea = All;
                Caption = 'DoSomethingWithCustomer', Comment = 'nl-BE="DoIetsMetKlant"';
                Image = Action;

                trigger OnAction()
                var
                    UseFunctions: Codeunit UseFunctions;
                begin
                    UseFunctions.ShowMessage(Rec);
                end;
            }
            action(UpdateName2)
            {
                ApplicationArea = All;
                Caption = 'UpdateName2', Comment = 'nl-BE="Pas naam 2 aan"';
                Image = Action;

                trigger OnAction()
                var
                    UseFunctions: Codeunit UseFunctions;
                begin
                    UseFunctions.ChangeCustomer(Rec, 'nieuwe naam 2');
                end;
            }
        }
    }
}