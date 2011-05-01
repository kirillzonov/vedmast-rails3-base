module ApplicationHelper
  def title(page_title, show_title = true)
    @show_title = show_title
    content_for(:title) { page_title.to_s }
  end

  def show_title?
    @show_title
  end

  def get_page(title)
    Page.where(:name => title).first.content
  end

  def index_or_not(page = 'other')
    case page
    when 'index'
      render :inline => '<div class= "wrap for-content home">'
    when 'products'
      render :inline => '<div class= "wrap for-content static products">'
    when 'product'
      render :inline => '<div class="wrap for-content static product agd">'
    when 'faq'
      render :inline => '<div class="wrap for-content static faq">'
    else
      render :inline => '<div class= "wrap for-content static about">'
    end
  end

end
