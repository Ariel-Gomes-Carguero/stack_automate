<h2> Automação Terraform + Ansible </h2>

<img align="right" src="https://blog.pythian.com/wp-content/uploads/Untitled-2.png">


A automação funciona basicamente unindo as duas ferramentas, o Terraform criara o ambiente na AWS, no nosso caso é algo simples
uma ec2 inserida em um security group que libera as portas necessarias para visualizarmos nossa config após provisionada, o ansible
irá provisionar uma página Web através de uma playbook bem genérica porém funcional, personalize de acordo com sua necessidade e melhores
práticas em sua organização.


<br>

<h3>Requisitos:</h3>

- Para o correto funcionamento tenha instalado em sua maquina o Terraform, Ansible, aws-cli
- No caso configurei as chaves da aws diretamente na Aws-cli se preferir configure suas chaves diretamente no modulo do terraform
- Clone o repo e dê permissão ao arquivo automate.sh com chmod +x
<br>
Basicamente para rodar a automação basta configurar as ferramentas descritas acima e executar o script automate.sh, assim será executado o módulo
do terraform e ira gerar um arquivo inventory com o IP da ec2 que será acessado pelo ansible automaticamente, instalara o Apache e enviara os 
arquivos de conf e uma página de teste, após isso acesse o ip no navegador e verá a página funcionando.
<br>
<br>
<h3>Configurando o módulo:</h3>

Configure o caminho da sua chave .pem da aws no arquivo terraform/inventory.tmpl

<b>ansible_ssh_private_key_file='endereco-da-sua-chave/terraform.pem'</b>

Esse arquivo é responsável por criar a config que a playbook do ansible irá acessar, personalize com o nome de usuario da ec2, endereço da chave e nome de grupo de hosts por exemplo.
