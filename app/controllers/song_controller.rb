class SongController < ApplicationController
    def like
        object = Song.new(:user_email => current_user.email, :song_id => params["song_id"])
        object.save
        redirect_to controller: 'pages', action:'music', user_email: current_user.email
    end
end
