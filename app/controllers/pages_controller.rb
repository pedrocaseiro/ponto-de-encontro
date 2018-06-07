class PagesController < ApplicationController
  def show
    if page_exists?
      render template: "pages/#{params[:page]}"
    else
      render file: 'public/404.html', status: :not_found
    end
  end

  private

  def page_exists?
    template_exists? "pages/#{params[:page]}"
  end
end
