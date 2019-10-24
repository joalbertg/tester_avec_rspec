require 'rails_helper'

RSpec.describe Post, type: :model do
  context 'comment association' do
    it 'should increment comments_count' do
      post = Post.create(name: 'Salut les gens')
      post.comments << Comment.new(content: 'Demo')

      expect(Comment.count).to eq(1)
      expect(post.comments_count).to eq(1)
    end
  end

  it 'should persist a post' do
    Post.create(name: 'Salut les gens')

    expect(Post.count).to eq(1)
  end
end
