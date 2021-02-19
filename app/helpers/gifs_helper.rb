module GifsHelper
  def linked_tag_list(gif)
    list = gif.tag_list.map do |tag_name|
      link_to tag_name, root_path(tag: tag_name)
    end

    safe_join list, ', ' # this will join the html links by comman and render as HTML
  end
end
