class PortfoliosController < ApplicationController
	before_action :set_portfolio_item, only: [:edit, :show, :update, :destroy]
	layout 'portfolios'
	access all: [:show, :index, :angular], user: {except: [:destroy, :new, :create, :update, :edit]}, site_admin: :all

	def index
		#@portfolio_items = Portfolio.A
		#@portfolio_items = Portfolio.rub
		@portfolio_items = Portfolio.by_position
	end
	def sort
		params[:order].each do |key, value|
			Portfolio.find(value[:id]).update(position: value[:position])
		end
		render nothing: true
	end
	def angular
		@angular_portfolio_items = Portfolio.A
	end
	def new
		@portfolio_items = Portfolio.new
		3.times {@portfolio_items.technologies.build}
	end
	def create
		@portfolio_items = Portfolio.new(portfolio_p)
		
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
			if @portfolio_items.update(portfolio_p)
				format.html { redirect_to @portfolio_items, notice: 'Yo homeslice, ya\' blog was updated good.' }
			else
				format.html { render :edit }
			end
		end
	end
	def show
		@portfolio_items = Portfolio.find(params[:id])
	end
	def destroy
		@portfolio_items = Portfolio.find(params[:id])
		@portfolio_items.destroy
		respond_to do |format|
			format.html {redirect_to portfolios_url, notice: 'Record removed :|' }
		end
	end
	
	private
	
	def portfolio_p
		params.require(:portfolio).permit(:title,:subtitle,:body,technologies_attrbutes:[:name])
	end
	def set_portfolio_item
		@portfolio_items = Portfolio.find(params[:id])
	end
end