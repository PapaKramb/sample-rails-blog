class CreateTerms < ActiveRecord::Migration[6.0]
  def change
    create_table :terms do |t|
      t.text :terms

      t.timestamps
    end
  end
end
