class AuthorsController < ApplicationController
  unloadable


  before_filter :find_project , only: [:index , :create]
  before_action :set_author, only: [ :destroy]



  def index

    @author  = Author.new
    @authors = Author.where(project_id: @project.id)


  end



  def create
    @author = Author.new( author_params )
    @author.project_id = @project.id

    respond_to do |format|
      if @author.save
        flash[:notice] = 'Author was saved.'
        format.html { redirect_to :controller => 'authors', :action => 'index', :project_id => Project.find(params[:project_id]) }
      else
        flash[:error] = 'The form is empty Or author already exist!'
        format.html { redirect_to :controller => 'authors', :action => 'index', :project_id => Project.find(params[:project_id]) }
      end
    end
  end


  def destroy
    @author.destroy
    flash[:notice] = 'Author was deleted.'
    redirect_to :controller => 'authors', :action => 'index', :project_id => Project.find(params[:project_id])
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_author
    @author = Author.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def author_params
    params.require(:author).permit(:user_id, :project_id)
  end




  def find_project
    @project = Project.find(params[:project_id])
  rescue ActiveRecord::RecordNotFound
    render_404
  end

end
