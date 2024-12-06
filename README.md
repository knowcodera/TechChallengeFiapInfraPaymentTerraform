
# Payment Infrastructure with Terraform

Este repositório contém o código-fonte para provisionar a infraestrutura do microsserviço **Payment** utilizando **Terraform**.

---

## 🔧 **Descrição**
O objetivo deste projeto é provisionar e configurar os recursos necessários para o microsserviço **Payment**, incluindo:
- **SQL Server** no Azure.
- Regras de firewall para acesso ao banco de dados.
- Repositório de recursos no Azure Resource Group.

---

## 🚀 **Tecnologias**
Este projeto utiliza as seguintes tecnologias:
- **Provisionamento:** Terraform
- **Infraestrutura:** Azure (Resource Groups, SQL Server, Azure SQL Database)

---

## 🛠️ **Configuração**
### **Pré-requisitos**
1. **Azure CLI** configurado com permissões adequadas.
2. **Terraform CLI** instalado localmente.
3. Credenciais configuradas no Azure para autenticação com o Terraform:
   - Subscription ID
   - Client ID
   - Client Secret
   - Tenant ID

### **Comandos Principais**
1. Inicializar o Terraform:
   ```bash
   terraform init
   ```

2. Planejar a infraestrutura:
   ```bash
   terraform plan
   ```

3. Aplicar as mudanças:
   ```bash
   terraform apply -auto-approve
   ```

---

## 📦 **CI/CD**
O pipeline CI/CD está configurado no GitHub Actions para:
- Executar validações e verificações no Terraform.
- Prover infraestrutura automaticamente ao fazer merge na branch `main`.

### **Workflow Configurado**
Confira o workflow em:
```bash
.github/workflows/workflow.yml
```

---

## 📄 Licença
Este projeto está licenciado sob a licença MIT. Consulte o arquivo LICENSE para mais detalhes.
