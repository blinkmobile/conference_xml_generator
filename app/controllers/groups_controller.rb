class GroupsController < ApplicationController
  # GET /groups
  # GET /groups.xml
  def index
  	@conference = Conference.find(params[:conference_id])
    @groups = @conference.groups.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @groups }
    end
  end

  # GET /groups/1
  # GET /groups/1.xml
  def show
  	@conference = Conference.find(params[:conference_id])
    @group = Group.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @group }
    end
  end

  # GET /groups/new
  # GET /groups/new.xml
  def new
  	@conference = Conference.find(params[:conference_id])
    @group = Group.new
    @group.groupings.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @group }
    end
  end

  # GET /groups/1/edit
  def edit
  	@conference = Conference.find(params[:conference_id])
    @group = Group.find(params[:id])
    if  @group.groupings.count() == 0
        @group.groupings.build
    end
  end

  # POST /groups
  # POST /groups.xml
  def create
  	@conference = Conference.find(params[:conference_id])
    @group = @conference.groups.new(params[:group])

    respond_to do |format|
      if @group.save
        format.html { redirect_to(conference_groups_url, :notice => 'Group was successfully created.') }
        format.xml  { render :xml => @group, :status => :created, :location => @group }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @group.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /groups/1
  # PUT /groups/1.xml
  def update
  	@conference = Conference.find(params[:conference_id])
    @group = Group.find(params[:id])

    respond_to do |format|
      if @group.update_attributes(params[:group])
        format.html { redirect_to(conference_group_url, :notice => 'Group was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @group.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /groups/1
  # DELETE /groups/1.xml
  def destroy
    @group = Group.find(params[:id])
    @group.destroy

    respond_to do |format|
      format.html { redirect_to(conference_groups_url) }
      format.xml  { head :ok }
    end
  end
end
