class SpeakersController < ApplicationController
  # GET /speakers
  # GET /speakers.xml
  def index
  	@conference = Conference.find(params[:conference_id])
    @speakers = @conference.speakers.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @speakers }
    end
  end

  # GET /speakers/1
  # GET /speakers/1.xml
  def show
  	@conference = Conference.find(params[:conference_id])
    @speaker = Speaker.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @speaker }
    end
  end

  # GET /speakers/new
  # GET /speakers/new.xml
  def new
  	@conference = Conference.find(params[:conference_id])
    @speaker = Speaker.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @speaker }
    end
  end

  # GET /speakers/1/edit
  def edit
  	@conference = Conference.find(params[:conference_id])
    @speaker = Speaker.find(params[:id])
  end

  # POST /speakers
  # POST /speakers.xml
  def create
  	@conference = Conference.find(params[:conference_id])
    @speaker = @conference.speakers.new(params[:speaker])

    respond_to do |format|
      if @speaker.save
        format.html { redirect_to(conference_speakers_url, :notice => 'Speaker was successfully created.') }
        format.xml  { render :xml => @speaker, :status => :created, :location => @speaker }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @speaker.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /speakers/1
  # PUT /speakers/1.xml
  def update
  	@conference = Conference.find(params[:conference_id])
    @speaker = Speaker.find(params[:id])

    respond_to do |format|
      if @speaker.update_attributes(params[:speaker])
        format.html { redirect_to(conference_speaker_url, :notice => 'Speaker was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @speaker.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /speakers/1
  # DELETE /speakers/1.xml
  def destroy
    @speaker = Speaker.find(params[:id])
    @speaker.destroy

    respond_to do |format|
      format.html { redirect_to(conference_speakers_url) }
      format.xml  { head :ok }
    end
  end
end
