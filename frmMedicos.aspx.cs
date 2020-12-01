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
    public partial class frmMedicos : System.Web.UI.Page
    {

        CEntCitas oEntCitas = new CEntCitas();
        CNegCitas oNegCitas = new CNegCitas();
        CEntMedicos oEntMedicos = new CEntMedicos();
        CNegMedicos oNerMedicos = new CNegMedicos();
        CEntPacientes oEntPacientes = new CEntPacientes();
        CNegPacientes oNegPacientes = new CNegPacientes();


        public void Limpiar()
        {
            txtcodigoMedico.Text = "";
            txtnombreMedico.Text = "";
            txttelefonoMedico.Text = "";
            txtespecialidadMedica.Text = "";
            lblCodigoMedico.Text = "";
            lblguardarMedico.Text = "";

        }





        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCodigoMedico_Click(object sender, EventArgs e)
        {
            if (txtcodigoMedico.Text == "")
            {
                lblCodigoMedico.Text = "No Se Ha Digitado Codigo Del Medico...";
                txtcodigoMedico.Focus();
            }
            else
            {
                DataSet ds = new DataSet();
                oEntMedicos.Id_medico = txtcodigoMedico.Text; ;
                ds = oNerMedicos.consultar_medico(oEntMedicos);

                if (ds.Tables[0].Rows.Count == 0)
                {
                    lblCodigoMedico.Text = "El Codigo Esta Disponoble Para Asignar Medico...";
                    txtcodigoMedico.Focus();
                }
                else
                {
                    txtnombreMedico.Text = ds.Tables[0].Rows[0]["nom_medico"].ToString();
                    txttelefonoMedico.Text = ds.Tables[0].Rows[0]["tel_medico"].ToString();
                    txtespecialidadMedica.Text = ds.Tables[0].Rows[0]["especialidad"].ToString();
                    
                }


            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            oEntMedicos.Id_medico = txtcodigoMedico.Text;
            oEntMedicos.Nom_medico = txtnombreMedico.Text;
            oEntMedicos.Tel_medico = txttelefonoMedico.Text;
            oEntMedicos.Especialidad = txtespecialidadMedica.Text;

            if (oNerMedicos.guardar_medico(oEntMedicos))
            {
                lblguardarMedico.Text = "Registro Guardado";
            }
            else
            {
                lblguardarMedico.Text = "Error al guardar el registro.....";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Limpiar();
        }
    }
}