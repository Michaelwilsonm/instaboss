class ProjectsController < ApplicationController

  def search
    @query_brand = "#{params[:query]}".capitalize
    @women = FashionItem.where(:sex => "Womens")
    @query = @women.where("brand LIKE ?", @query_brand)
  end
end