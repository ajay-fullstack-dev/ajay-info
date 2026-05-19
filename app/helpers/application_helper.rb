module ApplicationHelper
  def nav_link(text, anchor, active: false)
    link_to text, "##{anchor}", class: "nav-link#{' nav-link--active' if active}"
  end
end
