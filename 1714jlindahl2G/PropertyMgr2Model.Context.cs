﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace _1714jlindahl2G
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class PropertyMgr2ModelContainer : DbContext
    {
        public PropertyMgr2ModelContainer()
            : base("name=PropertyMgr2ModelContainer")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Building> Buildings { get; set; }
        public virtual DbSet<Apartment> Apartments { get; set; }
        public virtual DbSet<Person> People { get; set; }
        public virtual DbSet<LineItem> LineItems { get; set; }
        public virtual DbSet<Invoice> Invoices { get; set; }
        public virtual DbSet<Receipt> Receipts { get; set; }
    }
}
