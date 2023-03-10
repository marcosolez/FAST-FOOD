using System;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace SALT_PEPER.ENTIDADES
{
    public partial class FAST_FOOD_DBContext : DbContext
    {
        public FAST_FOOD_DBContext()
        {

        }

        public FAST_FOOD_DBContext(DbContextOptions<FAST_FOOD_DBContext> options)
            : base(options)
        {
        }

      
        public virtual DbSet<TblCategoriaPlatillo> TblCategoriaPlatillo { get; set; }
        public virtual DbSet<TblCompra> TblCompra { get; set; }
        public virtual DbSet<TblDetalleCompra> TblDetalleCompra { get; set; }
        public virtual DbSet<TblDetallePedido> TblDetallePedido { get; set; }
        public virtual DbSet<TblHorarios> TblHorarios { get; set; }
        public virtual DbSet<TblIngrediente> TblIngrediente { get; set; }
        public virtual DbSet<TblIngredientePlatillo> TblIngredientePlatillo { get; set; }
        public virtual DbSet<TblInventario> TblInventario { get; set; }
        public virtual DbSet<TblPedido> TblPedido { get; set; }
        public virtual DbSet<TblPlatilloBebida> TblPlatilloBebida { get; set; }
        public virtual DbSet<TblProveedor> TblProveedor { get; set; }
        public virtual DbSet<TblUnidadMedida> TblUnidadMedida { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer("Server=.;Database=FAST_FOOD_DB;Trusted_Connection=True;MultipleActiveResultSets=true");
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {         

            modelBuilder.Entity<TblCategoriaPlatillo>(entity =>
            {
                entity.HasKey(e => e.Pk);

                entity.ToTable("Tbl_CategoriaPlatillo");

                entity.Property(e => e.Pk).HasColumnName("PK");

                entity.Property(e => e.Estado).HasColumnName("ESTADO");

                entity.Property(e => e.Nombre)
                    .IsRequired()
                    .HasColumnName("NOMBRE")
                    .HasMaxLength(50)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<TblCompra>(entity =>
            {

                entity.HasKey(e => e.Pk);

                entity.ToTable("Tbl_Compra");

                entity.Property(e => e.Pk).HasColumnName("PK");

                entity.Property(e => e.Estado).HasColumnName("ESTADO");

                entity.Property(e => e.Fechacompra)
                    .HasColumnName("FECHACOMPRA")
                    .HasColumnType("datetime");

                entity.Property(e => e.Fkproveedor).HasColumnName("FKPROVEEDOR");

                entity.Property(e => e.Numfactura)
                    .IsRequired()
                    .HasColumnName("NUMFACTURA")
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.Username)
                    .IsRequired()
                    .HasColumnName("USERNAME")
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.HasOne(d => d.FkproveedorNavigation)
                    .WithMany(p => p.TblCompra)
                    .HasForeignKey(d => d.Fkproveedor)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Tbl_Compra_Tbl_Proveedor1");
            });

            modelBuilder.Entity<TblDetalleCompra>(entity =>
            {
                entity.HasKey(e => e.Pk);

                entity.ToTable("Tbl_DetalleCompra");

                entity.Property(e => e.Pk).HasColumnName("PK");

                entity.Property(e => e.Cantidadunidad).HasColumnName("CANTIDADUNIDAD");

                entity.Property(e => e.Estado).HasColumnName("ESTADO");

                entity.Property(e => e.Fkcompra).HasColumnName("FKCOMPRA");

                entity.Property(e => e.Fkingrediente).HasColumnName("FKINGREDIENTE");

                entity.Property(e => e.Precio)
                    .HasColumnName("PRECIO")
                    .HasColumnType("money");

                entity.HasOne(d => d.FkcompraNavigation)
                    .WithMany(p => p.TblDetalleCompra)
                    .HasForeignKey(d => d.Fkcompra)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Tbl_DetalleCompra_Tbl_Compra");

                entity.HasOne(d => d.FkingredienteNavigation)
                    .WithMany(p => p.TblDetalleCompra)
                    .HasForeignKey(d => d.Fkingrediente)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Tbl_DetalleCompra_Tbl_Ingrediente");
            });

            modelBuilder.Entity<TblDetallePedido>(entity =>
            {
                entity.HasKey(e => e.Pk);

                entity.ToTable("Tbl_DetallePedido");

                entity.Property(e => e.Pk).HasColumnName("PK");

                entity.Property(e => e.Cantidad).HasColumnName("CANTIDAD");

                entity.Property(e => e.Fkpedido).HasColumnName("FKPEDIDO");

                entity.Property(e => e.Fkplatillobebida).HasColumnName("FKPLATILLOBEBIDA");

                entity.Property(e => e.Precio)
                    .HasColumnName("PRECIO")
                    .HasColumnType("money");

                entity.Property(e => e.Subtotal)
                    .HasColumnName("SUBTOTAL")
                    .HasColumnType("money");

                entity.HasOne(d => d.FkpedidoNavigation)
                    .WithMany(p => p.TblDetallePedido)
                    .HasForeignKey(d => d.Fkpedido)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Tbl_DetallePedido_Tbl_Pedido");

                entity.HasOne(d => d.FkplatillobebidaNavigation)
                    .WithMany(p => p.TblDetallePedido)
                    .HasForeignKey(d => d.Fkplatillobebida)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Tbl_DetallePedido_Tbl_PlatilloBebida");
            });

            modelBuilder.Entity<TblHorarios>(entity =>
            {
                entity.HasKey(e => e.Pk);

                entity.ToTable("Tbl_Horarios");

                entity.Property(e => e.Pk).HasColumnName("PK");

                entity.Property(e => e.Fechamarcacion)
                    .HasColumnName("FECHAMARCACION")
                    .HasColumnType("date");

                entity.Property(e => e.Finalizado).HasColumnName("FINALIZADO");

                entity.Property(e => e.Horaentrada).HasColumnName("HORAENTRADA");

                entity.Property(e => e.Horasalida).HasColumnName("HORASALIDA");

                entity.Property(e => e.Username)
                    .HasColumnName("USERNAME")
                    .HasMaxLength(50)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<TblIngrediente>(entity =>
            {
                entity.HasKey(e => e.Pk);

                entity.ToTable("Tbl_Ingrediente");

                entity.Property(e => e.Pk).HasColumnName("PK");

                entity.Property(e => e.Cantidadporunidad).HasColumnName("CANTIDADPORUNIDAD");

                entity.Property(e => e.Estado).HasColumnName("ESTADO");

                entity.Property(e => e.Fkunidadmedida).HasColumnName("FKUNIDADMEDIDA");

                entity.Property(e => e.Minimostock).HasColumnName("MINIMOSTOCK");

                entity.Property(e => e.Nombre)
                    .IsRequired()
                    .HasColumnName("NOMBRE")
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.HasOne(d => d.FkunidadmedidaNavigation)
                    .WithMany(p => p.TblIngrediente)
                    .HasForeignKey(d => d.Fkunidadmedida)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Tbl_Ingrediente_Tbl_UnidadMedida");
            });

            modelBuilder.Entity<TblIngredientePlatillo>(entity =>
            {
                entity.HasKey(e => e.Pk);

                entity.ToTable("Tbl_IngredientePlatillo");

                entity.Property(e => e.Pk).HasColumnName("PK");

                entity.Property(e => e.Cantidadunidad).HasColumnName("CANTIDADUNIDAD");

                entity.Property(e => e.Fkingrediente).HasColumnName("FKINGREDIENTE");

                entity.Property(e => e.Fkplatillo).HasColumnName("FKPLATILLO");

                entity.HasOne(d => d.FkingredienteNavigation)
                    .WithMany(p => p.TblIngredientePlatillo)
                    .HasForeignKey(d => d.Fkingrediente)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Tbl_IngredientePlatillo_Tbl_Ingrediente");

                entity.HasOne(d => d.FkplatilloNavigation)
                    .WithMany(p => p.TblIngredientePlatillo)
                    .HasForeignKey(d => d.Fkplatillo)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Tbl_IngredientePlatillo_Tbl_PlatilloBebida");
            });

            modelBuilder.Entity<TblInventario>(entity =>
            {
                entity.HasKey(e => e.Pk);

                entity.ToTable("Tbl_Inventario");

                entity.Property(e => e.Pk).HasColumnName("PK");

                entity.Property(e => e.Fechaiultimoingreso)
                   .HasColumnName("FECHAIULTIMOINGRESO")
                   .HasColumnType("datetime");

                entity.Property(e => e.Cantidadstock).HasColumnName("CANTIDADSTOCK");

                entity.Property(e => e.Fkingrediente).HasColumnName("FKINGREDIENTE");

                entity.HasOne(d => d.FkingredienteNavigation)
                    .WithMany(p => p.TblInventario)
                    .HasForeignKey(d => d.Fkingrediente)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Tbl_Inventario_Tbl_Ingrediente");
            });

            modelBuilder.Entity<TblPedido>(entity =>
            {
                entity.HasKey(e => e.Pk);

                entity.ToTable("Tbl_Pedido");

                entity.Property(e => e.Pk).HasColumnName("PK");

                entity.Property(e => e.Anulado).HasColumnName("ANULADO");

                entity.Property(e => e.Estadoorden)
                 .HasColumnName("ESTADOORDEN")
                 .HasMaxLength(50)
                 .IsUnicode(false);

                entity.Property(e => e.Fechapedido)
                    .HasColumnName("FECHAPEDIDO")
                    .HasColumnType("datetime");

                entity.Property(e => e.Nombrecliente)
                    .IsRequired()
                    .HasColumnName("NOMBRECLIENTE")
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.Username)
                    .IsRequired()
                    .HasColumnName("USERNAME")
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.Fechastring)
                   .IsRequired()
                   .HasColumnName("FECHASTRING")
                   .HasMaxLength(50)
                   .IsUnicode(false);

                
            });

            modelBuilder.Entity<TblPlatilloBebida>(entity =>
            {
                entity.HasKey(e => e.Pk);

                entity.ToTable("Tbl_PlatilloBebida");

                entity.Property(e => e.Pk).HasColumnName("PK");

                entity.Property(e => e.Descripcion)
                    .IsRequired()
                    .HasColumnName("DESCRIPCION")
                    .HasMaxLength(500)
                    .IsUnicode(false);

                entity.Property(e => e.Fkcategoriaplatillo).HasColumnName("FKCATEGORIAPLATILLO");

                entity.Property(e => e.Imagen)
                    .IsRequired()
                    .HasColumnName("IMAGEN")
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.Nombre)
                    .IsRequired()
                    .HasColumnName("NOMBRE")
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.Precio)
                    .HasColumnName("PRECIO")
                    .HasColumnType("money");

                entity.Property(e => e.Estado)
                   .HasColumnName("ESTADO");
                   

                entity.HasOne(d => d.FkcategoriaplatilloNavigation)
                    .WithMany(p => p.TblPlatilloBebida)
                    .HasForeignKey(d => d.Fkcategoriaplatillo)
                    .HasConstraintName("FK_Tbl_PlatilloBebida_Tbl_CategoriaPlatillo");
            });

            modelBuilder.Entity<TblProveedor>(entity =>
            {

                entity.HasKey(e => e.Pk);

                entity.ToTable("Tbl_Proveedor");

                entity.Property(e => e.Pk).HasColumnName("PK");

                entity.Property(e => e.Direccion)
                    .HasColumnName("DIRECCION")
                    .HasMaxLength(500)
                    .IsUnicode(false);

                entity.Property(e => e.Estado).HasColumnName("ESTADO");

                entity.Property(e => e.Nombre)
                    .HasColumnName("NOMBRE")
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.Telefono).HasColumnName("TELEFONO");
            });

            modelBuilder.Entity<TblUnidadMedida>(entity =>
            {
                entity.HasKey(e => e.Pk);

                entity.ToTable("Tbl_UnidadMedida");

                entity.Property(e => e.Pk).HasColumnName("PK");

                entity.Property(e => e.Estado).HasColumnName("ESTADO");

                entity.Property(e => e.Nombre)
                    .IsRequired()
                    .HasColumnName("NOMBRE")
                    .HasMaxLength(50)
                    .IsUnicode(false);
            });      

            OnModelCreatingPartial(modelBuilder);
           
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);

        
    }
}
