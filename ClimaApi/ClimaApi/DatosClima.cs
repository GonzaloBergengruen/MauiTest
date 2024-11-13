namespace ClimaApi
{
    public class DatosClima
    {
        public ClimaActual Actual {  get; set; }
        public UbicacionInfo Ubicacion { get; set; }
    }

    public class ClimaActual
    {
        public float Tempe_C { get; set; }
        public Condicion Condicion { get; set; }
    }

    public class Condicion
    {
        public string Texto { get; set; }
        public string Icono { get; set; }
    }

    public class UbicacionInfo
    {
        public string Nombre { get; set; }
        public string Region { get; set; }
        public string Departamento {  get; set; }
    }
}
