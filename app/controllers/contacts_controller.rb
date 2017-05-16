class ContactsController < ApplicationController
  def index
    if current_user
      if params[:group]
        # do some code stuff
        @contacts = Group.find_by(id: params[:group]).contacts.where(user_id: current_user.id)

      else
        @contacts = current_user.contacts
        render 'index.html.erb'
      end
    else
      redirect_to "/login"
    end
  end
  def show
    @contact = Contact.find_by(id: params[:id])
    render 'show.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    @contact = Contact.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      user_id: current_user.id
    )
    @contact.save
    render 'create.html.erb'
  end

  def edit
    @contact = Contact.find_by(id: params[:id])
    render 'edit.html.erb'
  end

  def update
    @contact = Contact.find_by(id: params[:id])
    @contact.update(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number]
      )
    render 'update.html.erb'
  end

  def destroy
    @contact = Contact.find_by(id: params[:id])
    @contact.destroy
    render 'destroy.html.erb'
  end

  def john
    @johns = Contact.all_johns
    render 'john.html.erb'
  end
end
