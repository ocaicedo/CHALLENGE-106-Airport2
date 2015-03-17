class AddForeignKey < ActiveRecord::Migration
  def change
  	add_foreign_key :flights, :airlines
  end
end
