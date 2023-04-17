require './lib/magical_create'
require'./lib/magical_pet'

RSpec.describe MagicalCreator do
  before(:each) do
    @magical_creator = MagicalCreator.new
  end

  describe '#initialize' do 
    it 'exists and has attributes' do 
      expect(@magical_creator).to be_a MagicalCreator
      expect(@magical_creator.magical_pets).to eq([])
    end
  end

  describe 'create animal lovers' do
    it'#create_magical_pets' do 
      @magical_creator.create_magical_pets
      expect(@magical_creator.magical_pets[0]).to be_a MagicalPet
    end
  end
end