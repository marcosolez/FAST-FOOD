using SALT_PAPER.DATA;
using SALT_PEPER.ENTIDADES.DTOs;
using System;
using System.Collections.Generic;
using System.Text;

namespace SALT_PEPER.NEGOCIO
{
    public class OrdenBAL
    {
        OrdenDAL _context;
        public OrdenBAL()
        {
            _context = new OrdenDAL();
        }
        public List<OrdenDTO> GetAllOrdenes(string fecha)
        {
            return _context.GetAllOrdenes(fecha);
        }

        public List<OrdenDTO> GetOrderByTipo(string tipo, string fecha)
        {
            return _context.GetOrderByTipo(tipo,fecha);
        }
        

        public bool GuardarOrdenesyDetalles(OrdenDTO model)
        {
            return _context.GuardarOrdenesyDetalles(model);
        }

        public bool AnularFinalizarOrden(int pk, string tipo)
        {
            return _context.AnularFinalizarOrden(pk, tipo);
        }

        public List<OrdenDTO> ListadoOrdenesHistorial() =>      
             _context.ListadoOrdenesHistorial();
        
    }
}
