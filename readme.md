## **Bem vindo ao teste técnico da Platafora de Dados NSTech!**

*******
Tabelas de conteúdo 
 1. [Sobre](#about)

 2. [Passos para execução](#steps)

 3. [Descrição do Desafio Técnico](#description)

 4. [Contato](#contact)

*******
<div id='about'/> 

### Sobre

Bem-vindo ao teste técnico para admissão na vaga de Engenheiro de Plataforma (DevOps/SRE), esse desafio busca avaliar seus conhecimentos em orquestração de contêineres com Kubernetes, construção de pipelines de CI/CD e gerenciamento de infraestrutura DNS. Inicialmente, traremos as ferramentas necessárias para instalação e uso durante a execução do teste. Posteriormente, o próximo passo é a execução do Desafio Técnico, o qual tem uma seção detalhando as atividade que devem ser realizadas.

<div id='steps'/>

### Passos para execução

1. Instalação do Minikube e do Helm:

    Primeiramente, você precisa instalar o Minikube e o Helm. Certifique-se de que eles estão devidamente instalados antes de prosseguir com a implantação (deploy) do Spark e do Zeppelin. Os ícones abaixo levam às páginas oficiais.

    * [![Minikube][Minikube-logo]][Minikube-url]
    * [![Helm][Helm-logo]][Helm-url]

<div id='description'/>

### Descrição do Desafio Técnico

Você ocupa uma cadeira de Engenheiro de Infraestrutura do Datalake NSTech e precisa criar uma estrutura que utilize Spark + Zeppelin para viabilizar as atividades dos Analistas de Dados. 

Ao longo do desafio você deve:

1. Criar um namespace "spark-technical-test-data-platform";
2. Editar o makefile nos campos entre chaves para fazer o deploy dos ambientes com os values.yaml disponíveis:

    - Spark-Cluster: 
        [Arquivo Spark Cluster](./spark/manifests/values.yaml)

        Em "local-spark-cluster" fazer a troca em {path-values} com o arquivo values.yaml adequado;

        Em "local-spark-cluster" fazer a troca em {namespace} com o namespace criado;


    - Zeppelin: 

        No caso do zeppelin você terá que editar o [Arquivo Zeppelin](./zeppelin/manifests/values.yaml) antes do deploy.

        O mesmo precisará que você ajuste o ingress do values.yaml:

        ```sh
            ingress:
        ```

        Criando um dns de acesso com este padrão zeppelin.{minikube-ip}.nip.io alocando IP do seu Minikube.

        Além disso, também conecte seu zeppelin ao seu cluster Spark, preferencialmente pelo values.yaml.

        [Arquivo Zeppelin](./zeppelin/manifests/values.yaml)

        Em "local-zeppelin" fazer a troca em {path-values} com o arquivo values.yaml adequado;

        Em "local-zeppelin" fazer a troca em {namespace} com o namespace criado;      
   
3. Posteriormente, você deve utilizar a ferramenta OSS de sua preferência para a criação de uma pipeline CI/CD que garanta o deploy automático deste ambiente de desenvolvimento.

    Aloque a pipeline aqui: [Repositório CI/CD](./pipelines)

4. Por fim, coloque em resolutions as imagens de prova de execução:
    - PODs em funcionamento;
    - Zeppelin acessado pelo DNS;
    - Interpreter Spark do Zeppelin apontado para o Spark;
    - Pipeline com execução de sucesso.

    Aloque as imagens aqui: [Resoluções](./resolutions)
<div id='contact'/>

### Contato

Em caso de dúvidas ou dificuldades, basta entrar em contato com a pessoa responsável pelo seu processo seletivo. Em caso de necessidade, algum membro do time de Engenharia de Dados será alocado para te ajudar.

<!-- MARKDOWN LINKS & IMAGES -->

[Minikube-logo]: images/minikube-logo.svg
[Minikube-url]: https://minikube.sigs.k8s.io/
[Helm-logo]: images/helm-logo.svg
[Helm-url]: https://helm.sh/