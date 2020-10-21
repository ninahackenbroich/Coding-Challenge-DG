class CreateLunchgroups < ActiveRecord::Migration[6.0]
  def change
    create_table :lunchgroups do |t|
      t.string :name

      t.timestamps
    end
  end
end
