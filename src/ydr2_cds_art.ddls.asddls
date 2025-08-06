@AbapCatalog.sqlViewName: 'YDR2_V_CDS_ART'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'vista de la tabla de artículos'
@Metadata.ignorePropagatedAnnotations: true
define view YDR2_CDS_Art as select from ydr2_tab_art
{
    key id_art as IdArt,
    descrip as Descrip,
    descrip2 as Descrip2,
    color as Color,
    piezas as Piezas,
    stock as Stock,
    url as Url,
    
    case 
    when stock = 0 then 0
    when stock between 1 and 9 then 1
    when stock between 10 and 99 then 2
    when stock >= 100 then 3
    else 0
    end as status
    
    
}
