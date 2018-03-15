class CreateLandingContents < ActiveRecord::Migration[5.1]
  def self.up
    create_table :landing_contents do |t|
      t.string :slogan
      t.string :main_heading
      t.string :team_upper_text
      t.string :team_heading
      t.text :team_description
      t.string :service_upper_text
      t.string :service_heading
      t.string :contact_upper_text
      t.string :about_us_upper_text
      t.string :about_us_heading
      t.string :contact_us_heading

      t.timestamps
    end
    LandingContent.create(
      slogan: "We love to build fabolous systems",
      main_heading: "Welcome To Your Solution!",
      service_upper_text: "We are proud to help our clients in..",
      service_heading: "Services",
      about_us_upper_text: "Lorem ipsum dolor sit amet consectetur.",
      about_us_heading: "About",
      team_upper_text: "Let us indroduce our shining stars",
      team_heading: "Our Amazing Team",
      contact_upper_text: "Lorem ipsum dolor sit amet consectetur.",
      contact_us_heading: "Contact Us",
      team_description: "Our team is responsible to deliver the best product to our clients. Team is trained to follow agile development methodology through out the software development life-cycle."
    )
  end
  def self.down
    drop_table :landing_contents
  end
end
