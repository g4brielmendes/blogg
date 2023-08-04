class BlogPost < ApplicationRecord
    validates :title, presence: true 
    validates :body, presence: true
    
    scope :draft, -> { where(published_at:nil)}
    scope :published, -> { where("published_at: <= ?", Time.curent ) }
    scope :scheduled, -> { where("published_at: > ?", Time.curent ) }
end

BlogPost.all
BlogPost.draft
BlogPost.published
BlogPost.scheduled

'published_at' datetime field
-nil
-1.year.ago
-1.year.from_now