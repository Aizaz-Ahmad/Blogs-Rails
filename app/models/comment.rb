# https://guides.rubyonrails.org/getting_started.html#adding-a-second-model
class Comment < ApplicationRecord
  include Visible
  belongs_to :article
end
