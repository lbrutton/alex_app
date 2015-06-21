class DropAdmins < ActiveRecord::Migration
	def down
		drop_table "admins"
	end
end