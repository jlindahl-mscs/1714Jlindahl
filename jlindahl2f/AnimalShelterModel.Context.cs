﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace jlindahl2f
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class AnimalShelterModelContainer : DbContext
    {
        public AnimalShelterModelContainer()
            : base("name=AnimalShelterModelContainer")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<AnimalType> AnimalTypes { get; set; }
        public virtual DbSet<Animal> Animals { get; set; }
        public virtual DbSet<Person> People { get; set; }
        public virtual DbSet<DonationType> DonationTypes { get; set; }
        public virtual DbSet<Donation> Donations { get; set; }
    }
}
