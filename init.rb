
require 'redmine'
require 'projects_controller_patch'
require 'users_controller_patch'

Redmine::Plugin.register :authors do
  name 'Authors plugin'
  author 'Author name'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'







  require_dependency 'authors_hook'
  permission :authors, { :authors => [:index] }, :public => true
  menu :project_menu, :authors, { :controller => 'authors', :action => 'index' }, :caption => 'Authors', :after => :activity, :param => :project_id

end
