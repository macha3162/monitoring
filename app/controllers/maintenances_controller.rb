class MaintenancesController < ApplicationController
  def show
    Maintenance.find(params[:id])
  end
end
