class Post < ActiveRecord::Base

    validates :title, presence: :true
    validate :clickbaity_title
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) }

  def clickbaity_title
    if self.title.include?(["Won't Believe", "Secret", "Top 10", "Guess"].include? s) }
      errors.add(:title, "title is not clickbaity enough!")
    end
  end


end
