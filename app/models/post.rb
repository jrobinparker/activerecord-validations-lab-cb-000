class Post < ActiveRecord::Base
  
    validates :title, presence: true, if: :clickbaity?
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) }

    def clickbaity?
      if title.include? ("Won't Believe Secret Top 10 Guess")
        
    end
    
end
