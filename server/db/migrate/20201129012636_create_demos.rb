class CreateDemos < ActiveRecord::Migration[6.0]
  def change
    create_table :demos do |t|
      t.string   :title, null: false
      t.text     :content, null: false
      t.integer  :status, null: false, default: 0

      t.timestamps null: false
    end
  end
end
