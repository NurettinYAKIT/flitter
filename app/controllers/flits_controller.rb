class FlitsController < ApplicationController
  before_filter :login_required

  def create
    flit = current_user.flits.create( params[:flit])
    flit.message=flit.message[0..140]
    flit.created_at = Time.now
    flit.save!
    redirect_to root_path

    #if flit.save
    #  redirect_to root_path
    #else
    #end
    #render :text =>  flit.valid?*/

  end

  def destroy

  end

  def index
    redirect_to root_path
  end

end
