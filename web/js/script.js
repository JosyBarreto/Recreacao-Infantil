document.addEventListener('DOMContentLoaded', () => {
            const contactForm = document.getElementById('contactForm');

            contactForm.addEventListener('submit', (event) => {
                event.preventDefault();

                const formData = {
                    name: document.getElementById('name').value,
                    email: document.getElementById('email').value,
                    phone: document.getElementById('phone').value,
                    date: document.getElementById('date').value,
                    notes: document.getElementById('notes').value
                };

                let clients = JSON.parse(localStorage.getItem('clients')) || [];
                clients.push(formData);
                localStorage.setItem('clients', JSON.stringify(clients));

                window.location.href = 'clientes.html';
            });
        });
    

document.addEventListener('DOMContentLoaded', () => {
            const clientTableBody = document.getElementById('clientTableBody');
            const clients = JSON.parse(localStorage.getItem('clients')) || [];

            function carregarClientes() {
                clientTableBody.innerHTML = '';

                if (clients.length > 0) {
                    clients.forEach((client, index) => {
                        const row = document.createElement('tr');
                        row.innerHTML = `
                            <td>${client.name}</td>
                            <td>${client.email}</td>
                            <td>${client.phone}</td>
                            <td>${client.date}</td>
                            <td>${client.notes}</td>
                            <td>
                                <button class="btn" onclick="excluirCliente(${index})">Excluir</button>
                                <button class="btn-novo" onclick="novoCliente()">Novo Cliente</button>
                            </td>
                        `;
                        clientTableBody.appendChild(row);
                    });
                } else {
                    const row = document.createElement('tr');
                    row.innerHTML = `
                        <td colspan="6">Nenhum cliente cadastrado.</td>
                    `;
                    clientTableBody.appendChild(row);
                }
            }

            carregarClientes();

            window.excluirCliente = function(index) {
                if (confirm(`Tem certeza de que deseja excluir o cliente ${clients[index].name}?`)) {
                    clients.splice(index, 1);
                    localStorage.setItem('clients', JSON.stringify(clients));
                    alert("Cliente excluído com sucesso!");
                    carregarClientes();
                }
            };

            window.novoCliente = function() {
                window.location.href = 'contato.html';
            };
        });