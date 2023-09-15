codeunit 50100 CustomerSub
{

    [EventSubscriber(ObjectType::Codeunit, Codeunit::Subscriber, OnBeforeDoSomethingWithCustomer, '', false, false)]
    local procedure MyProcedure(var Customer: Record Customer; var IsHandled: Boolean)
    begin
        Customer.SetRange("Payment Terms Code", '14 DAYS');
    end;
}