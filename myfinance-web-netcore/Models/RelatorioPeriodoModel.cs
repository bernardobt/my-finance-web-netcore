
namespace myfinance_web_netcore.Models
{
    public class RelatorioPeriodoModel
    {
        public DateTime DataInicio { get; set; }
        public DateTime DataFim { get; set; }
        public decimal ReceitaTotal { get; set; }
        public decimal DespesaTotal { get; set; }
        public decimal Total { get; set; }
        public string? Nome { get; set; }
    }
}