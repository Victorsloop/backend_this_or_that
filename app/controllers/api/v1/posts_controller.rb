class Api::V1::PostsController < ApplicationController
    skip_before_action :authorized

    def index
        posts = Post.all
        render json: posts, except: [:created_at, :updated_at]
    end

    def create
        post = Post.create!(post_params)
        if post.valid?
            render json: post,  except: [:created_at, :updated_at]
        else
            render json: {errors: post.errors} 
        end 
    end

    def show
        post = Post.find(params[:id])
        render json: post, except: [:created_at, :updated_at]
    end

    def update
        post = Post.find(params[:id])
        if (post.update!(post_params))
            render json: post
        else
            render json: {errors: post.errors} 
        end 
    end 

    def destroy
        allpost = Post.all
        post = Post.find(params[:id])
        post.destroy
        render json: allpost
    end

    private

    def post_params
        params.require(:post).permit(:content,:img_url,:wall_id)
    end
end


