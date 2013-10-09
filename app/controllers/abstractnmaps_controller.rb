class AbstractnmapsController < ApplicationController
  # GET /abstractnmaps
  # GET /abstractnmaps.xml
  def index
    @abstractnmaps = Abstractnmap.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @abstractnmaps }
    end
  end

  # GET /abstractnmaps/1
  # GET /abstractnmaps/1.xml
  def show
    @abstractnmap = Abstractnmap.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @abstractnmap }
    end
  end

  # GET /abstractnmaps/new
  # GET /abstractnmaps/new.xml
  def new
    @abstractnmap = Abstractnmap.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @abstractnmap }
    end
  end

  # GET /abstractnmaps/1/edit
  def edit
    @abstractnmap = Abstractnmap.find(params[:id])
  end

  # POST /abstractnmaps
  # POST /abstractnmaps.xml
  def create
    @abstractnmap = Abstractnmap.new(params[:abstractnmap])

    respond_to do |format|
      if @abstractnmap.save
        format.html { redirect_to(@abstractnmap, :notice => 'Abstractnmap was successfully created.') }
        format.xml  { render :xml => @abstractnmap, :status => :created, :location => @abstractnmap }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @abstractnmap.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /abstractnmaps/1
  # PUT /abstractnmaps/1.xml
  def update
    @abstractnmap = Abstractnmap.find(params[:id])

    respond_to do |format|
      if @abstractnmap.update_attributes(params[:abstractnmap])
        format.html { redirect_to(@abstractnmap, :notice => 'Abstractnmap was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @abstractnmap.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /abstractnmaps/1
  # DELETE /abstractnmaps/1.xml
  def destroy
    @abstractnmap = Abstractnmap.find(params[:id])
    @abstractnmap.destroy

    respond_to do |format|
      format.html { redirect_to(abstractnmaps_url) }
      format.xml  { head :ok }
    end
  end
end
