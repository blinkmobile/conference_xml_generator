class DocumentsController < ApplicationController
  # GET /documents
  # GET /documents.xml
  def index
  	@conference = Conference.find(params[:conference_id])
    @documents = @conference.documents.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @documents }
    end
  end

  # GET /documents/1
  # GET /documents/1.xml
  def show
  	@conference = Conference.find(params[:conference_id])
    @document = Document.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @document }
    end
  end

  # GET /documents/new
  # GET /documents/new.xml
  def new
  	@conference = Conference.find(params[:conference_id])
    @document = Document.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @document }
    end
  end

  # GET /documents/1/edit
  def edit
  	@conference = Conference.find(params[:conference_id])
    @document = Document.find(params[:id])
  end

  # POST /documents
  # POST /documents.xml
  def create
  	@conference = Conference.find(params[:conference_id])
    @document = @conference.documents.new(params[:document])

    respond_to do |format|
      if @document.save
        format.html { redirect_to(conference_documents_url, :notice => 'Document was successfully created.') }
        format.xml  { render :xml => @document, :status => :created, :location => @document }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @document.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /documents/1
  # PUT /documents/1.xml
  def update
  	@conference = Conference.find(params[:conference_id])
    @document = Document.find(params[:id])

    respond_to do |format|
      if @document.update_attributes(params[:document])
        format.html { redirect_to(conference_document_url, :notice => 'Document was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @document.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /documents/1
  # DELETE /documents/1.xml
  def destroy
    @document = Document.find(params[:id])
    @document.destroy

    respond_to do |format|
      format.html { redirect_to(conference_documents_url) }
      format.xml  { head :ok }
    end
  end
end
