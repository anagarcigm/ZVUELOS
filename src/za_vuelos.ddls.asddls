@AbapCatalog.sqlViewName: 'ZV_VUELOS_AIG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Vuelos'


@Metadata.allowExtensions: true
 
define view Za_VUELOS as select from zspfli
 inner join zscarr
    on zspfli.carrid = zscarr.carrid {
    key zspfli.carrid,
       key zscarr.carrname,
       key zspfli.connid,
       zspfli.cityfrom,  
       zspfli.cityto 
}
