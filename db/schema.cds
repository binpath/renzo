namespace renzo.comercial;
using { managed, cuid } from '@sap/cds/common';

/* entidad Base */
entity Base : managed, cuid {
  name  : String(100);
  clientes : Association to many Clients
    on clientes.base = $self;
}

/* entidad Clientes */
entity Clients : cuid, managed {
  base : Association to Base;
  rut : String(16) not null;
  status : String(1);
}


