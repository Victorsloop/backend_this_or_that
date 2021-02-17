class Api::V1::FriendshipsController < ApplicationController
    def index
        friendships = Friendship.all
        render json: friendships, except: [:created_at, :updated_at]
    end

    def show
        friendship = Friendship.find(params[:id])
        render json: friendship, except: [:created_at, :updated_at]
    end
end

