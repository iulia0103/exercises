class Item < ActiveRecord::Base
  belongs_to :jewelry

  def self.search(search)
    where("name LIKE ?", "%#{search}%")
  end
end
