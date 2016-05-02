class AdminController < ApplicationController
  before_action :authenticate_admin!

  def index
    @all_items = FashionItem.all
  end
end
