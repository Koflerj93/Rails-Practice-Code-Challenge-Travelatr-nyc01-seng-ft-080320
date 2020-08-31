class Destination < ApplicationRecord
    has_many :posts
    has_many :bloggers, through: :posts

    def last_5_posts
        self.posts.order(created_at: 'desc').limit(5)
    end

    def average_age
        unique_bloggers = self.bloggers.uniq
        (unique_bloggers.sum {|blogger| blogger.age })/unique_bloggers.length
    end
end
