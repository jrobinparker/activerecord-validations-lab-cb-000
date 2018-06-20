class Post < ActiveRecord::Base

    validates_inclusion_of :title, { in: %w("Won't Believe", "Secret", "Top 10", "Guess") } 
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) }

end
