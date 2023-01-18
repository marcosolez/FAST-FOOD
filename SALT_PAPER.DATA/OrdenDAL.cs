using Microsoft.EntityFrameworkCore;
using SALT_PEPER.ENTIDADES;
using SALT_PEPER.ENTIDADES.DTOs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SALT_PAPER.DATA
{
    public class OrdenDAL
    {
        FAST_FOOD_DBContext _context;
        public OrdenDAL()
        {
            _context = new FAST_FOOD_DBContext();
        }

        public List<OrdenDTO> GetAllOrdenes(string fecha)
        {
            var listado = new List<OrdenDTO>();

            var orden = _context.TblPedido
                                 .Include(x => x.TblDetallePedido)
                                 .Include("TblDetallePedido.FkplatillobebidaNavigation")
                                  .Where(x=>x.Fechastring.Equals(fecha)).ToList();
            foreach (var item in orden)
            {
                var obj = new OrdenDTO
                {
                    PK = item.Pk,
                    FECHAPEDIDO = item.Fechapedido,
                    USERNAME = item.Username,
                    ESTADOORDEN = item.Estadoorden,
                    NOMBRECLIENTE = item.Nombrecliente,
                    FECHASTRING = item.Fechapedido.ToString(),
                    SUBTOTAL = item.TblDetallePedido.Sum(x => x.Subtotal)

                };

                obj.ORDENES = new List<OrdenesDTO>();

                foreach (var detail in item.TblDetallePedido)
                {
                    obj.ORDENES.Add(new OrdenesDTO
                    {
                        PK = detail.Pk,
                        FKPEDIDO = detail.Fkpedido,
                        FKPLATILLO = detail.Fkplatillobebida,
                        CANTIDAD = detail.Cantidad,
                        PLATILLO = detail.FkplatillobebidaNavigation.Nombre,
                        PRECIO = detail.Precio,
                        SUBTOTAL = detail.Subtotal,
                        IMAGEN = detail.FkplatillobebidaNavigation.Imagen
                    });
                }


                listado.Add(obj);
            }
            return listado;
        }

        public List<OrdenDTO> GetOrderByTipo(string tipo, string fecha)
        {
            var listado = new List<OrdenDTO>();
            var orden = new List<TblPedido>();


            if (tipo== "Todas")
            {
                orden = _context.TblPedido
                                         .Include(x => x.TblDetallePedido)
                                         .Include("TblDetallePedido.FkplatillobebidaNavigation")
                                          .Where(x => x.Fechastring.Equals(fecha)).ToList();
            }
            else
            {
                orden = _context.TblPedido
                                        .Include(x => x.TblDetallePedido)
                                        .Include("TblDetallePedido.FkplatillobebidaNavigation")
                                         .Where(x => x.Fechastring.Equals(fecha) && x.Estadoorden.Equals(tipo)).ToList();
            }

            foreach (var item in orden)
            {
                var obj = new OrdenDTO
                {
                    PK = item.Pk,
                    FECHAPEDIDO = item.Fechapedido,
                    USERNAME = item.Username,
                    ESTADOORDEN = item.Estadoorden,
                    NOMBRECLIENTE = item.Nombrecliente,
                    FECHASTRING = item.Fechapedido.ToString(),
                    SUBTOTAL = item.TblDetallePedido.Sum(x => x.Subtotal)

                };

                obj.ORDENES = new List<OrdenesDTO>();

                foreach (var detail in item.TblDetallePedido)
                {
                    obj.ORDENES.Add(new OrdenesDTO
                    {
                        PK = detail.Pk,
                        FKPEDIDO = detail.Fkpedido,
                        FKPLATILLO = detail.Fkplatillobebida,
                        CANTIDAD = detail.Cantidad,
                        PLATILLO = detail.FkplatillobebidaNavigation.Nombre,
                        PRECIO = detail.Precio,
                        SUBTOTAL = detail.Subtotal,
                        IMAGEN = detail.FkplatillobebidaNavigation.Imagen
                    });
                }


                listado.Add(obj);
            }
            return listado;
        }

        public bool GuardarOrdenesyDetalles(OrdenDTO model)
        {
            using (var _tran = _context.Database.BeginTransaction())
            {
                try
                {

                    var pedido = new TblPedido
                    {
                        Nombrecliente = model.NOMBRECLIENTE,
                        Estadoorden = EstadosOrdenes.Creada.ToString(),
                        Anulado = false,
                        Username = model.USERNAME,
                        Fechapedido = DateTime.Now,
                        Fechastring=$"{DateTime.Now.Day}/{DateTime.Now.Month}/{DateTime.Now.Year}"
                    };
                    _context.TblPedido.Add(pedido);
                    _context.SaveChanges();

                    var detallesPedido = new List<TblDetallePedido>();
                    foreach (var item in model.ORDENES)
                    {
                        detallesPedido.Add(new TblDetallePedido
                        {
                            Fkpedido = pedido.Pk,
                            Fkplatillobebida = item.FKPLATILLO,
                            Cantidad = item.CANTIDAD,
                            Precio = item.PRECIO,
                            Subtotal = item.SUBTOTAL

                        });
                    }
                    _context.TblDetallePedido.AddRange(detallesPedido);
                    _context.SaveChanges();
                    _tran.Commit();

                    return true;
                }
                catch (Exception)
                {
                    _tran.Rollback();
                    return false;
                }
            }
        }

        public bool AnularFinalizarOrden(int pk, string tipo) {
            try
            {
                var orden = _context.TblPedido.FirstOrDefault(x => x.Pk == pk);

                if (orden != null)
                {
                    if (tipo == "Anular")
                    {
                        orden.Estadoorden = EstadosOrdenes.Anulada.ToString();
                    }
                    else
                    {
                        orden.Estadoorden = EstadosOrdenes.Finalizada.ToString();
                    }
                    _context.SaveChanges();
                }
                else
                    return false;

                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public List<OrdenDTO> ListadoOrdenesHistorial()
        {
            var listado = new List<OrdenDTO>();

            var orden = _context.TblPedido
                                 .Include(x => x.TblDetallePedido)
                                 .Include("TblDetallePedido.FkplatillobebidaNavigation");
                                  
            foreach (var item in orden)
            {
                var obj = new OrdenDTO
                {
                    PK = item.Pk,
                    FECHAPEDIDO = item.Fechapedido,
                    USERNAME = item.Username,
                    ESTADOORDEN = item.Estadoorden,
                    NOMBRECLIENTE = item.Nombrecliente,
                    FECHASTRING = item.Fechapedido.ToString(),
                    SUBTOTAL = item.TblDetallePedido.Sum(x => x.Subtotal)

                };

                obj.ORDENES = new List<OrdenesDTO>();

                foreach (var detail in item.TblDetallePedido)
                {
                    obj.ORDENES.Add(new OrdenesDTO
                    {
                        PK = detail.Pk,
                        FKPEDIDO = detail.Fkpedido,
                        FKPLATILLO = detail.Fkplatillobebida,
                        CANTIDAD = detail.Cantidad,
                        PLATILLO = detail.FkplatillobebidaNavigation.Nombre,
                        PRECIO = detail.Precio,
                        SUBTOTAL = detail.Subtotal,
                        IMAGEN = detail.FkplatillobebidaNavigation.Imagen
                    });
                }


                listado.Add(obj);
            }
            return listado.OrderByDescending(x=>x.PK).ToList();
        }
    }
}
