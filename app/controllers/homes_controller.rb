class HomesController < ApplicationController
  
  def top
    @articles = Article.all
    
  end
  
  def index
    @articles = Article.all
    @article_amount = Article.count
    # @categories = Category.all
    # @category = 0
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
