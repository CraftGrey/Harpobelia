class StaticPagesController < ApplicationController
  def beer
    
  end
  
  def home
    @categories = Category.all
  end


  def about_us
  end

  def contact_us
  end

  def faq
  end

  def sizing
  end
  
  def category
    catName = params[:title]
    @items = Item.where("category like ? ", catName)
  end

end
