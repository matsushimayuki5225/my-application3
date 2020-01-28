class PostsController < ApplicationController
  def index
  end

  def new
    @messsage= Message.new
  end

  def create 
    Post.create(messages_params)
  end

  def show
  end

  private
  def messages_params
    params.permit(:nickname, :message).merge(user_id: current_user.id)
    # ２ postテーブルのnicknameとmessageだけ保存したい！ 保存するカラムの指定
    # セキリティー上の対応で、保存する値を指定しないと、悪質なデータも取り込んでしまう
    # mergeメソッドを利用して、postというハッシュの中に、user_idというキーを結合して、user_idをpostsテーブルに登録できるようにしました。
    # user_idは、ログイン中のユーザーidが必要なため、current_user.idと記述することで取得が可能です。
  end
end


# 引数について調べよう