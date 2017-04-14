class Admin::IssuesController < Admin::CommonController
  before_action :set_issue, only: [:show, :edit, :update, :destroy]

  def index
    @issues = Issue.all
  end

  def show
  end

  def new
    @issue = Issue.new
  end

  def edit
  end

  def create
    @issue = Issue.new(issue_params)
    if @issue.save
      redirect_to [:admin, @issue], notice: 'Issue was successfully created.'
    else
      render :new
    end
  end

  def update
    if @issue.update(issue_params)
      redirect_to [:admin, @issue], notice: 'Issue was successfully updated.'
    else
      pp @issue.errors
      render :edit
    end
  end

  def destroy
    @issue.destroy
    redirect_to admin_issues_url, notice: 'Issue was successfully destroyed.'
  end

  private
  def set_issue
    @issue = Issue.find(params[:id])
  end

  def issue_params
    params.require(:issue).permit(:title, :state, :service_status_id, :user_id, :identifier)
  end
end
