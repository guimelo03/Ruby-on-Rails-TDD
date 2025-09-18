require 'pessoa'

describe 'Atributos' do

    before(:context) do
        puts '>>>>>> ANTES de cada teste'
        @pessoa = Pessoa.new
    end

    after(:all) do
        @pessoa.nome = 'Sem nome!'
        puts ">>>>>> DEPOIS de cada teste #{@pessoa.inspect}"
    end

    around(:each) do |teste|
        puts 'ANTES'
        @pessoa = Pessoa.new

        teste.run

        @pessoa.nome = 'Sem nome!'
        puts "DEPOIS >>>>>> #{@pessoa.inspect}"
    end

    it 'have_attributes' do
        @pessoa.nome = "Guilherme"
        @pessoa.idade = 22

        expect(@pessoa).to have_attributes(nome: starting_with("G"), idade: (be >= 22))
    end

    it 'have_attributes' do
        @pessoa.nome = "Jose"
        @pessoa.idade = 25

        expect(@pessoa).to have_attributes(nome: starting_with("J"), idade: (be >= 25))
    end
end