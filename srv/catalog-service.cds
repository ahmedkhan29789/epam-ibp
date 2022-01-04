using {SapIbp as external} from './external/SapIbp';
@requires : 'authenticated-user'
service CatalogService {

    @readonly
    entity BTPPROMO as projection on external.BTPPROMO {
        key ID,PRDID,PRDDESCR,CUSTID,CUSTDESCR,
        PERIODID3_TSTAMP,BASELINEFCSTQTY
    };

}