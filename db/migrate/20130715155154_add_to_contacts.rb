class AddToContacts < ActiveRecord::Migration
 def change
    add_column :contacts, :fullname, :string
    add_column :contacts, :email, :string
    add_column :contacts, :subject, :string
    add_column :contacts, :message, :string
    add_column :contacts, :phone, :integer
    add_column :contacts, :country, :string
  end
end
