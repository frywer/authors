class AuthorsHook < Redmine::Hook::ViewListener



  render_on :view_projects_show_right, :partial => "authors/authors_right_hook"

  render_on :view_account_left_bottom, :partial => "authors/authors_account_hook"
end
