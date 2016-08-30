class WomenBrandController < ApplicationController
  before_action :all_women

  def search
    @query_brand = "#{params[:query]}".split.map(&:downcase).join(' ')
    @women = FashionItem.where(:sex => "Womens")
    @query = @women.where("brand LIKE ?", @query_brand)
  end

  def side_search
    @query = "%#{params[:query]}%"
    @brand_query = "%#{params[:query]}%".split.map(&:downcase).join(' ')
    @women = FashionItem.where(:sex => "Womens")
    @query_all = @women.where("description LIKE ? or short_description LIKE ? or brand LIKE ?", @query,@query,@brand_query)
  end

  def mura
    @mura = @women_items.women_mura
  end

  def princess_polly
    @princess_polly = @women_items.women_princess_polly
  end

  def jo_mercer
    @jo_mercer = @women_items.women_jo_mercer
  end

  def showpo
    @showpo = @women_items.women_showpo
  end

  def samantha_wills
    @samantha_willis = @women_items.women_samantha_willis
  end

  def esther
    @esther = @women_items.women_esther
  end

  def senso
    @senso = @women_items.women_senso
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

  def tony_bianco
    @tony_bianco = @women_items.women_tony_bianco
  end

  def daniel_wellington
    @daniel_wellington = @women_items.women_daniel_wellington
  end

  def alice_mccall
    @alice_mccall = @women_items.women_alice_mccall
  end

  def auguste
    @auguste = @women_items.women_auguste
  end

  def sea_folly
    @sea_folly = @women_items.women_sea_folly
  end

  def top_shop
    @top_shop = @women_items.women_top_shop
  end

  def victorias_secret
    @victorias_secret = @women_items.women_victorias_secret
  end

  private

    def all_women
      @women_items = FashionItem.all
    end
    def all_men
      @men_items = FashionItem.all
    end
end