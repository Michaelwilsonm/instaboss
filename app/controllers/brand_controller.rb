class BrandController < ApplicationController
  before_action :all_women

  def search
    @query_brand = "#{params[:query]}".split.map(&:downcase).join(' ')
    @women = FashionItem.where(:sex => "Womens")
    @query = @women.where("brand LIKE ?", @query_brand)
  end

  def side_search
    @query_brand = "#{params[:query]}".split.map(&:downcase).join(' ')
    @women = FashionItem.where(:sex => "Womens")
    @query = @women.where("brand LIKE ?", @query_brand)
  end

  def lorna_jane
    @lorna_jane = @women_items.women_lorna_jane
  end

  def sunday_somewhere
    @sunday_somewhere = @women_items.women_sunday_somewhere
  end

  def forever_21
    @forever_21 = @women_items.women_forever_21
  end

  def daniel_wellington
    @daniel_wellington = @women_items.women_daniel_wellington
  end

  def nautica
    @nautica = @women_items.women_nautica
  end

  def fcuk
    @fcuk = @women_items.women_fcuk
  end

  private

    def all_women
      @women_items = FashionItem.all
    end

end