require 'rails_helper'

RSpec.describe Article, type: :model do

  describe 'associations' do
    it { should belong_to(:author).class_name('Author') }
  end

  describe 'validations' do
    it { should validate_presence_of(:title) }
  end
end
