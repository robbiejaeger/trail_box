class CreateHikesCategoriesJoinTable < ActiveRecord::Migration
  def change
    create_join_table :hikes, :categories
  end
end
