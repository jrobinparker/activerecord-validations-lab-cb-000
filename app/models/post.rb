class Post < ActiveRecord::Base
  
    validates :title, presence: true, inclusion: { in: %w(Wont Believe Secret Top 10 Guess) }
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) }

  def clickbait
    clickbait_title = ["Won't Believe", "Secret", "Top 10", "Guess"]
    if title.includes.any?

end
