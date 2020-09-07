namespace renzo.comercial;
using { managed, cuid } from '@sap/cds/common';

entity Base : managed, cuid {
  name  : String(100);
  clientes : Association to many Clients
    on clientes.base = $self;
}

entity Clients : cuid, managed {
  base : Association to Base;
  rut : String(16) not null;
  status : String(1);
}


