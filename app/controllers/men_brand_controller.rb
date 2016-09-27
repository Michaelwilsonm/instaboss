class MenBrandController < ApplicationController
  before_action :all_men

  def search
    @query_brand = "#{params[:query]}".split.map(&:downcase).join(' ')
    @men = FashionItem.where(:sex => "Mens")
    @query = @men.where("brand LIKE ?", @query_brand)
  end

  def side_search
    @query = "%#{params[:query]}%"
    @brand_query = "%#{params[:query]}%".split.map(&:downcase).join(' ')
    @men = FashionItem.where(:sex => "Mens")
    @query_all = @men.where("description LIKE ? or short_description LIKE ? or brand LIKE ?", @query,@query,@brand_query).reverse
  end

  def mobile_men_search
  end

  def windsor_smith
    @windsor_smith = @men_items.windsor_smith
  end

  def bronze_snake
    @bronze_snake = @men_items.bronze_snake
  end

  def mj_bale
    @mj_bale = @men_items.mj_bale
  end

  def the_modest_vintage_player
    @the_modest_vintage_player = @men_items.the_modest_vintage_player
  end

  def adidas
    @adidas = @men_items.adidas
  end

  def bjorn_borg
    @bjorn_borg = @men_items.bjorn_borg
  end

  def nike
    @nike = @men_items.nike_mens
  end

  def leo_joseph
    @leo_joseph = @men_items.leo_joseph
  end

  def daniel_wellington
    @daniel_wellington = @men_items.daniel_wellington
  end

  def just_another_fisherman
    @just_another_fisherman = @men_items.just_another_fisherman
  end

  def mvmt
    @mvmt = @men_items.mvmt
  end

  def morepork
    @morepork = @men_items.morepork
  end

  def new_balance
    @new_balance = @men_items.new_balance
  end

  def nautica
    @nautica = @men_items.nautica
  end

  def retro_marine
    @retro_marine = @men_items.retro_marine
  end

  def sunday_somewhere
    @sunday_somewhere = @men_items.sunday_somewhere
  end

  def i_love_ugly
    @i_love_ugly = @men_items.i_love_ugly
  end

  private
    def all_men
      @men_items = FashionItem.all
    end
end