namespace renzo.comercial;
using { managed, cuid } from '@sap/cds/common';

entity Base : managed, cuid {
  name  : String(100);
}

entity Clients : cuid, managed {
  base : Association to Base;
  rut : String(16) not null;
}


