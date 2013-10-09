class GroupmapsController < ApplicationController
  # GET /groupmaps
  # GET /groupmaps.xml
  def index
    @groupmaps = Groupmap.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @groupmaps }
    end
  end

  # GET /groupmaps/1
  # GET /groupmaps/1.xml
  def show
    @groupmap = Groupmap.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @groupmap }
    end
  end

  # GET /groupmaps/new
  # GET /groupmaps/new.xml
  def new
    @groupmap = Groupmap.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @groupmap }
    end
  end

  # GET /groupmaps/1/edit
  def edit
    @groupmap = Groupmap.find(params[:id])
  end

  # POST /groupmaps
  # POST /groupmaps.xml
  def create
    @groupmap = Groupmap.new(params[:groupmap])

    respond_to do |format|
      if @groupmap.save
        format.html { redirect_to(@groupmap, :notice => 'Groupmap was successfully created.') }
        format.xml  { render :xml => @groupmap, :status => :created, :location => @groupmap }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @groupmap.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /groupmaps/1
  # PUT /groupmaps/1.xml
  def update
    @groupmap = Groupmap.find(params[:id])

    respond_to do |format|
      if @groupmap.update_attributes(params[:groupmap])
        format.html { redirect_to(@groupmap, :notice => 'Groupmap was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @groupmap.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /groupmaps/1
  # DELETE /groupmaps/1.xml
  def destroy
    @groupmap = Groupmap.find(params[:id])
    @groupmap.destroy

    respond_to do |format|
      format.html { redirect_to(groupmaps_url) }
      format.xml  { head :ok }
    end
  end
end
