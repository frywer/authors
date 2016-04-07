require_dependency 'users_controller'

module UsersControllerPatch

  def self.included(base) # :nodoc:
    base.send(:include, InstanceMethod)
    base.class_eval do
      before_action :add_user_author, only: [:show]

    end
  end

  module InstanceMethod
    def add_user_author
      @authors = Author.where(user_id: @user.id)
    end
  end

end

UsersController.send(:include, UsersControllerPatch)