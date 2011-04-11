class ContestController < ApplicationController
  def index
      @creations = Creation.all
  end

  def new_vote
    @vote = Vote.new(params[:vote])
    @crea = Creation.find(params[:vote][:creation_id])

    respond_to do |format|
      if @vote.save
        format.js { render :update do |page| 
            page.replace_html 'score#{@crea.id}', :partial => 'score' 
          end}
      end
    end
  end

=begin
  def display
      @creation = Creations.find(params[:id])
    end
=end
  

end
