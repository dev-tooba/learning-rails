class Blog < ApplicationRecord
    enum status: {draft: 0, published: 1}
    extend FriendlyId
    friendly_id :title, use: [:slugged, :history]

    validates_presence_of :title
    # belongs_to: topic
end
