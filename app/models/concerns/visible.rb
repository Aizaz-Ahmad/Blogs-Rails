# https://guides.rubyonrails.org/getting_started.html#using-concerns
module Visible
    extend ActiveSupport::Concern

    VALID_STATUSES = ['public', 'private', 'archived']
    # To include at the class level
    included do
        validates :status, inclusion: { in: VALID_STATUSES}
    end
    class_methods do
        def public_count
            where(stauts: 'public').count
        end
    end
    def archived?
        status == 'archived'
    end
end