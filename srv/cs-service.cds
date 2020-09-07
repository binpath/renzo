using { renzo.comercial as cs } from '../db/schema';

@path:'/browse'
service ComercialService {
    entity Base as SELECT from cs.Base {*};
}