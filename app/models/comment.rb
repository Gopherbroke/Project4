class Comment < ApplicationRecord
  belongs_to :pieces
  belongs_to :users
end
