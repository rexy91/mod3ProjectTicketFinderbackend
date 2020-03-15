class ReviewSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :content, :content, :rating

    belongs_to :user
end
