codeunit 50100 Functions
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
}