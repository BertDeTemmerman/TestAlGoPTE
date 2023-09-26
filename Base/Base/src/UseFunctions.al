codeunit 50110 UseFunctions
{
    #region ShowMessage
    procedure ShowMessage(var Customer: Record Customer)
    var
        Functions: Codeunit Functions;
    begin
        Message(Functions.ShowMessage(Customer));
    end;
    #endregion ShowMessage
}