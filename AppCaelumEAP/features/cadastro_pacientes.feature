Feature: Cadastro de Pacientes
    Como um funcionario
    Eu quero cadastrar um paciente
    Para que eu possa acompanhar os estados e estatísticas de seu tratamento

Scenario: Successful register of pacient
    Given I am on the pacientes page
    When I click on the 'New Paciente' link
    And I fill Cpf with <12345678910>
    And I fill Nome with <Nome do Paciente>
    And I fill Idade with <42>
    And I fill Genero with <Feminino>
    And I fill Hip diag with <Suspeitas de cancer de mama>
    And click on the 'Create Paciente' button
    Then I should see the text Paciente was successfully created.

Scenario: Patient register without Cpf
    Given I am on the pacientes page
    When I click on the 'New Paciente' link
    And I fill Nome with <Nome do Paciente>
    And I fill Idade with <42>
    And I fill Genero with <Feminino>
    And I fill Hip diag with <Suspeitas de cancer de mama>
    And click on the 'Create Paciente' button
    Then I should see the text Invalid Cpf or Nome.

Scenario: Patient register without Nome
    Given I am on the pacientes page
    When I click on the 'New Paciente' link
    And I fill Cpf with <12345678910>
    And I fill Idade with <42>
    And I fill Genero with <Feminino>
    And I fill Hip diag with <Suspeitas de cancer de mama>
    And click on the 'Create Paciente' button
    Then I should see the text Invalid Cpf or Nome.