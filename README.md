# 🧩 Desafio DevOps #01 — Criar EC2 com Terraform (Nível Iniciante)

Este é o primeiro desafio da série **Desafios DevOps**, criado para ajudar iniciantes a praticar conceitos fundamentais de **Infraestrutura como Código (IaC)** utilizando **Terraform** na AWS.

Neste desafio, você criará uma infraestrutura simples composta por:

- Uma instância **EC2**
- Um **Security Group** liberando portas 22 e 80
- Execução de **User Data** instalando automaticamente um webserver
- Exposição do **IP público** via outputs

A proposta deste repositório é oferecer um ambiente de prática:  
👉 a pasta **desafio/** contém os arquivos para você implementar  
👉 a pasta **solucao/** contém a implementação final

Divirta-se aprendendo DevOps com Terraform! ☁️💻🔥

## 📁 Estrutura do Repositório

```
desafio-devops-01-terraform-ec2-iniciante/
│
├── desafio/       → Onde você deve escrever seu próprio código Terraform
├── solucao/       → Solução completa e funcional
└── README.md      → Este arquivo
```

## 📌 Onde escrever seu código?

Todo o código que você deve desenvolver está na pasta:

```
/desafio
```

A solução está aqui:

```
/solucao
```

## 🛠️ Pré-requisitos

Antes de começar, instale:

- **Terraform**  
  https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli  
- **AWS CLI** configurado (`aws configure`)  
  Instalação: https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html  
  Configuração: https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-quickstart.html

Você deve possuir também uma **conta AWS** com permissões básicas de EC2 e VPC.

## 🤝 Contribuições

Pull requests com melhorias em documentação, estrutura ou sugestões para novos desafios são bem-vindos!

## 📄 Licença

Este projeto está sob a licença MIT. Consulte o arquivo `LICENSE` para mais detalhes.
