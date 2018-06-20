class Author < ActiveRecord::Base
  
  validates :name, uniqueness: true 
  validates :phone_number, { length: 20 }
end
