require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  context 'ユーザー登録できる時' do
    it '正しく情報を入力すればユーザー登録ができる' do
      expect(@user).to be_valid
    end
  end
  context 'ユーザー登録できない時' do
    it 'ユーザー名が空だと登録できない' do
      @user.name = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("ユーザー名を入力してください")
    end
    it 'メールアドレスが空だと登録できない' do
      @user.email = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("メールアドレスを入力してください")
    end
    it 'パスワードが空だと登録できない' do
      @user.password = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("パスワードを入力してください")
    end
    it 'メールアドレスは@を含まないと登録できない' do
      @user.email = "email.com"
      @user.valid?
      expect(@user.errors.full_messages).to include("メールアドレスは不正な値です")
    end
    it '重複したメールアドレスが存在する場合は登録できない' do
      @user.save
      @another_user = FactoryBot.build(:user)
      @another_user.email = @user.email
      @another_user.valid?
      expect(@another_user.errors.full_messages).to include("メールアドレスはすでに存在します")
    end
    it 'パスワードとパスワード（確認）が不一致では登録できない' do
      @user.password = "123456"
      @user.password_confirmation = "789123"
      @user.valid?
      expect(@user.errors.full_messages).to include("パスワード（確認用）とパスワードの入力が一致しません")
    end
    it 'パスワードが5文字以下では登録できない' do
      @user.password = "12345"
      @user.valid?
      expect(@user.errors.full_messages).to include("パスワードは6文字以上で入力してください")
    end
    it 'パスワードが129文字以上では登録できない' do
      @user.password = Faker::Number.number(digits: 129)
      @user.valid?
      expect(@user.errors.full_messages).to include("パスワードは128文字以内で入力してください")
    end
  end
end
