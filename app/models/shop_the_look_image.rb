class ShopTheLookImage < ActiveRecord::Base
  attr_accessor :task_attributes
  belongs_to :user
  has_many :shop_the_look_items
  has_attached_file :shop_look_image, styles: { original: "600x600>", medium: "300x300>", thumb: "100x100>"}
  validates_attachment_content_type :shop_look_image, content_type: /\Aimage\/.*\Z/


  def task_attributes=(task_attributes)
    task_attributes.each do |items|
      shop_the_look_items.build(items)
    end
  end
end

{"utf8"=>"✓", "authenticity_token"=>"HA+ugZXtnO2W/vJugpMCqBlEOhj/40jUPm7pwU+aXuG7eMSUrF1oPGE+R557AO6M4mUEUF5Z2D3J1TiEeLBFPw==", "shop_the_look_image"=>{"task_attributes"=>[{"brand"=>"dsadsa", "gender"=>"dsa"}, {"brand"=>"dsa", "gender"=>""}, {"brand"=>"", "gender"=>""}]}, "commit"=>"create"}