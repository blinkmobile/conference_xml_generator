class DaysController < ApplicationController
  # GET /days
  # GET /days.xml
  def index
	@conference = Conference.find(params[:conference_id])
    @days = @conference.days.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @days }
    end
  end

  # GET /days/1
  # GET /days/1.xml
  def show
  	@conference = Conference.find(params[:conference_id])
    @day = Day.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @day }
    end
  end

  # GET /days/new
  # GET /days/new.xml
  def new
  	@conference = Conference.find(params[:conference_id])
    @day = Day.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @day }
    end
  end

  # GET /days/1/edit
  def edit
  	@conference = Conference.find(params[:conference_id])
    @day = Day.find(params[:id])
  end

  # POST /days
  # POST /days.xml
  def create
  	@conference = Conference.find(params[:conference_id])
    @day = @conference.days.new(params[:day])

    respond_to do |format|
      if @day.save
        format.html { redirect_to(conference_days_url, :notice => 'Day was successfully created.') }
        format.xml  { render :xml => @day, :status => :created, :location => @day }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @day.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /days/1
  # PUT /days/1.xml
  def update
  	@conference = Conference.find(params[:conference_id])
    @day = Day.find(params[:id])

    respond_to do |format|
      if @day.update_attributes(params[:day])
        format.html { redirect_to(conference_day_url, :notice => 'Day was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @day.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /days/1
  # DELETE /days/1.xml
  def destroy
    @day = Day.find(params[:id])
    @day.destroy

    respond_to do |format|
      format.html { redirect_to(conference_days_url) }
      format.xml  { head :ok }
    end
  end
end
