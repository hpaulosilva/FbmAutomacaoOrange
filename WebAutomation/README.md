Pré Requisitos para rodar os testes e realizar uma automação digna !

Robot Framework.

1. Python
    Ter o python instalado em sua maquina 
2. Pip3
    Ter o gerenciador de pacotes pip3

3. Validar as versões instaladas
    python3 --version
    pip3 --version

4. Instalar o Robot
    pip install robotframework

5.Instalar o chromedriver ou geckodriver
    Download: ChromeDriver ou Geckodriver
    Obs: Nesse projeto eu estou o usando o Geckdriver, usei uma maquina linux

6. Demais comando se nessesarios.
    pip install robotframework
    pip install robotframework-seleniumlibrary
    pip install robotframework-requests  # Se necessário
    pip install robotframework-databaselibrary  # Se necessário
    pip install robotframework-excellibrary  # Se necessário

    Obs: Nesses testes eu uso a library selenium


7. Em config.robot fica minha chamada de inicialização do Firefox ou chrome

8. em Commons fica meu hooks, configurado o Start test e finish test, Chamando os driver.

9. Pages encontra-se todas as paginas com mapeamento de elementos.

10. Pasta teste esta todos meus casos de testes:
    OBS: O sistema é meio estranho toda vez que abre um cadastro e fecha a aplicação para abrir o cenario de consulta então os dados salvos estavam se perdendo, neste caso fiz um teste com o nome 4_CenarioCompleno_feature que Realiza cadastro, Consulta, Exclução e Edição de Pessoa.

Sou Paulo Henrique e qualquer coisa estou a disposição.