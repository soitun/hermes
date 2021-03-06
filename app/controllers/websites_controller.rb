class WebsitesController < ApplicationController
  # GET /websites
  # GET /websites.xml
  def index
    @websites = Website.all
    respond_with(@websites)
  end

  # GET /websites/1
  # GET /websites/1.xml
  def show
    @website = Website.find(params[:id])
    respond_with(@website)
  end

  # GET /websites/new
  # GET /websites/new.xml
  def new
    @website = Website.new
    @website.domains.build
    respond_with(@website)
  end

  # GET /websites/1/edit
  def edit
    @website = Website.find(params[:id])
    @website.domains.build
    respond_with(@website)
  end

  # POST /websites
  # POST /websites.xml
  def create
    @website = Website.new(params[:website])
    @website.save
    @website.domains.build if @website.domains.empty?
    respond_with(@website)
  end

  # PUT /websites/1
  # PUT /websites/1.xml
  def update
    @website = Website.find(params[:id])
    @website.update_attributes(params[:website])
    @website.domains.build if @website.domains.empty?
    respond_with(@website)
  end

  # DELETE /websites/1
  # DELETE /websites/1.xml
  def destroy
    @website = Website.find(params[:id])
    @website.destroy
    respond_with(@website)
  end

  # GET /websites/1/manage
  # GET /websites/1/manage.xml
  def manage
    @website = Website.find(params[:id])
    current_website = @website
    respond_with(@website) do |format|
      format.html { redirect_to resources_path }
    end
  end
end
