module Types
  class QueryType < Types::BaseObject
    description "The query root of this schema"
 
    field :article, Types::ArticleType, null: true do
      description "Find an article by multiple params"
      argument :id, ID, required: false
      argument :title, String, required: false
    end

    field :author, Types::AuthorType, null: true do
      description "Find an article by name"
      argument :name, String, required: false
    end
 
    # This method resolve the article field
    def article(args)
      Article.find_by(args)
    end

    # This method resolve the author field
    def author(name)
      Author.find_by(name)
    end
  end
end
