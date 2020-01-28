class MessagesController < ApplicationController
 
end
# 引数について調べよう

# 変更前
# def users_params
#   params.require(:name).permit(:name, :email,:created_at,:updated_at)　
# end