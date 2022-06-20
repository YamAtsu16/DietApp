require 'rails_helper'

RSpec.describe Body, type: :model do
  before do
    @body = FactoryBot.build(:body)
  end
  context '体重記録が保存できる時' do
    it '体重が入力されている' do
      expect(@body).to be_valid
    end
  end
  context '体重記録が保存できない時' do
    it '体重が入力されていない' do
      @body.weight = ""
      @body.valid?
      expect(@body.errors.full_messages).to include("Weightを入力してください")
    end
    it '体重が半角数字で入力されていない' do
      @body.weight = "１００"
      @body.valid?
      expect(@body.errors.full_messages).to include("Weightは数値で入力してください")
    end
  end
end
