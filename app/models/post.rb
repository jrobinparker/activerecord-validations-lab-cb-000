class Post < ActiveRecord::Base
  
    validates :title, presence: true, inclusion: { in: %w(Wont Believe Secret Top 10 Guess) }
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) }

  def validates_

end
