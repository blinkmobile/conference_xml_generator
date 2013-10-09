class SessionsController < ApplicationController
  # GET /sessions
  # GET /sessions.xml
  def index
  	@conference = Conference.find(params[:conference_id])
    @sessions = @conference.sessions.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sessions }
    end
  end

  # GET /sessions/1
  # GET /sessions/1.xml
  def show
  	@conference = Conference.find(params[:conference_id])
    @session = Session.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @session }
    end
  end

  # GET /sessions/new
  # GET /sessions/new.xml
  def new
  	@conference = Conference.find(params[:conference_id])
    @session = Session.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @session }
    end
  end

  # GET /sessions/1/edit
  def edit
  	@conference = Conference.find(params[:conference_id])
    @session = Session.find(params[:id])
  end

  # POST /sessions
  # POST /sessions.xml
  def create
  	@conference = Conference.find(params[:conference_id])
    @session = @conference.sessions.new(params[:session])

    respond_to do |format|
      if @session.save
        format.html { redirect_to(conference_sessions_url, :notice => 'Session was successfully created.') }
        format.xml  { render :xml => @session, :status => :created, :location => @session }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @session.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sessions/1
  # PUT /sessions/1.xml
  def update
  	@conference = Conference.find(params[:conference_id])
    @session = Session.find(params[:id])

    respond_to do |format|
      if @session.update_attributes(params[:session])
        format.html { redirect_to(conference_session_url, :notice => 'Session was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @session.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sessions/1
  # DELETE /sessions/1.xml
  def destroy
    @session = Session.find(params[:id])
    @session.destroy

    respond_to do |format|
      format.html { redirect_to(conference_sessions_url) }
      format.xml  { head :ok }
    end
  end
end
