class CommentsController < ApplicationController
  before_action :set_entry
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  def create
    @comment = @entry.comments.create(comment_params)

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @entry, notice: 'Comentario añadido existosamente.' }
        format.json { render :show, status: :created, location: @entry }
      else
        format.html { render :new }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_entry
      @entry = Entry.find(params[:entry_id])
  end

  def comment_params
     params[:comment].permit(:nombre, :entry_id, :texto)
  end
end
