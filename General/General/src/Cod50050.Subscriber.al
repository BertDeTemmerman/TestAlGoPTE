codeunit 50050 Subscriber
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::Publisher, DoSomethingWithCustomer, '', false, false)]
    local procedure Publisher_DoSomethingWithCustomer(var Customer: Record Customer)
    var
        IsHandled: Boolean;
    begin
        OnBeforeDoSomethingWithCustomer(Customer, IsHandled);
        if IsHandled then exit;

        Customer.SetRange(County, 'GA'); //US DB
    end;

    [IntegrationEvent(false, false)]
    internal procedure OnBeforeDoSomethingWithCustomer(var Customer: Record Customer; var IsHandled: Boolean)
    begin
    end;
}