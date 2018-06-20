class Post < ActiveRecord::Base
  
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
    validates :title, inclusion: { in: %w("Won't Believe" "Secret" "Top 10" "Guess") }
  
end
