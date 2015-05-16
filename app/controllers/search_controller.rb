class SearchController < ApplicationController
  def new
  end

  def create
  	render new
  	@pg=User.joins(:microposts).select(:name, :phone_no).where('microposts.bname LIKE ?','%[:search][:key]')
  	
  end
  def show
  	#@pg = User.find(params[:id])
  end
  def delete
  end
end
