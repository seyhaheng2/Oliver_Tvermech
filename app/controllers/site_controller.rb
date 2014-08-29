class SiteController < ApplicationController
  def about
  end

  def contact
  end

  def index
  	@les = Lesson.paginate(:page => params[:page], :per_page => 11).order("created_at desc")
  end

  def show
  end
end
