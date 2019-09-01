# app/graphql/mutations/update_article.rb
class Mutations::UpdateArticle < Mutations::BaseMutation
  null true

  argument :id, ID, required: true
  argument :title, String, required: false
  argument :text, String, required: false

  field :article, Types::ArticleType, null: false
  field :errors, [String], null: false

  def resolve(id:, title:, text:)
    article = Article.find(id)

    if article.update(title: title, text: text)
      # Successful update, return the updated object with no errors
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
