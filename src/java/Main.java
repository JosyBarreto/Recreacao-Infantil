
import com.alegriakids.dao.ClienteDAO;
import com.alegriakids.model.Clientes;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        ClienteDAO clienteDAO = new ClienteDAO();

        // Criar um novo cliente
        Clientes cliente = new Clientes();
        cliente.setNome("Maria");
        cliente.setEmail("maria@example.com");
        cliente.setTelefone("11 999999999");
        cliente.setDataEvento("2024-07-20");
        cliente.setObservacoes("Festa de aniversário");

        // Adicionar o cliente ao banco de dados
        clienteDAO.adicionarCliente(cliente);

        // Listar todos os clientes
        List<Clientes> clientes = clienteDAO.listarClientes();
        for (Clientes c : clientes) {
            System.out.println("Nome: " + c.getNome());
            System.out.println("Email: " + c.getEmail());
            System.out.println("Telefone: " + c.getTelefone());
            System.out.println("Data do Evento: " + c.getDataEvento());
            System.out.println("Observações: " + c.getObservacoes());
            System.out.println();
        }
    }
}