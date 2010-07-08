# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def generate_list(num)
    page = params["p"].to_i
    if page
      start = page * num
    else
      start = 0
    end

    # AR stuffs
    @collection = User.find(:all, :limit => num, :offset => start)
    #

    content = []
    for i in @collection
      content << "<li>This is result item number #{i.name} </li>"
    end

    return content
  end
end

