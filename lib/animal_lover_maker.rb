require 'csv'

class AnimalLoverMaker
  attr_reader :animal_lovers
  
  def initialize
    @animal_lovers = []
  end

  def make_animal_lovers
    contents = CSV.open('./data/animal_lovers.csv', headers: true, header_converters: :symbol)
    contents.each do |line|
      animal_lovers << AnimalLover.new(
      id = line[:id],
      first_name = line[:first_name],
      last_name = line[:last_name],
      age = line[:age])
    end
  end
end