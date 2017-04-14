class PagesController < ApplicationController
  def index
    @issues = Issue.all
    @maintenances = Maintenance.all
    @services = Service.all

    @days = (Date.current.days_ago(7)..Date.current).to_a.reverse
  end
end
