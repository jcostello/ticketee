class TicketsController < ApplicationController

  before_filter :find_project
  before_filter :find_ticket, only: [:show, :edit, :update, :destroy]

  def new
    @ticket = @project.tickets.build
  end

  def create
    @ticket = @project.tickets.build(params[:ticket])
    if @ticket.save
      redirect_to [@project, @ticket], notice: "Ticket has been created."
    else
      flash[:notice] = "Ticket has been not created."
      render action: :new
    end
  end

  def show
  end

  private

  def find_project
    @project = Project.find(params[:project_id])
  end

  def find_ticket
    @ticket = @project.tickets.find(params[:id])
  end
end
