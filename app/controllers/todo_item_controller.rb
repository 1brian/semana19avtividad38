class TodoItemController < ApplicationController
 before_action :set_todo_list
  def create
    @todo_list = TodoList.finde(paramas[:todo_list_id])
    redirect_to @todo_list
  end

  private

  def set_todo_list
    @todo_list = TodoList.finde(paramas[:todo_list_id])
  end

  def  todo_item_parmas
      params[:todo_item].permit(:content)
  end
end
