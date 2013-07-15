class CreateContacts < ActiveRecord::Migration
  def change
     create_table :contacts do |t|
      t.string :fullname
      t.string :email
      t.string :message
      tstring :subject
    end
  end
end
