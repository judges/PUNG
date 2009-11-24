class MediaplansController < ApplicationController
  # GET /mediaplans
  # GET /mediaplans.xml
  def index
    @mediaplans = Mediaplan.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @mediaplans }
    end
  end

  # GET /mediaplans/1
  # GET /mediaplans/1.xml
  def show
    @mediaplan = Mediaplan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @mediaplan }
    end
  end

  # GET /mediaplans/new
  # GET /mediaplans/new.xml
  def new
    @mediaplan = Mediaplan.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @mediaplan }
    end
  end

  # GET /mediaplans/1/edit
  def edit
    @mediaplan = Mediaplan.find(params[:id])
  end

  # POST /mediaplans
  # POST /mediaplans.xml
  def create
    @mediaplan = Mediaplan.new(params[:mediaplan])

    respond_to do |format|
      if @mediaplan.save
        flash[:notice] = 'Mediaplan was successfully created.'
        format.html { redirect_to(@mediaplan) }
        format.xml  { render :xml => @mediaplan, :status => :created, :location => @mediaplan }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @mediaplan.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /mediaplans/1
  # PUT /mediaplans/1.xml
  def update
    @mediaplan = Mediaplan.find(params[:id])

    respond_to do |format|
      if @mediaplan.update_attributes(params[:mediaplan])
        flash[:notice] = 'Mediaplan was successfully updated.'
        format.html { redirect_to(@mediaplan) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @mediaplan.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /mediaplans/1
  # DELETE /mediaplans/1.xml
  def destroy
    @mediaplan = Mediaplan.find(params[:id])
    @mediaplan.destroy

    respond_to do |format|
      format.html { redirect_to(mediaplans_url) }
      format.xml  { head :ok }
    end
  end
end
