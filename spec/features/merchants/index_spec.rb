require 'rails_helper'

RSpec.describe "Merchants Index" do
  describe "As a visitor" do
    describe "When I visit '/merchants'" do
      it "I should see a list of merchants by name, and when I click the merchant's name, I should be on page '/merchants/:id', and I should see a list of items that merchant sells." do
        VCR.usecassette("Merchants") do
          visit '/merchants'
  
          expect(page).to have_link("Schroeder-Jerde")
          expect(page).to have_link("Klein, Rempel and Jones")
          expect(page).to have_link("Willms and Sons")
          expect(page).to have_link("Cummings-Thiel")
          expect(page).to have_link("Williamson Group")
          expect(page).to have_link("Bernhard-Johns")
          expect(page).to have_link("Osinski, Pollich and Koelpin")
          expect(page).to have_link("Hand-Spencer")
          expect(page).to have_link("Bechtelar, Jones and Stokes")
        end

        VCR.use_cassette("Schroeder-Jerde") do
          click_link("Schroeder-Jerde")
          
          expect(current_path).to eq("/merchants/1")

          expect(page).to have_content("Item Nemo Facere")
          expect(page).to have_content("Item Expedita Aliquam")
          expect(page).to have_content("Item Provident At")
          expect(page).to have_content("Item Expedita Fuga")
          expect(page).to have_content("Item Est Consequuntur")
        end

        VCR.use_cassette("Klein, Rempel and Jones") do
          click_link("Klein, Rempel and Jones")
          
          expect(current_path).to eq("/merchants/2")

          expect(page).to have_content("Item Adipisci Sint")
          expect(page).to have_content("Item Laudantium Ex")
          expect(page).to have_content("Item Reiciendis Est")
          expect(page).to have_content("Item Rerum Saepe")
          expect(page).to have_content("Item Dolorem Et")
        end

        VCR.use_cassette("Willms and Sons") do
          click_link("Willms and Sons")
          
          expect(current_path).to eq("/merchants/3")

          expect(page).to have_content("Item Enim Error")
          expect(page).to have_content("Item Delectus Dolorem")
          expect(page).to have_content("Item Iusto Atque")
          expect(page).to have_content("Item Et Reiciendis")
          expect(page).to have_content("Item Aperiam Voluptatibus")
        end

        VCR.use_cassette("Cummings-Thiel") do
          click_link("Cummings-Thiel")
          
          expect(current_path).to eq("/merchants/4")
        end

        VCR.use_cassette("Williamson Group") do
          click_link("Williamson Group")
          
          expect(current_path).to eq("/merchants/5")
        end

        VCR.use_cassette("Bernhard-Johns") do
          click_link("Bernhard-Johns")
          
          expect(current_path).to eq("/merchants/7")
        end

        VCR.use_cassette("Osinski, Pollich and Koelpin") do
          click_link("Osinski, Pollich and Koelpin")
          
          expect(current_path).to eq("/merchants/8")
        end

        VCR.use_cassette("Hand-Spencer") do
          click_link("Hand-Spencer")
          
          expect(current_path).to eq("/merchants/9")
        end

        VCR.use_cassette("Bechtelar, Jones and Stokes") do
          click_link("Bechtelar, Jones and Stokes")
          
          expect(current_path).to eq("/merchants/10")
        end
      end
    end
  end
end