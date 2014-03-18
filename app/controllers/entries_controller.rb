class EntriesController < ApplicationController

  def create
    @entry = Entry.create(entry_params)
    redirect_to entry_path(@entry.id)
  end

  def destroy
    @entry = Entry.destroy(params[:id])
    redirect_to stop_entries_path
  end

  def new
    @entry = Entry.new
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def update
    @entry = Entry.find(params[:id])
    @entry.update(entry_params)
    redirect_to entry_path(@entry.id)
  end

  def edit
    @entry = Entry.find(params[:id])
  end

  private

  def entry_params
    params.require(:entry).permit(:photo, :text, :title, :stop_id)
  end
end