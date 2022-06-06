require 'rails_helper'

RSpec.describe Record, type: :model do
  before do
    @record = FactoryBot.build(:record)
  end

  it '作成ボタンを押せば記録を作成できる' do
    expect(@record).to be_valid
  end
end
