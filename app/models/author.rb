class Author < ActiveRecord::Base
  
  validates :name, length
end
