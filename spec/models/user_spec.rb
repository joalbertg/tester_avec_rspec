require 'rails_helper'

RSpec.describe User, type: :model do
  context '#import' do
    it 'should return the right name' do
      user = User.new
      allow(user).to receive(:call_api)
        .and_return('[{"name": "John doe"}, {}, {}]')

      expect(user).to receive(:call_api).with('https://jsonplaceholder.typicode.com/users')
      expect(user.import).to eq('John doe')
    end
  end
end
