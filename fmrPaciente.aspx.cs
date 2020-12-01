using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaNegocio;
using CapaEntidad;
using System.Data;

namespace HospitalApplication2
{
    public partial class fmrPaciente : System.Web.UI.Page
    {

        CEntCitas oEntCitas = new CEntCitas();
        CNegCitas oNegCitas = new CNegCitas();
        CEntMedicos oEntMedicos = new CEntMedicos();
        CNegMedicos oNerMedicos = new CNegMedicos();
        CEntPacientes oEntPacientes = new CEntPacientes();
        CNegPacientes oNegPacientes = new CNegPacientes();

        public void Limpiar()
        {
            txtcodPaciente.Text = "";
            txtdirPaciente.Text = "";
            txtdocPaciente.Text = "";
            txttelPaciente.Text = "";
            txtnombPaciente.Text = "";
            TxtcelPaciente.Text = "";
            lblasigPaciente.Text = "";
            lblingPaciente.Text = "";

        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnasignarcodPaciente_Click(object sender, EventArgs e)
        {

            if (txtcodPaciente.Text == "")
            {
                lblasigPaciente.Text = "No Se Ha Digitado Codigo Del Paciente...";
                txtcodPaciente.Focus();
            }
            else
            {
                DataSet ds = new DataSet();
                oEntPacientes.Cod_paciente = txtcodPaciente.Text; ;
                ds = oNegPacientes.consultar_paciente(oEntPacientes);

                if (ds.Tables[0].Rows.Count == 0)
                {
                    lblasigPaciente.Text = "El Codigo Esta Disponoble Para Asignar Medico...";
                    txtcodPaciente.Focus();
                }
                else
                {
                    txtdocPaciente.Text = ds.Tables[0].Rows[0]["tip_doc"].ToString();
                    txtnombPaciente.Text = ds.Tables[0].Rows[0]["nom_paciente"].ToString();
                    txtdirPaciente.Text = ds.Tables[0].Rows[0]["dir_paciente"].ToString();
                    txttelPaciente.Text = ds.Tables[0].Rows[0]["tel_paciente"].ToString();
                    TxtcelPaciente.Text = ds.Tables[0].Rows[0]["cel_paciente"].ToString();

                }
            }

        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void btningresarPaciente_Click(object sender, EventArgs e)
        {
            oEntPacientes.Cod_paciente = txtcodPaciente.Text;
            oEntPacientes.Tip_doc = txtdocPaciente.Text;
            oEntPacientes.Nom_paciente = txtnombPaciente.Text;
            oEntPacientes.Dir_paciente = txtdirPaciente.Text;
            oEntPacientes.Tel_paciente = txttelPaciente.Text;
            oEntPacientes.Cel_paciente = TxtcelPaciente.Text;

            if (oNegPacientes.agregar_paciente(oEntPacientes))
            {
                lblingPaciente.Text = "Registro Guardado";
            }
            else
            {
                lblingPaciente.Text = "Error al guardar el registro.....";
            }

        }
    }
}