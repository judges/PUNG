class NewspappersController < ApplicationController
  # GET /newspappers
  # GET /newspappers.xml
  def index
    @newspappers = Newspapper.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @newspappers }
    end
  end

  # GET /newspappers/1
  # GET /newspappers/1.xml
  def show
    @newspapper = Newspapper.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @newspapper }
    end
  end

  # GET /newspappers/new
  # GET /newspappers/new.xml
  def new
    @newspapper = Newspapper.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @newspapper }
    end
  end

  # GET /newspappers/1/edit
  def edit
    @newspapper = Newspapper.find(params[:id])
  end

  # POST /newspappers
  # POST /newspappers.xml
  def create
    @newspapper = Newspapper.new(params[:newspapper])

    respond_to do |format|
      if @newspapper.save
        flash[:notice] = 'Newspapper was successfully created.'
        format.html { redirect_to(@newspapper) }
        format.xml  { render :xml => @newspapper, :status => :created, :location => @newspapper }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @newspapper.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /newspappers/1
  # PUT /newspappers/1.xml
  def update
    @newspapper = Newspapper.find(params[:id])

    respond_to do |format|
      if @newspapper.update_attributes(params[:newspapper])
        flash[:notice] = 'Newspapper was successfully updated.'
        format.html { redirect_to(@newspapper) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @newspapper.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /newspappers/1
  # DELETE /newspappers/1.xml
  def destroy
    @newspapper = Newspapper.find(params[:id])
    @newspapper.destroy

    respond_to do |format|
      format.html { redirect_to(newspappers_url) }
      format.xml  { head :ok }
    end
  end

  def search

  end

end

