class Post < ActiveRecord::Base
  
    validates :title, presence: true
    validates :
    validates :summary, length: { maximum: 250 }
  
end
