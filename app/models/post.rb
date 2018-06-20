class Post < ActiveRecord::Base

    validates :title, inclusion { in: %w(Believe) } 
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) }

end
