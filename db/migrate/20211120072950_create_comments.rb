class CreateComments < ActiveRecord::Migration[6.1]
  def change
    # https://guides.rubyonrails.org/getting_started.html#adding-a-second-model
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :article, null: false, foreign_key: true

      t.timestamps
    end
  end
end
