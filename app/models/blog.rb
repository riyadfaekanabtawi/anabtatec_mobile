class Blog < ActiveRecord::Base

 attr_accessible :post,:content,:yourname

  validates :content, :length => { :minimum => 50 }
  validates :post, :length => { :maximum => 75 }
end
