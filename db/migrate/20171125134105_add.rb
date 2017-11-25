class Add < ActiveRecord::Migration[5.1]
  def change

    add_column :users, :name, :string
    add_column :users, :github_user_id, :string
    add_column :users, :stripe_customer_id, :string
    add_column :users, :detail, :text

    add_column :issues, :repository_name, :string
    add_column :issues, :github_issue_id, :string
    add_column :issues, :detail, :text
    add_column :issues, :title, :string
    add_column :issues, :cost, :integer
    add_column :issues, :user_id, :integer
    add_column :issues, :is_opened, :boolean

    add_column :challenges, :issue_id, :integer
    add_column :challenges, :user_id, :integer
    add_column :challenges, :status, :integer
    add_column :challenges, :detail, :string
    add_column :challenges, :pull_request_id, :integer

  end
end
