﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class Data_Client_ControlEntities : DbContext
    {
        public Data_Client_ControlEntities()
            : base("name=Data_Client_ControlEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<Actividades> Actividades { get; set; }
        public DbSet<Ciudades> Ciudades { get; set; }
        public DbSet<Clientes> Clientes { get; set; }
        public DbSet<Compras> Compras { get; set; }
        public DbSet<Empresa_detalle> Empresa_detalle { get; set; }
        public DbSet<Empresas> Empresas { get; set; }
        public DbSet<Estados> Estados { get; set; }
        public DbSet<Paises> Paises { get; set; }
        public DbSet<Promociones> Promociones { get; set; }
    }
}
