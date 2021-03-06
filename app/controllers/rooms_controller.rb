class RoomsController < ApplicationController
  # GET /rooms
  # GET /rooms.xml
  def index
  	@conference = Conference.find(params[:conference_id])
    @rooms = @conference.rooms.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @rooms }
    end
  end

  # GET /rooms/1
  # GET /rooms/1.xml
  def show
    @room = Room.find(params[:id])
    @conference = Conference.find(params[:conference_id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @room }
    end
  end

  # GET /rooms/new
  # GET /rooms/new.xml
  def new
  	@conference = Conference.find(params[:conference_id])
    @room = @conference.rooms.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @room }
    end
  end

  # GET /rooms/1/edit
  def edit
    @conference = Conference.find(params[:conference_id])
    @room = @conference.rooms.find(params[:id])
  end

  # POST /rooms
  # POST /rooms.xml
  def create
  	@conference = Conference.find(params[:conference_id])
    @room = @conference.rooms.new(params[:room])

    respond_to do |format|
      if @room.save
        format.html { redirect_to(conference_rooms_url, :notice => 'Room was successfully created.') }
        format.xml  { render :xml => @room, :status => :created, :location => @room }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @room.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /rooms/1
  # PUT /rooms/1.xml
  def update
  	@conference = Conference.find(params[:conference_id])
    @room = @conference.rooms.find(params[:id])

    respond_to do |format|
      if @room.update_attributes(params[:room])
        format.html { redirect_to(conference_room_url, :notice => 'Room was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @room.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /rooms/1
  # DELETE /rooms/1.xml
  def destroy
    @room = Room.find(params[:id])
    @room.destroy

    respond_to do |format|
      format.html { redirect_to(conference_rooms_url) }
      format.xml  { head :ok }
    end
  end
end
