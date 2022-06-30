class CreateVisibilities < ActiveRecord::Migration[6.1]
  def change
    create_table :visibilities do |t|
      t.string :definition

      t.timestamps
    end
  end
end
