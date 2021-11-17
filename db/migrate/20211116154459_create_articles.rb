class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    # def create_table(name)
    #   creator = TableCreator.new(db_connection: current_connection)
    #   creator.table_name = name
    #   yield creator # this is the line that creates the |t| in your question
    #   t.save
    # end
    # The call to create_table specifies how the articles table should be constructed.
    #  By default, the create_table method adds an id column as an auto-incrementing primary key.
    #  So the first record in the table will have an id of 1, the next record will have an id of 2, and so on.
    create_table :articles do |t|
      t.string :title
      t.text :body

      t.timestamps # This method defines two additional columns named created_at and updated_at
    end
  end
end
