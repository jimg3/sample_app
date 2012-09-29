class StaticPagesController < ApplicationController

  def home
    if signed_in?
      @micropost  = current_user.microposts.build
#      WillPaginate::ViewHelpers.pagination_options[:inner_window] = 1
      @feed_items = current_user.feed.paginate(page: params[:page], per_page: 10)
    end
  end

  def help
  end

  def about
  end

  def contact
  end

end
