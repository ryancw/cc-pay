class BlertsController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy, :edit]
  before_filter :correct_user,   only: [:destroy, :edit]
  # GET /blerts
  # GET /blerts.json
  
  def index
    @blerts = Blert.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @blerts }
    end
  end

  def allblerts
    @alert_items = current_user.blerts
  end
  # GET /blerts/1
  # GET /blerts/1.json
  def show
    @blert = Blert.find(params[:id])


    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @blert }
    end
  end

  # GET /blerts/new
  # GET /blerts/new.json
  def new
    @blert = Blert.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @blert }
    end
  end

  # GET /blerts/1/edit
  def edit
    @blert = Blert.find(params[:id])
  end

  # POST /blerts
  # POST /blerts.json
  def create
    @blert = current_user.blerts.build(params[:blert])


    respond_to do |format|
      if @blert.save
        flash[:success] = 'Alert was successfully created.'
        format.html { redirect_to alerts_path}
        format.json { render json: @blert, status: :created, location: @blert }
      else
        format.html { render action: "new" }
        format.json { render json: @blert.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /blerts/1
  # PUT /blerts/1.json
  def update
    @blert = Blert.find(params[:id])

    respond_to do |format|
      if @blert.update_attributes(params[:blert])
        format.html { redirect_to alerts_path, notice: 'Alert was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @blert.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blerts/1
  # DELETE /blerts/1.json
  def destroy
    @blert = Blert.find(params[:id])
    @blert.destroy

    respond_to do |format|
      format.html { redirect_to alerts_path }
      format.json { head :no_content }
    end
  end

  private

    def correct_user
      @blert = current_user.blerts.find_by_id(params[:id])
      redirect_to root_path if @blert.nil?
    end

  
end
