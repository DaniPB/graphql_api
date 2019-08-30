RSpec.describe Types::ArticleType do
  subject { described_class.to_graphql }

  it { is_expected.to have_field(:title).of_type(!types.String) }
  it { is_expected.to have_field(:text).of_type(!types.String) }
  it { is_expected.to have_field(:publishedAt).of_type(!types.String) }
  it { is_expected.to have_a_field(:article).of_type("Article!") }
end
