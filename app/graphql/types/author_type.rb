module Types
  class AuthorType < Types::BaseObject
    field :name, String, null: true
    field :articles, [Types::ArticleType], null: true
  end
end
