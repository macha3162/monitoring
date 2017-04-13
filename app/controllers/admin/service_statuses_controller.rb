class Admin::ServiceStatusesController < Admin::CommonController
  before_action :set_service_status, only: [:show, :edit, :update, :destroy]

  def index
    @service_statuses = ServiceStatus.all
  end

  def show
  end

  def new
    @service_status = ServiceStatus.new
  end

  def edit
  end

  def create
    @service_status = ServiceStatus.new(service_status_params)

    if @service_status.save
      redirect_to [:admin, @service_status], notice: 'Service status was successfully created.'
    else
      render :new
    end
  end

  def update
    if @service_status.update(service_status_params)
      redirect_to [:admin, @service_status], notice: 'Service status was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @service_status.destroy
    redirect_to admin_service_statuses_url, notice: 'Service status was successfully destroyed.'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_service_status
    @service_status = ServiceStatus.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def service_status_params
    params.require(:service_status).permit(:name, :permalink, :color, :status_type)
  end
end
