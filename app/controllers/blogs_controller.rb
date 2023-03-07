class BlogsController < ApplicationController
    before_action :set_blog, only: %i[show edit update destroy]

    def index
        @blogs = Blog.all.order(:student_id)
    end

    def new
        @blog = Blog.new
    end

    def create
        @blog = Blog.new(blog_params)
        if @blog.save 
            redirect_to blogs_path, notice: 'Blog has been created successfully.'
        else
            render :new
        end
    end

def show 
    # @student = Student.find(params[:id])
end

def edit 
    # @student = Student.find(params[:id])
end

def update
    # @student = Student.find(params[:id])
    if @blog.update(blog_params)
        redirect_to blogs_path, notice: 'Blog has been updated successfully.'
    else
        render :edit
    end
end

def destroy
    # @student = Student.find(params[:id])
    @blog.destroy
    redirect_to blogs_path, notice: 'Blog has been deleted successfully.'
end


private

    def blog_params
        params.require(:blog).permit(:title, :content, :student_id)
    end

    def set_blog
        @blog = Blog.find(params[:id])
    end
end