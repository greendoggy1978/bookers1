def create
  @post = Post.new(post_params)
  @post.user_id = current_user.id
  if @post.save
    # リダイレクトと同時に'投稿に成功しました'を表示
    redirect_to posts_path, notice: '投稿に成功しました'
  else
    render :new
  end
end

def destroy
  @post = Post.find(params [:id])
  @post.destroy
   # リダイレクトと同時に'投稿を削除しました'を表示
  redirect_to posts_path, alert: '投稿を削除しました'
end

def create
  @post = Post.new(post_params)
  @post.user_id = current_user.id
  if @post.save
    # 正常に保存ができたときの処理
    redirect_to posts_path, notice: '投稿に成功しました'
  else
    # バリデーションに引っかかったときの処理
    render :new
  end
end