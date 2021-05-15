class ArticleCommentsController < ApplicationController
  
  def create
    @article = Article.find(params[:article_id])
    @article_comment = @article.article_comments.create(article_comment_params)
    redirect_to article_path(@article)
  end
  
  def destroy
    @article = Article.find(params[:article_id])
    @article_comment = @article.article_comments.find(params[:id])
    @article_comment.destroy
    redirect_to article_path(@article)
  end
  
  private
  def article_comment_params
    params.require(:article_comment).permit(:name, :comment)
  end
  
end
