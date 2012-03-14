class ContactsController < ApplicationController
	
	def index
		@title = "All Contacts"
		@contacts = Contact.paginate(:page => params[:page])
	end
	
	def show
    @contacts = Contact.find(params[:id])
  end

  def new
    @contact = Contact.new
    @title = "New Contact"
  end

  def create 
    @contact = Contact.new(params[:contact])
    if @contact.save
      flash[:success] = "New Contact Created!"
      redirect_to @contact
    else
      @title = "New Contact"
      render 'new'
    end
  end

	def edit
		@title = "Edit Contact"
		@contact = Contact.find(params[:id])
	end

	def update
		@contact = Contact.find(params[:id])
		if @contact.update_attributes(params[:contact])
			flash[:success] = "Contact updated."
			redirect_to @contact
		else
			@title = "Edit Contact"
			render 'edit'
		end
	end

	def destroy
		Contact.find(params[:id]).destroy
		flash[:success] = "Contact destroyed."
		redirect_to contacts_path
	end
end
