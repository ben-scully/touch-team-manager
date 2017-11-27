class CreateCoaches < ActiveRecord::Migration[5.1]
  def change
    create_table :coaches do |t|
      t.references :user
      t.references :team

      t.timestamps
    end
  end
end
