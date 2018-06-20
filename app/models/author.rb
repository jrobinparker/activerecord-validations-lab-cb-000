class Author < ActiveRecord::Base
  
  validates :name, uniqueness: true 
  validates :phone_number,  length: { is 20 }
end
