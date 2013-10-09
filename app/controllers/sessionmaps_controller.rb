class SessionmapsController < ApplicationController
  # GET /sessionmaps
  # GET /sessionmaps.xml
  def index
    @sessionmaps = Sessionmap.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sessionmaps }
    end
  end

  # GET /sessionmaps/1
  # GET /sessionmaps/1.xml
  def show
    @sessionmap = Sessionmap.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sessionmap }
    end
  end

  # GET /sessionmaps/new
  # GET /sessionmaps/new.xml
  def new
    @sessionmap = Sessionmap.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sessionmap }
    end
  end

  # GET /sessionmaps/1/edit
  def edit
    @sessionmap = Sessionmap.find(params[:id])
  end

  # POST /sessionmaps
  # POST /sessionmaps.xml
  def create
    @sessionmap = Sessionmap.new(params[:sessionmap])

    respond_to do |format|
      if @sessionmap.save
        format.html { redirect_to(@sessionmap, :notice => 'Sessionmap was successfully created.') }
        format.xml  { render :xml => @sessionmap, :status => :created, :location => @sessionmap }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sessionmap.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sessionmaps/1
  # PUT /sessionmaps/1.xml
  def update
    @sessionmap = Sessionmap.find(params[:id])

    respond_to do |format|
      if @sessionmap.update_attributes(params[:sessionmap])
        format.html { redirect_to(@sessionmap, :notice => 'Sessionmap was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sessionmap.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sessionmaps/1
  # DELETE /sessionmaps/1.xml
  def destroy
    @sessionmap = Sessionmap.find(params[:id])
    @sessionmap.destroy

    respond_to do |format|
      format.html { redirect_to(sessionmaps_url) }
      format.xml  { head :ok }
    end
  end
end
