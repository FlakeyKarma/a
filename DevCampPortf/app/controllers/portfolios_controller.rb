class PortfoliosController < ApplicationController
	def index
		@portfolio_items = Portfolio.all
	end
	def new
		@portfolio_items = Portfolio.new
	end
	def create
		@portfolio_items = Portfolio.new(params.require(:portfolios).permit(:title, :subtitle, :body))
		
		respond_to do |format|
			if @portfolio_items.save
				format.html {redirect_to portfolios_path, notice: 'Your portfolio item is now live.'}
			else
				format.html{render :new}
			end
		end
	end
	def edit
		@portfolio_items = Portfolio.find(params[:id])
	end
	def update
		@portfolio_items = Portfolio.find(params[:id])
		respond_to do |format|
			if @blog.update(blog_params)
				format.html { redirect_to @blog, notice: 'Yo homeslice, ya\' blog was updated good.' }
			else
				format.html { render :edit }
			end
		end
	end
	def show
		@portfolio_items = Portfolio.find(params[:id])
	end
end
