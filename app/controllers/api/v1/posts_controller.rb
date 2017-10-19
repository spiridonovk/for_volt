
module Api
    module V1
        class PostsController < ApplicationController
          def index
            @post= Post.paginate(:page => params[:page],
            :per_page => params[:per_page]).order("posts.published_at desc")
            render json:  @post
          end
          def show
            @post = Post.find(params[:id])
            render json: @post
          end

          def create
            token = request.headers["Authorization"]
            unless @user = User.find_by(token: token)
              render json: { status: "Not Authorization"}
            else
              if params[:title] && params[:body]
                @post = Post.new(post_params)
                @post.user_id = @user.id
                @post.author = @user.nickname
                @post.save
                render json: @post
              else
                render json: {errors: 'ERRORS'}
              end
            end
          end
          def post_params
            if params[:published_at].nil?
              params.merge!(published_at: Time.now)
            end
            params.permit(:body, :title, :published_at)
            end
          end
    end
end
