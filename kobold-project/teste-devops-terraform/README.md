# Teste Devops Terraform

Este repositório propõe um teste para avaliação de conhecimentos em Devops e
Terraform na nuvem da AWS. O código do repositório define uma infraestrutura de
exemplo sobre a qual você deve implementar as mudanças solicitadas. O teste é
dividido em três partes, sendo as duas primeiras obrigatórias e a terceira
opcional.

A primeira parte consiste em provisionar o ambiente de avaliação. A segunda
em fazer uma pequena alteração na infraestrutura. A terceira consiste em
reescrever o código de forma que fique mais fácil de manter.

Não existe uma única solução para o problema proposto. Você deve analisar
o código existente e fazer as alterações necessárias para atender cada questão.

## Parte I: Provisionamento do ambiente de avaliação

O ambiente de avaliação já está definido no código do repositório, porém não
está provisionado, isto é, não foi criado na AWS. Você deve usar as credenciais
de acesso à AWS que lhe foram fornecidas para provisionar o ambiente de
avaliação usando o código Terraform aqui definido. Para tanto, você deve:

* Instalar a versão mais recente do Terraform
   (https://www.terraform.io/downloads.html)
* Instalar e configurar o AWS CLI usando as credenciais da AWS lhe foram
  fornecidas
  (https://docs.aws.amazon.com/pt_br/cli/latest/userguide/cli-chap-install.html)
* Inicializar e aplicar o código Terraform para provisionar o ambiente de
  avaliação na AWS (https://www.terraform.io/docs/commands/index.html)

Como resultado da aplicação do código Terraform, você deve ter dois recursos
criados na AWS:

* Uma instância EC2 com o nome `kobold-test-instance`
* Um security group com o nome `kobold-test-sg`

## Parte II: Alteração na infraestrutura

Nesta parte do teste assume-se que o ambiente de avaliação já está provisionado.
Você deve fazer uma mudança na infraestrutura de forma que, depois de aplicada,
tenha-se o seguinte resultado:

* Duas instâncias EC2 com os nomes `kobold-test-instance-1` e
  `kobold-test-instance-2`
* Uma nova regra no security group `kobold-test-sg` aceitando conexões SSH de
  qualquer IP

Você deve:
* Criar um _commit_ com as alterações necessárias para atender a esta parte do
  teste
* Aplicar as alterações na infraestrutura usando o Terraform

## Parte III: Refatoração do código (opcional)

Nesta parte do teste você deve reescrever o código Terraform de forma que seja
mais fácil para outra pessoa mantê-lo no futuro. Considere:

* Organização e nomenclatura dos recursos
* Repetição/reuso de código
* Documentação/comentários

Não existe uma única solução. Você pode usar qualquer recurso do Terraform para
atender a esta parte do teste. Crie um _commit_ com as alterações que julgar
necessárias.

Caso decida por fazer esta parte do teste, você deve:
* Criar um _commit_ com as alterações necessárias para atender a esta parte do
  teste
* Aplicar as alterações na infraestrutura usando o Terraform

## Entrega e avaliação do teste

A entrega do teste consiste no próprio repositório Git com os _commits_ feitos
e na aplicação das alterações na infraestrutura. Você deve enviar o repositório
Git para o e-mail `grupo.ti@kobold.com.br` com o assunto
`Teste Devops Terraform`. Atente-se para enviar o diretório `.git` junto com o
repositório.

A avaliação do teste será feita através de uma video-chamada com um ou mais
membros do grupo de TI da Kobold. Durante a video-chamada você terá a
oportunidadede nos mostrar o que você fez e explicar como você fez. A idéia é
fazer um bate papo informal a sua abordagem para resolver o problema proposto.

Boa sorte!
