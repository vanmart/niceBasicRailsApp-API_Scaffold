class RolifyCreateRoles < ActiveRecord::Migration
  def change
    create_table(:roles) do |t|
      t.string :name, null: false, default: ""
      t.references :resource, :polymorphic => true

      t.timestamps
    end

    create_table(:users_roles, :id => false) do |t|
      t.references :user, null: false, default: ""
      t.references :role, null: false, default: ""
    end

    add_index(:roles, :name)
    add_index(:roles, [ :name, :resource_type, :resource_id ])
    add_index(:users_roles, [ :user_id, :role_id ])
  end
end
