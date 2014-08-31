class SiteController < ApplicationController
  def about
  end

  def contact
  end

  def index
  	qry = params[:query]
  	if qry.to_s == ''
		  @les = Lesson.all.paginate(:page => params[:page], per_page: 6)
  	else
		  @les = Lesson.text_search(qry).paginate(:page => params[:page], per_page: 12)
  	end
  end

  def show
  end
end
