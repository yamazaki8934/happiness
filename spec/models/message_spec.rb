require 'rails_helper'

RSpec.describe Message, type: :model do
  # こんな感じで書く
  # describe '最上位グループメソッドなどを書く' do
  #   context '場合分け。ログインしてる場合、正常処理の場合' do
  #     it '正常に200のレスポンスを返すこと' do
  #     end
  #   end
  # end

  # Message.like_userで実装しようとしたこと:
  # いいね機能をつけようと思ってかいて見たコード

  describe '#like_user' do
    context 'likesにすでにデータが登録されている場合' do
      let(:dummy_user) { create(user, id: 1) }
      let(:message) { Message.new }
      # itのラベルにxをつけるとPENDINGにすることができる
      xit 'likeされていること' do
        # 実際に実装途中なのでテストケースがグリーンになることはないが、このようにテストコードを書く
        # この場合、何を想定しているかというと
        # likeをするとMessage.like_countがカウントアップするので、カウントアップするかどうかの検証を行う
        expect{ message.like_user(user_id: dummy_user.id) }.to change( message.likes_count ).from(0).to(1)
      end
    end

    context 'likesにデータが登録されていない場合' do
      xit 'likeされないこと' do
        # 省略
      end
    end
  end
end
