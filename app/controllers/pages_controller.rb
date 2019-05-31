class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :category_page]
  def home
  end

  def category_page
  end
end
