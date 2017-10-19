class PostSerializer < ActiveModel::Serializer
 # belongs_to :user
  attributes :id, :title, :body, :published_at, :author

  def published_at
    object.published_at.strftime("%d/%m/%Y  at %I:%M%p")
  end

end
