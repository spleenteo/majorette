class ListPresenter < Showcase::Presenter
  include Showcase::Traits::LinkTo

  link_to do |c|
    #c.url           h.apartment_path(self)
    c.url = h.list_url(self)
    c.label         title
    c.html_options  role: 'label', title: title
  end



  def full_title
    link title
  end

  def items_count
    "#{items.count} items in this list"
  end

  def author
    if user.present? && user.id == h.current_user.id
      u = "you"
    else
      u = user.email.split("@").first if user.present?
    end
    "by #{u}"
  end

  def meta
    "#{h.time_ago_in_words(created_at)} #{author}"
  end

  def list_link
    h.link_to list.title, h.list_path(list)
  end

end

