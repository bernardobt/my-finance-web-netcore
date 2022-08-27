using myfinance_web_netcore.Infra;

namespace myfinance_web_netcore.Models
{
    public class PlanoContaModel
    {
        public int? Id { get; set; }
        public string? Descricao { get; set; }
        public string? Tipo { get; set; }

        public void Insert()
        {
            var objDAL = DAL.GetInstance;
            objDAL.Connect();
            var sql = $"INSERT INTO PLANO_CONTAS (DESCRICAO, TIPO) VALUES('{Descricao}','{Tipo}')";
            objDAL.ExecuteSqlCommand(sql);
            objDAL.Disconnect();
        }
        public void Atualizar(int? id)
        {
            var objDAL = DAL.GetInstance;
            objDAL.Connect();
            var sql = $"UPDATE PLANO_CONTAS SET " +
                        $"Descricao = '{Descricao}', " +
                        $"Tipo = '{Tipo}' " +
                        $"WHERE id = '{id}'";

            objDAL.ExecuteSqlCommand(sql);
            objDAL.Disconnect();
        }

        public void Excluir(int id)
        {
            var objDAL = DAL.GetInstance;
            objDAL.Connect();
            var sql = $"DELETE FROM PLANO_CONTAS WHERE ID = {id}";
            objDAL.ExecuteSqlCommand(sql);
            objDAL.Disconnect();
        }

        public List<PlanoContaModel> ListaPlanoContas()
        {
            List<PlanoContaModel> list = new List<PlanoContaModel>();
            var objDAL = DAL.GetInstance;
            objDAL.Connect();

            var sql = "SELECT ID, DESCRICAO, TIPO FROM PLANO_CONTAS";
            var dataTable = objDAL.ReturnDataTable(sql);

            for (int i = 0; i < dataTable.Rows.Count; i++)
            {
                var planoConta = new PlanoContaModel()
                {
                    Id = int.Parse(dataTable.Rows[i]["ID"].ToString()),
                    Descricao = dataTable.Rows[i]["DESCRICAO"].ToString(),
                    Tipo = dataTable.Rows[i]["TIPO"].ToString()
                };

                list.Add(planoConta);
            }
            objDAL.Disconnect();
            return list;
        }


        public PlanoContaModel CarregarPlanoContaPorId(int? id)
        {

            var objDAL = DAL.GetInstance;
            objDAL.Connect();

            var sql = $"SELECT ID, DESCRICAO, TIPO FROM PLANO_CONTAS WHERE ID = {id};";
            var dataTable = objDAL.ReturnDataTable(sql);

            var planoConta = new PlanoContaModel()
            {
                Id = int.Parse(dataTable.Rows[0]["ID"].ToString()),
                Descricao = dataTable.Rows[0]["DESCRICAO"].ToString(),
                Tipo = dataTable.Rows[0]["TIPO"].ToString()
            };

            objDAL.Disconnect();
            return planoConta;
        }
    }
}