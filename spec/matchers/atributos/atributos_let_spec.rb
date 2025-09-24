require 'pessoa'

describe 'Atributos' do

    let(:pessoa) { Pessoa.new } #Mantém a instância no cachê até o fim do teste

    it 'have_attributes' do
        pessoa.nome = "Guilherme"
        pessoa.idade = 22

        expect(pessoa).to have_attributes(nome: starting_with("G"), idade: (be >= 22))
    end

    it 'have_attributes' do
        pessoa.nome = "Jose"
        pessoa.idade = 25

        expect(pessoa).to have_attributes(nome: starting_with("J"), idade: (be >= 25))
    end
end