class Comment < ActiveRecord::Base
belongs_to :blog

validates :name, :body, :presence=>true
end
