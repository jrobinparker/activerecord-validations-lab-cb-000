class Post < ActiveRecord::Base
  
    validates :title, presence: true
    validates_inclusion_of
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) }

    def clickbaity(:title)
      if title.include? ("Won't Believe Secret Top 10 Guess")
        errors.add(:title, "not clickbaity enough!")
      end
    end
    
end
