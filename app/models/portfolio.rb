class Portfolio < ApplicationRecord
    has_many :technolofies
    validates_presence_of :title, :body, :image

    #Syntax 1
    def self.angular
        where(subtitle: 'Angular')
    end
    #Syntax 2 - Also known as the best Practice
    #scope :rub_on_rails_portfolio_items, ~> { where(subtitle: 'Ruby on Rails')}
end
