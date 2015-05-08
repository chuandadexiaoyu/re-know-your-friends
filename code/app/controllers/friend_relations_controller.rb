class FriendRelationsController < ApplicationController
  before_action :set_friend_relation, only: [:show, :edit, :update, :destroy]

  # GET /friend_relations
  # GET /friend_relations.json
  def index
    @friend_relations = FriendRelation.all
  end

  # GET /friend_relations/1
  # GET /friend_relations/1.json
  def show
  end

  # GET /friend_relations/new
  def new
    @friend_relation = FriendRelation.new
  end

  # GET /friend_relations/1/edit
  def edit
  end

  # POST /friend_relations
  # POST /friend_relations.json
  def create
    @friend_relation = FriendRelation.new(friend_relation_params)

    respond_to do |format|
      if @friend_relation.save
        format.html { redirect_to @friend_relation, notice: 'Friend relation was successfully created.' }
        format.json { render :show, status: :created, location: @friend_relation }
      else
        format.html { render :new }
        format.json { render json: @friend_relation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /friend_relations/1
  # PATCH/PUT /friend_relations/1.json
  def update
    respond_to do |format|
      if @friend_relation.update(friend_relation_params)
        format.html { redirect_to @friend_relation, notice: 'Friend relation was successfully updated.' }
        format.json { render :show, status: :ok, location: @friend_relation }
      else
        format.html { render :edit }
        format.json { render json: @friend_relation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /friend_relations/1
  # DELETE /friend_relations/1.json
  def destroy
    @friend_relation.destroy
    respond_to do |format|
      format.html { redirect_to friend_relations_url, notice: 'Friend relation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_friend_relation
      @friend_relation = FriendRelation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def friend_relation_params
      params.require(:friend_relation).permit(:small_id, :big_id, :status)
    end
end
