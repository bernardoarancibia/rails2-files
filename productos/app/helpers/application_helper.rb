# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def title title
    content_for :head do
      "<title>#{title}</title>"
    end
  end
end
