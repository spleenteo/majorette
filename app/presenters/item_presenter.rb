class ItemPresenter < Showcase::Presenter

  def full_title
    if url.present?
      h.link_to title, url, target: "_blank"
    else
      title
    end
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

