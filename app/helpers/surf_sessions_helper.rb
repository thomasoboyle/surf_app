module SurfSessionsHelper

  def tag_links(tags)
    links = []
    tags.each do |tag|
      links << (link_to tag.name.titleize, tag_path(tag))
    end
    links.join(" ").html_safe
  end
end
