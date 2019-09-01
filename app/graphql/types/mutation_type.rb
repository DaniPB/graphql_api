# app/graphql/types/mutation_type.rb
module Types
  class MutationType < Types::BaseObject
    field :createArticle, mutation: Mutations::CreateArticle
    field :updateArticle, mutation: Mutations::UpdateArticle
  end
end
