require './lib/animal_lover_maker'
require './lib/animal_lover'

RSpec.describe AnimalLoverMaker do
  before(:each) do
    @animal_lover_maker = AnimalLoverMaker.new
  end

  describe '#initialize' do 
    it 'exists and has attributes' do 
      expect(@animal_lover_maker).to be_a AnimalLoverMaker
      expect(@animal_lover_maker.animal_lovers).to eq([])
    end
  end

  describe 'make animal lovers' do
    it'#make_animal_lovers' do 
      @animal_lover_maker.make_animal_lovers
      expect(@animal_lover_maker.animal_lovers[0]).to be_a AnimalLover
    end
  end
end