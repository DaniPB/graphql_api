module Types
  class ArticleType < Types::BaseObject
    field :title, String, null: true
    field :text, String, null: true
    field :publishetAt, String, null: true
    field :author, Types::AuthorType, null: true
  end
end
