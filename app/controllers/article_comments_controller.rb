class ArticleCommentsController < ApplicationController
  
  def create
  end
  
  def destoy
  end
  
  private
  def article_comment_params
    params.require(:article_comment).permit(:name, :commet)
  end
  
end
