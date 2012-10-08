class Bookmark < ActiveRecord::Base
  attr_accessible :Date_saved, :Name, :URL
  validates :URL, :length => { :maximum => 10}
  validates :Name, :length => { :maximum => 99}
end
