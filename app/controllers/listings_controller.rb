class ListingsController < ApplicationController
  before_action :current_user_must_be_listing_user, :only => [:edit, :update, :destroy]

  def current_user_must_be_listing_user
    listing = Listing.find(params[:id])

    unless current_user == listing.user
      redirect_to :back, :alert => "You are not authorized for that."
    end
  end

  def index
    @listings = Listing.all

    render("listings/index.html.erb")
  end

  def show
    @shortlist = Shortlist.new
    @listing = Listing.find(params[:id])

    render("listings/show.html.erb")
  end

  def new
    @listing = Listing.new

    render("listings/new.html.erb")
  end

  def create
    @listing = Listing.new

    @listing.type_id = params[:type_id]
    @listing.category_id = params[:category_id]
    @listing.name = params[:name]
    @listing.description = params[:description]
    @listing.price = params[:price]
    @listing.user_id = params[:user_id]
    @listing.images = params[:images]
    @listing.purchase_date = params[:purchase_date]
    @listing.link = params[:link]
    @listing.status = params[:status]

    save_status = @listing.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/listings/new", "/create_listing"
        redirect_to("/listings")
      else
        redirect_back(:fallback_location => "/", :notice => "Listing created successfully.")
      end
    else
      render("listings/new.html.erb")
    end
  end

  def edit
    @listing = Listing.find(params[:id])

    render("listings/edit.html.erb")
  end

  def update
    @listing = Listing.find(params[:id])

    @listing.type_id = params[:type_id]
    @listing.category_id = params[:category_id]
    @listing.name = params[:name]
    @listing.description = params[:description]
    @listing.price = params[:price]
    @listing.user_id = params[:user_id]
    @listing.images = params[:images]
    @listing.purchase_date = params[:purchase_date]
    @listing.link = params[:link]
    @listing.status = params[:status]

    save_status = @listing.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/listings/#{@listing.id}/edit", "/update_listing"
        redirect_to("/listings/#{@listing.id}", :notice => "Listing updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Listing updated successfully.")
      end
    else
      render("listings/edit.html.erb")
    end
  end

  def destroy
    @listing = Listing.find(params[:id])

    @listing.destroy

    if URI(request.referer).path == "/listings/#{@listing.id}"
      redirect_to("/", :notice => "Listing deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Listing deleted.")
    end
  end
end
