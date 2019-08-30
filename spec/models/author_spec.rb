require 'rails_helper'

RSpec.describe Author, type: :model do
  describe 'associations' do
    it { should have_many(:articles).class_name('Article') }
  end
end
