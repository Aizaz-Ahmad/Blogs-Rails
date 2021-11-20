class Article < ApplicationRecord
    #https://guides.rubyonrails.org/getting_started.html#associating-models
    has_many :comments
    #https://guides.rubyonrails.org/getting_started.html#validations-and-displaying-error-messages
    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }
end
