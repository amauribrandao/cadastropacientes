json.extract! cadastro, :id, :nome, :endereco, :cpf, :telefone, :email, :carteria, :created_at, :updated_at
json.url cadastro_url(cadastro, format: :json)
