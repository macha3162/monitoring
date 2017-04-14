class IssueUpdatesController < ApplicationController
  before_action :set_issue_update, only: [:show, :edit, :update, :destroy]

  def index
    @issue_updates = IssueUpdate.all
  end

  def show
  end

  def new
    @issue_update = IssueUpdate.new
  end

  def edit
  end

  def create
    @issue_update = IssueUpdate.new(issue_update_params)

    if @issue_update.save
      redirect_to [:admin, @issue_update], notice: 'Issue update was successfully created.'
    else
      render :new
    end
  end

  def update
    if @issue_update.update(issue_update_params)
      redirect_to [:admin, @issue_update], notice: 'Issue update was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @issue_update.destroy
    redirect_to admin_issue_updates_url, notice: 'Issue update was successfully destroyed.'
  end

  private
  def set_issue_update
    @issue_update = IssueUpdate.find(params[:id])
  end

  def issue_update_params
    params.require(:issue_update).permit(:state, :issue_id, :user_id, :identifier, :description)
  end
end
