# https://guides.rubyonrails.org/getting_started.html#adding-a-second-model
class Comment < ApplicationRecord
  belongs_to :article
end
