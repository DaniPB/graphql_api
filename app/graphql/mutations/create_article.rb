# app/graphql/mutations/create_article.rb
class Mutations::CreateArticle < Mutations::BaseMutation
  null true

  argument :title, String, required: true
  argument :text, String, required: true
  argument :author_name, String, required: true

  field :article, Types::ArticleType, null: true
  field :errors, [String], null: false

  def resolve(title:, text:, author_name:)
    author = Author.find_by(name: author_name)
    article = Article.new(title: title, text: text, author: author)

    if article.save
      # Successful creation, return the created object with no errors
      {
        article: article,
        errors: [],
      }
    else
      # Failed save, return the errors to the client
      {
        article: nil,
        errors: article.errors.full_messages
      }
    end
  end
end
