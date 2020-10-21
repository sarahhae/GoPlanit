class Item < ApplicationRecord
  has_and_belongs_to_many :trip

  def details
    "#{flight} #{accomodation} #{activity} #{transport} #{insurance} #{misc}"
  end
end
