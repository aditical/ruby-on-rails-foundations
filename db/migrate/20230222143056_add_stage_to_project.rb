class AddStageToProject < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :stage, :integer
  end
end
