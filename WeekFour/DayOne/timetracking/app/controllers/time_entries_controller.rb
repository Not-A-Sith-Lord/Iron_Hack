class TimeEntriesController < ApplicationController

	def index
		@my_project = Project.find(params[:project_id])
		@my_entries = @my_project.time_entries

		render "index"
	end

	def new 

		@my_project = Project.find(params[:project_id])

		@my_entry = @my_project.time_entries.new
	end

	def create
		@my_project = Project.find(params[:project_id])

		# @my_entry = TimeEntry.new(
		# 	hours: params[:time_entry][:hours],
		# 	minutes: params[:time_entry][:minutes],
		# 	date: params[:time_entry][:date],
		# 	comments: params[:time_entry][:comments],
		# 	project_id: @my_project.id)

		@my_entry = @my_project.time_entries.new(entry_params)

			if @my_entry.save

				redirect_to "/projects/#{@my_project.id}/time_entries"

			else
				render 'new'
			end
	end

	def edit

		@my_project = Project.find params[:project_id]
		@my_entry = @my_project.time_entries.find params[:id]



		render :edit

	end

	def update
		@my_project = Project.find params[:project_id]
		@my_entry = @my_project.time_entries.find params[:id]

		if @my_entry.update(entry_params)
		redirect_to project_time_entries_path(@my_project)

		else
			render :edit
		end
	end

	def destroy 
		my_project = Project.find(params[:project_id])

		my_entry = my_project.time_entries.find(params[:id])

		my_entry.destroy

		redirect_to project_time_entries_path(my_project)
	end

	private 

	def entry_params #params data for timestamp
		params.require(:time_entry).permit(:hours, :minutes, :date, :comments)

	end
end









