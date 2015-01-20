class DropPossibleAnswers < ActiveRecord::Migration
  def up
    drop_table :possible_answers
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
