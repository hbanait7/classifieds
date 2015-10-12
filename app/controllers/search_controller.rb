class SearchController < ApplicationController

  def index
    q = params[:q]
    @works    = Work.search(name_cont: q).result
    @projects = Project.search(name_cont: q).result
    @users    = User.search(name_cont: q).result
  end

end
