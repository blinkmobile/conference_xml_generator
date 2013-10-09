class GroupmapController < ApplicationController

  def index
    @Groupmaps = Groupmap.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @Groupmaps }
    end
  end

  # GET /Groupmaps/1
  # GET /Groupmaps/1.xml
  def show
    @Groupmap = Groupmap.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @Groupmap }
    end
  end

  # GET /Groupmaps/new
  # GET /Groupmaps/new.xml
  def new
    @Groupmap = Groupmap.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @Groupmap }
    end
  end

  # GET /Groupmaps/1/edit
  def edit
    @Groupmap = Groupmap.find(params[:id])
  end

  # POST /Groupmaps
  # POST /Groupmaps.xml
  def create
    @Groupmap = Groupmap.new(params[:Groupmap])

    respond_to do |format|
      if @Groupmap.save
        format.html { redirect_to(@Groupmap, :notice => 'Groupmap was successfully created.') }
        format.xml  { render :xml => @Groupmap, :status => :created, :location => @Groupmap }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @Groupmap.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /Groupmaps/1
  # PUT /Groupmaps/1.xml
  def update
    @Groupmap = Groupmap.find(params[:id])

    respond_to do |format|
      if @Groupmap.update_attributes(params[:Groupmap])
        format.html { redirect_to(@Groupmap, :notice => 'Groupmap was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @Groupmap.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /Groupmaps/1
  # DELETE /Groupmaps/1.xml
  def destroy
    @Groupmap = Groupmap.find(params[:id])
    @Groupmap.destroy

    respond_to do |format|
      format.html { redirect_to(Groupmaps_url) }
      format.xml  { head :ok }
    end
  end

end