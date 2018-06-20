class Post < ActiveRecord::Base

    validates :title, presence: :true
    validates :clickbaity_title
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) }

  def correct_sphare_types
    if self.sphare.blank?
      errors.add(:sphare, "sphare is blank/invalid")
    elsif self.sphare.detect { |s| !(%w(Good Bad Neutral).include? s) }
      errors.add(:sphare, "sphare is invalid")
    end
  end


end
