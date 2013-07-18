class IncomingMailsController < ApplicationController

  def create
    @todo =  Todo.new(
      :done => 'N',
      :description => params[:headers]['Subject']
    )
    if @todo.save
      render :text => 'Success', :status => 200
    else
      render :text => message.errors.full_messages, :status => 422, :content_type => Mime::TEXT.to_s
    end
  end
end
