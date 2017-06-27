class CommentsController < ApplicationController

  def create
     @comment = current_user.comment.build(comment_params)
     @topic = @comment.topic

     respond_to do |format|
       if @comment.save
         format.html { redirect_to topic_path(@topic), notice: 'コメントを投稿しました。' }

         format.js { render :index }
       else
         format.html { render :new }
       end
     end
   end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    respond_to do |format|
      if @comment.destroy
        format.html { redirect_to topic_path(@topic),notice: '削除しました' }

        format.js {render :index}
      else
        format.html {render :new}
      end
    end
  end

  def edit
    @comment = Comment.find(params[:id])
    @topic = @comment.topic
  end

  def update
    @topic = Topic.find(params[:topic_id])
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)

    respond_to do |format|
      if @comment.save
      format.html { redirect_to topic_path(@topic),notice: '更新しました' }
      else
        redirect_to topic_path(@topic), notice: '何か問題あります'
    end
  end
end


   private
     def comment_params
       params.require(:comment).permit(:topic_id, :content)
     end
 end
