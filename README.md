# 🧩 Desafio DevOps #01 — Criar EC2 com Terraform (Nível Iniciante)

Este é o primeiro desafio da série **Desafios DevOps**, criado para ajudar iniciantes a praticar conceitos fundamentais de **Infraestrutura como Código (IaC)** utilizando **Terraform** na AWS.

Neste desafio, você criará uma infraestrutura simples composta por:

- Uma instância **EC2**
- Um **Security Group** liberando portas 22 e 80
- Execução de **User Data** instalando automaticamente um webserver
- Exposição do **IP público** via outputs

A proposta deste repositório é oferecer um ambiente prático para estudo.  
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

## 📌 Como completar o seu desafio?

Todo o desenvolvimento do seu código deve ser feito dentro da pasta:

```
/desafio
```
Nela você encontrará um README com instruções detalhadas, dicas e, quando necessário, arquivos auxiliares para te orientar na construção da solução.

Quando terminar ou quiser comparar a sua abordagem, a solução final está disponível em:

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

## 🔜 Próximos Passos

Este desafio faz parte de uma trilha contínua de aprendizado DevOps.

Depois de concluir este nível, você pode avançar para:

➡️ [**Desafio DevOps #01 — Nível Intermediário**](https://github.com/bfeliano/desafio-devops-01-terraform-ec2-intermediario)  
Nele você irá evoluir esta mesma infraestrutura utilizando módulos Terraform, arquivos `.tfvars`, AMI dinâmica via data source e outras boas práticas fundamentais.

## 🤝 Contribuições

Pull requests com melhorias em documentação, estrutura ou sugestões para novos desafios são bem-vindos!

## 📄 Licença

Este projeto está sob a licença MIT. Consulte o arquivo `LICENSE` para mais detalhes.
