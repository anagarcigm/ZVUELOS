@AbapCatalog.sqlViewName: 'ZV_VUELOS_AIG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Vuelos'

@VDM.viewType: #BASIC

 
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory : #L
@ObjectModel.usageType.dataClass: #MASTER
@ClientHandling.algorithm: #SESSION_VARIABLE
 
@Metadata.allowExtensions: true
 
define view Za_VUELOS as select from spfli
 inner join scarr
    on spfli.carrid = scarr.carrid {
    key spfli.carrid,
       key scarr.carrname,
       key spfli.connid,
       spfli.cityfrom,  
       spfli.cityto 
}
