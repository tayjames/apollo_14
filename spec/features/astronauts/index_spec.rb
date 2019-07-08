require "rails_helper"

RSpec.describe 'Astronaut Index Page', type: :model do
  describe 'As a visitor' do
    before :each do
      @astronaut = Astronaut.create!(name: "Neil Armstrong", age: 37, job: "Commander")
    end

    it "When I visit '/astronauts' I see a list of astronauts with the following info: Name, Age, Job" do
      visit '/astronauts'

      expect(page).to have_content("Name: #{@astronaut.name}")
      expect(page).to have_content("Age: #{@astronaut.age}")
      expect(page).to have_content("Job: #{@astronaut.job}")
    end
  end
end
