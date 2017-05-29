json.invite do
 json.id @invite.id
 json.user @user 
 json.invitee @invite.invitee
 json.inviter @invite.inviter
 json.movie @invite.movie
end
