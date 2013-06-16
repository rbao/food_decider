class GroupOrdersController < ApplicationController
  before_action :set_group_order, only: [:show, :edit, :update, :destroy]

  def show
    @orders = @group_order.orders
  end

  # GET /group_orders
  # GET /group_orders.json
  def index
    @group_orders = GroupOrder.scoped.decorate
  end

  # GET /group_orders/new
  def new
    @group_order = GroupOrder.new
  end

  # GET /group_orders/1/edit
  def edit
  end

  # POST /group_orders
  # POST /group_orders.json
  def create
    @group_order = GroupOrder.new(group_order_params)

    respond_to do |format|
      if @group_order.save
        format.html { redirect_to group_orders_path, notice: 'Group order was successfully created.' }
        format.json { render action: 'show', status: :created, location: @group_order }
      else
        format.html { render action: 'new' }
        format.json { render json: @group_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /group_orders/1
  # PATCH/PUT /group_orders/1.json
  def update
    respond_to do |format|
      if @group_order.update(group_order_params)
        format.html { redirect_to @group_order, notice: 'Group order was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @group_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /group_orders/1
  # DELETE /group_orders/1.json
  def destroy
    @group_order.destroy
    respond_to do |format|
      format.html { redirect_to group_orders_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group_order
      @group_order = GroupOrder.find(params[:id]).decorate
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group_order_params
      params.require(:group_order).permit(:name, :restaurant_id, :tax_rate, :message)
    end
end
