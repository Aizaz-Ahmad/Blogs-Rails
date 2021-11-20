# https://guides.rubyonrails.org/getting_started.html#adding-a-second-model
class Comment < ApplicationRecord
  belongs_to :article
  VALID_STATUSES = ['public', 'protected', 'archived']
  validates :status, inclusion: {in: VALID_STATUSES}
  def archived?
    status == 'archived'
  end
end
