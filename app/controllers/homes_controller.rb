class HomesController < ApplicationController
  
  def top
    if params[:category_id]
      # Categoryのデータベースのテーブルから一致するidを取得
      @category = Category.find(params[:category_id])
    end
    @articles = Article.all
  end
  
  def index
    @articles = Article.all
    
    # urlにcategory_id(params)がある場合
    if params[:category_id]
      # Categoryのデータベースのテーブルから一致するidを取得
      @category = Category.find(params[:category_id])
       
      # category_idと紐づく投稿を取得
      @articles = @category.articles.order(created_at: :desc).all
    else
      # 投稿すべてを取得
      @articles = Article.order(created_at: :desc).all
    end
  end

end
