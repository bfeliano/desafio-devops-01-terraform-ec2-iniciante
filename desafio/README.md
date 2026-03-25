# 🧩 Desafio DevOps #01 — Criar EC2 com Terraform (Nível Iniciante)

Bem-vindo(a) ao primeiro desafio desta série!  
Aqui você irá praticar conceitos essenciais de **Infraestrutura como Código** utilizando **Terraform** para provisionar uma instância EC2 com webserver na AWS.

Este desafio é ideal para quem está começando no Terraform ou quer reforçar práticas de IaC.

## 🎯 Objetivo

Dentro desta pasta (`/desafio`), você deve criar os arquivos Terraform necessários para:

1. Criar uma **instância EC2** básica
2. Criar um **Security Group** com:
   - Porta **22/tcp** liberada (SSH)
   - Porta **80/tcp** liberada (HTTP)
3. Configurar **User Data** para instalar automaticamente um webserver
4. Expor via *outputs*:
   - IP público da instância
   - (Opcional) DNS público
5. Adicionar **tags** nos recursos
6. Organizar o código de forma clara

Você encontrará o arquivo `user_data.sh` aqui na pasta do desafio, ele já contém um script básico, mas você pode editá-lo.

# 💬 Dicas importantes para te ajudar

## 💡 1. Comece criando o arquivo `main.tf`
O Terraform funciona a partir de um arquivo raiz.  
Dentro dele você precisará declarar:

- O **provider AWS**
- Um **recurso "aws_instance"**
- Um **recurso "aws_security_group"**

Procure por exemplos simples na documentação do Terraform:
https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources

## 💡 2. Pesquise por AMIs adequadas

Use o tipo de instância **`t3.micro`**, que faz parte do **AWS Free Tier** (quando disponível na sua conta). Ele é leve, barato e ideal para este desafio.

Para a AMI, recomendamos usar **Amazon Linux 2**, que é a opção mais comum para testes, possui boa compatibilidade e é amplamente usada em exemplos da AWS.

### 🔍 Como encontrar uma AMI Amazon Linux 2 (maneira correta)

Você pode listar AMIs oficiais da Amazon usando este comando filtrado:

```bash
aws ec2 describe-images \
  --owners amazon \
  --filters "Name=name,Values=amzn2-ami-hvm-*-x86_64-gp2" \
  --query "Images[*].[ImageId,Name,CreationDate]" \
  --output table
```

## 💡 3. No Security Group, lembre-se de:
- Criar regras **ingress** para 22 e 80  
- Criar uma regra **egress** liberando tudo (0.0.0.0/0)  
- Associar o SG à sua instância EC2

Digite no Google: _"terraform aws_security_group ingress example"_

## 💡 4. O `user_data.sh` deve ser referenciado no recurso EC2
Dica: use a função `file()`, algo como:

```
user_data = file("caminho/do/arquivo")
```

## 💡 5. Não se esqueça do output
Você deve retornar o IP público da EC2.

Dica:  
Pesquise no Google: _"terraform output ec2 public ip"_

O recurso `aws_instance` possui um atributo chamado `public_ip`.

## 💡 6. Teste em pequenas partes
Antes de rodar o `terraform apply`, execute:

```
terraform init
terraform fmt
terraform validate
```

Isso evita erros simples.

## 💡 7. (Opcional) Adicione variáveis
Um bom exercício é criar um arquivo `variables.tf` com:

- AMI ID
- Tipo de instância
- Nome da tag


# 📁 Estrutura desta pasta

```
/desafio
├── main.tf            ← Você deve criar
├── variables.tf       ← Opcional (boa prática)
├── outputs.tf         ← Opcional (recomendado)
├── user_data.sh       ← Script inicial para instalar webserver
└── README.md          ← Este arquivo
```

# ▶️ Como Rodar o Desafio

1. Abra o diretório:

```
cd desafio
```

2. Inicialize o Terraform:

```
terraform init
```

3. Valide o código:

```
terraform validate
```

4. Aplique a infraestrutura:

```
terraform apply
```

5. Abra o navegador e teste:

```
http://<IP-PUBLICO-OUTPUT>
```

Se tudo estiver correto, você verá a mensagem:

```
Desafio DevOps #1 — Deploy realizado com sucesso!
```

# 🧹 Como destruir a infraestrutura

```
terraform destroy
```

# ❗ Quando consultar a solução?

Apenas depois que você tentar resolver sozinho(a).  
A solução completa está na pasta solucao.


Boa sorte e divirta-se aprendendo DevOps na prática! 🚀🔥