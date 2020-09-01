class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

    def featured_post
      if self.posts != []
        self.posts.order(:likes).last
      else
        Blogger.first.posts.first
      end
    end

    
end
