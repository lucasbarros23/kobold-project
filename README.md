# kobold-project


Bom dia, 

Me chamo Lucas Rodrigues Barros, o intuito desse documento é mostrar a lógica que utilizei, seguindo as regras impostas pelo tutor. 

*A primeira modificação que realizei foi referente a organização de arquivos do terraform, a segregação utilizada foi a seguinte, isso facilita a reutilização e facil entendimento da infraestrutura, trazendo clareza para novos SRES ou DevOps, diminuindo as chances de incidentes em caso de uma alteração não correta.

Exemplo correto:
main.tf - chame módulos, locais e fontes de dados para criar todos os recursos.
variables.tf - contém declarações de variáveis utilizadas em main.tf.
outputs.tf - contém saídas dos recursos criados em main.tf.
versions.tf - contém requisitos de versão para Terraform e provedores.
networks.tf - contém requesitos de redes e segurança

Exemplo não recomendado
main.tf - contemplando todos os arquivos de configuração (variables,outputs,versions,networks,main)


*A segunda modificação que realizei foi referente ao nome dos recursos, utilizei nome single, para facilitação de leitura e escrita de código

Exemplo correto: 
resource "aws_instance" "machine" 

Exemplo não recomendado:
resource "aws_instance" "machine_teste_prod"


*Terceira modificação foi referente as variaveis, em caso de alteração de valores a alteração será feita diretamente no arquivo variables e não no main.tf (80% do código está nessa segmentação)

Exemplo correto:
- variables.tf
variable quantity {
        default = "4"
}
- main.tf
count = var.quantity


Exemplo não recomendado.
- main.tf
count = 4


O código desenvolvido tem como output a criação de:

2 máquinas virtuais com o nome de kobold-test-instance-1 e kobold-test-instance-2 (a contagem é feita através da função count.index + 1)
1 security group com o nome de kobold-test-sg
regras de segurança a nível de máquina 
portas 443 a nível ingress liberada
porta 22 a nível ingress, anexada ao código no formato comentado, para o uso é necessário descomentar.
