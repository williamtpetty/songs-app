class Song < ApplicationRecord

  def new?
    year >= 2010 ? (true) : (false)
  end
  
end
