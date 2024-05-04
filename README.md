# Configurações Terraform para inicio rápido

Constam no repositório alguns arquivos referentes a configuração da rede de instâncias EC2(Elastic Cloud Computer) montada em aws cloud.

Para fins de demonstração foram implementados :
- 1 Gateway (Domínio da Aplicação) Proxy reverso & Load Balancer round robbin.
- 2 Instâncias para o Front-End User Interface
- 2 Instâncias para o Back-End Microserviços da aplicação.
- 1 Load Balancer para controlar as requisições direcionadas aos microserviços round robbin.
- 1 Instância para o Banco de Dados da aplicação Mysql.

Toda a implementação segue padrões de alta disponibilidade tanto para o Front-End quanto para o Back-End, além de consumir recursos de conteinerização com docker o que garante agilidade no momento de realizar a implementação de recursos de aplicação em nível de provisionamento rápido.