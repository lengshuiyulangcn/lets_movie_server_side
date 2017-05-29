class Api::V1::InvitesController < Api::V1::ApiController
  before_action :authenticate_user

  def create
    # create invite
    # take care about duplicate create
    invite = current_user.created_invitations.find_or_create_by!(movie_id: invite_params[:movie_id]) do |movie|
      # invite don't allow empty invitee, so assign to oneself when created
      movie.invitee = current_user 
      movie.attributes = invite_params
    end
    render json: {response: "created", id: invite.id }, status: 201
  end

  def show
    @invite = Invite.find(params.permit(:id)[:id])
    @user = current_user
  end 

  def accept
    # accept invite
  end
  private
  def invite_params
    params.permit(:meet_at, :movie_id, :location, :memo)
  end
end
