class UserhsController < ApplicationController
  before_action :set_userh, only: [:show, :edit, :update, :destroy]

  respond_to :html , :json

  def index
    @userhs = Userh.all
    respond_with(@userhs)
  end

  def show
    @userh  = Userh.find_by_email(current_user.email)
    if ! @userh.nil?
      if ! @userh.qrhash.nil?
        @qrhash = '../qrhndl/qrgen.svg?qrhash=' + @userh.qrhash
      end
    end
    
    respond_with(@userh)
  end

  def new
    @userh = Userh.new
    respond_with(@userh)
  end

  def edit
  end

  def create
    @userh = Userh.new(userh_params)
    @userh.save
    respond_with(@userh)
  end

  def update
    @userh.update(userh_params)
    respond_with(@userh)
  end

  def destroy
    @userh.destroy
    respond_with(@userh)
  end

  private
    def set_userh
      @userh = Userh.find(params[:id])
    end

    def userh_params
      params.require(:userh).permit(:fname, :lname, :url1)
    end
end
