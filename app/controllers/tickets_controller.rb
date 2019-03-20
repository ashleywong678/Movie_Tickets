class TicketsController < ApplicationController

  get "/tickets" do
    @user = User.find(session[:user_id])
    @tickets = Ticket.find_by(:user_id => session[:user_id])
    erb :"/tickets/index"
  end

  get "/tickets/new" do
    if logged_in?
      erb :"/tickets/new"
    else
      redirect '/welcome'
    end
  end

  # POST: /tickets
  post "/tickets" do
    redirect "/tickets"
  end

  # GET: /tickets/5
  get "/tickets/:slug" do
    erb :"/tickets/show"
  end

  # GET: /tickets/5/edit
  get "/tickets/:slug/edit" do
    erb :"/tickets/edit.html"
  end

  # PATCH: /tickets/5
  patch "/tickets/:slug" do
    redirect "/tickets/:id"
  end

  # DELETE: /tickets/5/delete
  delete "/tickets/:id/delete" do
    redirect "/tickets"
  end
end
