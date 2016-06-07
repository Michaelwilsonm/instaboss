class BrandController < ApplicationController

  def search
    @query_brand = "#{params[:query]}".split.map(&:capitalize).join(' ')
    @women = FashionItem.where(:sex => "Womens")
    @query = @women.where("brand LIKE ?", @query_brand)
  end
end