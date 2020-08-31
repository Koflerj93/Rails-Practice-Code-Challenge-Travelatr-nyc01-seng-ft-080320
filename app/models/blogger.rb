class Blogger < ApplicationRecord
    has_many :posts
    has_many :destinations, through: :posts

    validates :name, uniqueness: true
    validates :age, numericality: { greater_than: 0 }
    validates :bio, length: { minimum: 30 } 

    def total_likes
        self.posts.sum { |post| post.likes }
    end

    def top_5_destinations
        (blog_location_count.sort_by{|k,v| v}.reverse)[0...5]
    end

    def blog_location_count
        self.destinations.group(:name).count
    end

end
