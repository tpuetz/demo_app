class MicorpostsController < ApplicationController
  # GET /micorposts
  # GET /micorposts.json
  def index
    @micorposts = Micorpost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @micorposts }
    end
  end

  # GET /micorposts/1
  # GET /micorposts/1.json
  def show
    @micorpost = Micorpost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @micorpost }
    end
  end

  # GET /micorposts/new
  # GET /micorposts/new.json
  def new
    @micorpost = Micorpost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @micorpost }
    end
  end

  # GET /micorposts/1/edit
  def edit
    @micorpost = Micorpost.find(params[:id])
  end

  # POST /micorposts
  # POST /micorposts.json
  def create
    @micorpost = Micorpost.new(params[:micorpost])

    respond_to do |format|
      if @micorpost.save
        format.html { redirect_to @micorpost, notice: 'Micorpost was successfully created.' }
        format.json { render json: @micorpost, status: :created, location: @micorpost }
      else
        format.html { render action: "new" }
        format.json { render json: @micorpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /micorposts/1
  # PUT /micorposts/1.json
  def update
    @micorpost = Micorpost.find(params[:id])

    respond_to do |format|
      if @micorpost.update_attributes(params[:micorpost])
        format.html { redirect_to @micorpost, notice: 'Micorpost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @micorpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /micorposts/1
  # DELETE /micorposts/1.json
  def destroy
    @micorpost = Micorpost.find(params[:id])
    @micorpost.destroy

    respond_to do |format|
      format.html { redirect_to micorposts_url }
      format.json { head :no_content }
    end
  end
end
