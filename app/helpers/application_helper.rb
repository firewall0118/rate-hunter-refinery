module ApplicationHelper

  def render_page_part(page, title)
    raw page.parts.where(title: title).first.try(:body)
  end
end
