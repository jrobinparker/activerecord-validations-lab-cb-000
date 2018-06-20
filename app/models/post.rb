class Post < ActiveRecord::Base

    validates_inclusion_of :title, { in: %w(Believe) } 
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) }

end
