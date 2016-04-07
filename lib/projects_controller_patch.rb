require_dependency 'projects_controller'

  module ProjectsControllerPatch

    def self.included(base) # :nodoc:
      base.send(:include, InstanceMethods)
      base.class_eval do
        before_action :add_authors, only: [:show]

      end
    end

    module InstanceMethods
      def add_authors
        @project =  Project.find_by_identifier(params[:id])
        @authors = Author.all.where(project_id: @project.id)
      end
    end

  end

ProjectsController.send(:include, ProjectsControllerPatch)