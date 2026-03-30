# ✅ Solução — Desafio DevOps #01 — Criar EC2 com Terraform (Nível Iniciante)

Parabéns por chegar até aqui!  
Esta é a solução completa para o Desafio DevOps #01, onde o objetivo era provisionar uma instância EC2 utilizando Terraform, configurar um Security Group e instalar um webserver via User Data.

Abaixo você encontrará o código final totalmente funcional e organizado, seguindo boas práticas para iniciantes.

## 📁 Estrutura da solução

```
/solucao
├── main.tf
├── outputs.tf
├── provider.tf
├── variables.tf
└── user_data.sh
```

## ▶️ Como executar esta solução

```
cd solucao
terraform init
terraform apply
```

Após o apply, abra no navegador:

```
http://<IP_PUBLICO_OUTPUT>
```

Você verá a página criada pelo User Data.

## 🧹 Como destruir a infraestrutura

```
terraform destroy
```

## 📌 Observações importantes

- Utilize sempre **Amazon Linux 2** para este desafio.  
- O tipo de instância definido é **t3.micro**, compatível com o Free Tier (se disponível na sua conta).  
- Toda configuração está concentrada em um único módulo, pois o desafio é nível iniciante.  
- Variáveis estão separadas para facilitar reutilização.

## 🔜 Próximos Passos

Se você concluiu este desafio e revisou a solução, o próximo passo é avançar para:

➡️ [**Desafio DevOps #01 — Nível Intermediário**](https://github.com/bfeliano/desafio-devops-01-terraform-ec2-intermediario)

Nesse nível, você irá evoluir exatamente esta infraestrutura, aplicando boas práticas como:

- Modularização do projeto
- Uso de arquivos `.tfvars`
- Variáveis mais avançadas
- AMI dinâmica utilizando data sources
- (Opcional) Criação de IAM Role + Instance Profile

Bom estudo! 🚀🔥