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


    public partial class frmCitas : System.Web.UI.Page
    {

        CEntCitas oEntCitas = new CEntCitas();
        CNegCitas oNegCitas = new CNegCitas();
        CEntMedicos oEntMedicos = new CEntMedicos();
        CNegMedicos oNerMedicos = new CNegMedicos();
        CEntPacientes oEntPacientes = new CEntPacientes();
        CNegPacientes oNegPacientes = new CNegPacientes();


        public void Limpar()
        {
            txtcodigocita.Text = "";
            txtfecha.Text = "";
            txthora.Text = "";
            txtcodigopaciente.Text = "";
            txtcodigomedico.Text = "";
            txtvlrconsulta.Text = "";
            txtdiagnostico.Text = "";
            txtacompañante.Text = "";
            lblCita.Text = "";
            lblPaciente.Text = "";
            lblMedico.Text = "";
            lblguardarCita.Text = "";

        }


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConfirmarCita_Click(object sender, EventArgs e)
        {
            if(txtcodigocita.Text == "")
            {
                lblCita.Text = "No Se Ha Digitado Codigo De La Cita...";
                txtcodigocita.Focus();
            }
            else
            {
                DataSet ds = new DataSet();
                oEntCitas.Cod_cita = txtcodigocita.Text;
                ds = oNegCitas.consultar_cita(oEntCitas);

                if(ds.Tables[0].Rows.Count == 0)
                {
                    lblCita.Text = "El Codigo Esta Disponoble Para Asignar La Cita....";
                    txtfecha.Focus();
                }
                else
                {
                    txtfecha.Text = ds.Tables[0].Rows[0]["fecha"].ToString();
                    txthora.Text = ds.Tables[0].Rows[0]["hora"].ToString();
                    txtcodigopaciente.Text = ds.Tables[0].Rows[0]["Id_paciente"].ToString();
                    txtcodigomedico.Text = ds.Tables[0].Rows[0]["id_medico"].ToString();
                    txtvlrconsulta.Text = ds.Tables[0].Rows[0]["valor"].ToString();
                    txtdiagnostico.Text = ds.Tables[0].Rows[0]["diagnostico"].ToString();
                    txtacompañante.Text = ds.Tables[0].Rows[0]["Nom_acompanante"].ToString();

                }
            }
        }

        protected void btnBuscarPaciente_Click(object sender, EventArgs e)
        {
            if(txtcodigopaciente.Text == "")
            {
                lblPaciente.Text = "No Se Ha Digitado Codigo Del Paciente...";
                txtcodigopaciente.Focus();
            }
            else
            {
                DataSet ds = new DataSet();
                oEntPacientes.Cod_paciente = txtcodigopaciente.Text; ;
                ds = oNegPacientes.consultar_paciente(oEntPacientes);

                if(ds.Tables[0].Rows.Count == 0)
                {
                    lblPaciente.Text = "El Codigo Esta Disponoble Para Asignar Paciente....";
                    txtcodigomedico.Focus();
                }
                else
                {
                    txtcodigopaciente.Text = ds.Tables[0].Rows[0]["nom_paciente"].ToString();
                }

            }
        }

        protected void btnBuscarMedico_Click(object sender, EventArgs e)
        {
            if(txtcodigomedico.Text == "")
            {
                lblMedico.Text = "No Se Ha Digitado Codigo Del Medico...";
                txtcodigomedico.Focus();
            }
            else
            {
                DataSet ds = new DataSet();
                oEntMedicos.Id_medico = txtcodigomedico.Text; ;
                ds = oNerMedicos.consultar_medico(oEntMedicos);

                if(ds.Tables[0].Rows.Count == 0)
                {
                    lblMedico.Text = "El Codigo Esta Disponoble Para Asignar Medico...";
                    txtvlrconsulta.Focus();
                }
                else
                {
                    txtcodigomedico.Text = ds.Tables[0].Rows[0]["nom_medico"].ToString();
                }
            }
        }

        protected void btnGuardarCita_Click(object sender, EventArgs e)
        {
            oEntCitas.Cod_cita = txtcodigocita.Text;
            oEntCitas.Fecha = Convert.ToDateTime(txtfecha.Text);
            oEntCitas.Hora = Convert.ToDateTime (txthora.Text);
            oEntCitas.Id_medico = txtcodigomedico.Text;
            oEntCitas.Id_paciente1 = txtcodigopaciente.Text;
            oEntCitas.Valor = Convert.ToInt32(txtvlrconsulta.Text);
            oEntCitas.Diagnostico = txtdiagnostico.Text;
            oEntCitas.Nom_acompanante1 = txtacompañante.Text;

            if (oNegCitas.guardar_cita(oEntCitas))
            {
                lblguardarCita.Text = "Registro Guardado";
            }
            else
            {
                lblguardarCita.Text = "Error al guardar el registro.....";
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Limpar();
        }
    }
}