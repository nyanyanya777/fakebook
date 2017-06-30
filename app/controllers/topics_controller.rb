class TopicsController < ApplicationController
  before_action :set_topic, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update]
  before_action :authenticate_user!

  def index
   @topics = Topic.page(params[:page])
   if params[:id].present?
     set_topic
   else
     @topic = Topic.new
   end
  end

  def show
  @comment = @topic.comment.build
  @comments = @topic.comment
  end

  def create
    @topic = Topic.new(topic_params)
    @topic.user_id = current_user.id

      if @topic.save
        redirect_to request.referer, notice: '投稿しました！'
      else
        redirect_to request.referer, notice: '中身が空です'
      end
    end

  def update
  if @topic.user_id = current_user.id
    @topic.update(topic_params)
     redirect_to @topic, notice: '編集しました'
  else
     redirect_to @topic, notice: '何か問題があります'
  end
end

  def destroy
  if @topic.destroy
     redirect_to topics_url, notice: '削除しました'
   else
     redirect_to topics_url, notice: '削除できませんでした'
   end
  end

  private
    def set_topic
      @topic = Topic.find(params[:id])
    end

    def correct_user
      unless @topic.user.id == current_user.id
      redirect_to  request.referer
    end
  end

    def topic_params
      params.require(:topic).permit(:content, :photo)
    end
  end
