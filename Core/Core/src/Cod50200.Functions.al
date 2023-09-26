codeunit 50200 Functions
{
    #region ShowMessage
    internal procedure ShowMessage(var Customer: Record Customer): Text[100]
    begin
        exit(Customer.Name);
    end;
    #endregion ShowMessage

    #region ShowMessage2
    internal procedure ShowMessage2(var Customer: Record Customer): Text
    begin
        exit(Customer.Name + '---' + Customer."No.");
    end;
    #endregion ShowMessage2

    #region ChangeCustomer
    internal procedure ChangeCustomer(var Customer: Record Customer; NewName: Text): Boolean
    begin
        Customer.Validate("Name 2", NewName);
    end;
    #endregion ChangeCustomer
}