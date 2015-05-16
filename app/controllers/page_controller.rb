class PageController < ApplicationController
  def index
  	if logged_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed
    end
  end
  #def new
  #  @pg=User.joins(:microposts).select(:name,).where('microposts.bname LIKE ?','%[:search][:key]')
  #end

  def contact
  	@title="Contact"
  end

  def page_about_us
  	@title="About"
  end
end
