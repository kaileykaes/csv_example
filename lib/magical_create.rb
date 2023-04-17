require 'csv'

class MagicalCreator
  attr_reader :magical_pets
  
  def initialize
    @magical_pets = []
  end

  def create_magical_pets
    contents = CSV.open('./data/magical_pets.csv', headers: true, header_converters: :symbol)
    contents.each do |line|
      @magical_pets << MagicalPet.new(id = line[:id],
      name = line[:name],
      pet_owner_id = line[:pet_owner_id])
    end
  end
end