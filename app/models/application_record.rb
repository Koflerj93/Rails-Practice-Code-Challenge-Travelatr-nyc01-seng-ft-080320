class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

    def featured_post
        self.posts.order(:likes).last
    end

    
end
