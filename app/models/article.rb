class Article < ActiveRecord::Base
  has_many :comments
  has_many :taggings
  has_many :tags, through: :taggings


  def tag_list
    tags.join(", ")
  end

  def tag_list=(tag_string)
    tag_names = tag_string.split(",").collect {|s| s.strip.downcase}.uniq
    self.tags = tag_names.collect {|t| Tag.find_or_create_by(name: t)}
  end
end
