module GifsHelper
  def linked_tag_list(gif)
    list = gif.tags.map do |tag|
      link_to tag.name, random_gif_path(tag: tag.name) # random_gif means that the url for the tags will be /tag and not /tag="something" at the url
    end

    safe_join list, ', ' # this will join the html links by comman and render as HTML
  end

  def full_gif_url(gif)
    gif.image_url(host: request.protocol + request.host_with_port)
  end

end
