class Post < ActiveRecord::Base
  
    validates :title, presence: true 
    validates :summary, { maximum: 250 }
  
end
