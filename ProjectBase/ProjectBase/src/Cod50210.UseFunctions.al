codeunit 50210 UseFunctions
{
    #region ShowMessage
    procedure ShowMessage(var Customer: Record Customer)
    var
        Functions: Codeunit Functions;
    begin
        Message(Functions.ShowMessage(Customer));
    end;
    #endregion ShowMessage

    #region ChangeCustomer
    procedure ChangeCustomer(var Customer: Record Customer; NewName2: Text)
    var
        Functions: Codeunit Functions;
    begin
        Functions.ChangeCustomer(Customer, NewName2);
    end;
    #endregion ChangeCustomer

}