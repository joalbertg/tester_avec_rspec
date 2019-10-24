require 'rails_helper'

RSpec.describe Comment, type: :model do
  context 'validation' do
    it 'should validate content length' do
      comment = Comment.new(content: 'Demo')
      comment.validate

      expect(comment.errors.messages).to include(:content)
      expect(comment.valid?).to be false
    end
  end
end
