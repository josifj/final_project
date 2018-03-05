class ShortlistsController < ApplicationController
  before_action :current_user_must_be_shortlist_user, :only => [:show, :edit, :update, :destroy]

  def current_user_must_be_shortlist_user
    shortlist = Shortlist.find(params[:id])

    unless current_user == shortlist.user
      redirect_to :back, :alert => "You are not authorized for that."
    end
  end

  def index
    @q = current_user.interests.ransack(params[:q])
      @shortlists = @q.result(:distinct => true).includes(:user, :listing).page(params[:page]).per(10)

    render("shortlists/index.html.erb")
  end

  def show
    @shortlist = Shortlist.find(params[:id])

    render("shortlists/show.html.erb")
  end

  def new
    @shortlist = Shortlist.new

    render("shortlists/new.html.erb")
  end

  def create
    @shortlist = Shortlist.new

    @shortlist.user_id = params[:user_id]
    @shortlist.listing_id = params[:listing_id]

    save_status = @shortlist.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/shortlists/new", "/create_shortlist"
        redirect_to("/shortlists")
      else
        redirect_back(:fallback_location => "/", :notice => "Shortlist created successfully.")
      end
    else
      render("shortlists/new.html.erb")
    end
  end

  def edit
    @shortlist = Shortlist.find(params[:id])

    render("shortlists/edit.html.erb")
  end

  def update
    @shortlist = Shortlist.find(params[:id])
    @shortlist.listing_id = params[:listing_id]

    save_status = @shortlist.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/shortlists/#{@shortlist.id}/edit", "/update_shortlist"
        redirect_to("/shortlists/#{@shortlist.id}", :notice => "Shortlist updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Shortlist updated successfully.")
      end
    else
      render("shortlists/edit.html.erb")
    end
  end

  def destroy
    @shortlist = Shortlist.find(params[:id])

    @shortlist.destroy

    if URI(request.referer).path == "/shortlists/#{@shortlist.id}"
      redirect_to("/", :notice => "Shortlist deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Shortlist deleted.")
    end
  end
end
