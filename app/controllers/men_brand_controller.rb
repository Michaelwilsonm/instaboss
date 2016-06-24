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
    @query_all = @men.where("description LIKE ? or short_description LIKE ? or brand LIKE ?", @query,@query,@brand_query)
  end

  def bjorn_borg
    @bjorn_borg = @men_items.bjorn_borg
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

  def nautica
    @nautica = @men_items.nautica
  end

  def retro_marine
    @retro_marine = @men_items.retro_marine
  end

  def sunday_somewhere
    @sunday_somewhere = @men_items.sunday_somewhere
  end

  def timberland
    @timberland = @men_items.timberland
  end

  private
    def all_men
      @men_items = FashionItem.all
    end
end