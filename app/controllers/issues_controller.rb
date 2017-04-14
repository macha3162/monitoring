class IssuesController < ApplicationController
  def show
    Issue.find(params[:id])
  end
end
