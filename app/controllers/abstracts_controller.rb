class AbstractsController < ApplicationController
  # GET /abstracts
  # GET /abstracts.xml
  def index
  	@conference = Conference.find(params[:conference_id])
    @abstracts = @conference.abstracts.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @abstracts }
    end
  end

  # GET /abstracts/1
  # GET /abstracts/1.xml
  def show
  	@conference = Conference.find(params[:conference_id])
    @abstract = Abstract.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @abstract }
    end
  end

  # GET /abstracts/new
  # GET /abstracts/new.xml
  def new
  	@conference = Conference.find(params[:conference_id])
    @abstract = @conference.abstracts.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @abstract }
    end
  end

  # GET /abstracts/1/edit
  def edit
  	@conference = Conference.find(params[:conference_id])
    @abstract = Abstract.find(params[:id])
  end

  # POST /abstracts
  # POST /abstracts.xml
  def create
  	@conference = Conference.find(params[:conference_id])
    @abstract = @conference.abstracts.new(params[:abstract])

    respond_to do |format|
      if @abstract.save
        format.html { redirect_to(conference_abstracts_url, :notice => 'Abstract was successfully created.') }
        format.xml  { render :xml => @abstract, :status => :created, :location => @abstract }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @abstract.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /abstracts/1
  # PUT /abstracts/1.xml
  def update
  	@conference = Conference.find(params[:conference_id])
    @abstract = Abstract.find(params[:id])

    respond_to do |format|
      if @abstract.update_attributes(params[:abstract])
        format.html { redirect_to(conference_abstract_url, :notice => 'Abstract was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @abstract.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /abstracts/1
  # DELETE /abstracts/1.xml
  def destroy
    @abstract = Abstract.find(params[:id])
    @abstract.destroy

    respond_to do |format|
      format.html { redirect_to(conference_abstracts_url) }
      format.xml  { head :ok }
    end
  end
end
