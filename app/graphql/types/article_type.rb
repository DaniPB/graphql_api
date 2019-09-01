module Types
  class ArticleType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: true
    field :text, String, null: true
    field :publishedAt, String, null: true
    field :author, Types::AuthorType, null: true
  end
end
