class CreateTeamMembers < ActiveRecord::Migration[5.1]
  def self.up
    create_table :team_members do |t|
      t.string :name
      t.string :position
      t.string :description
      t.string :facebook_profile
      t.string :linkedin_profile
      t.string :twitter_profile
      t.integer :status, default: 0
      t.integer :sort_order
      t.string :image_asset, default: "team/default-user.png"
      t.timestamps
    end
    TeamMember.create(image_asset: "team/asnad.jpg", name: "Asnad Atta", position: "CEO/Co-founder", sort_order: 0)
    TeamMember.create(image_asset: "team/ayaz.jpg", name: "Ayaz Hussain Alvi", position: "Co-founder/Business Analyst", sort_order: 1)
    TeamMember.create(image_asset: "team/3.jpg", name: "Tariq Hussain", position: "Lead RoR Developer", sort_order: 2)
  end
  def self.down
    drop_table :team_members
  end

end
