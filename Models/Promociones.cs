//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Client_Control_001.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Promociones
    {
        public int Cod_promocion { get; set; }
        public System.DateTime fecha_ini_promo { get; set; }
        public System.DateTime fecha_fin_promo { get; set; }
        public int Cod_ciudad { get; set; }
        public int Cod_pais { get; set; }
    
        public virtual Ciudades Ciudades { get; set; }
        public virtual Paises Paises { get; set; }
    }
}