require 'spec_helper'

describe "Places" do
	it "if one is returned by the API, it is show at the page" do
		BeermappingApi.stub(:places_in).with("kumpula").and_return(
        [ Place.new(:name => "Oljenkorsi") ]
    )

		visit places_path
		fill_in('city', with: 'kumpula')
		click_button "Search"

		expect(page).to have_content "Oljenkorsi"
	end

	it "if several restaurants returned by the API, all shown" do
		BeermappingApi.stub(:places_in).with("hyvinkaa").and_return(
			[ Place.new(:name => "Joutsen"),
				Place.new(:name => "Hopis"),
				Place.new(:name => "Zoomi") ]
		)
		visit places_path
		fill_in('city', with: 'hyvinkaa')
		click_button "Search"

		expect(page).to have_content "Joutsen"
		expect(page).to have_content "Hopis"
		expect(page).to have_content "Zoomi"

	end

	it "if none is found, error should be shown" do
		BeermappingApi.stub(:places_in).with("Laihia").and_return(
			[]
		)

		visit places_path
		fill_in('city', with: 'Laihia')
		click_button "Search"

		expect(page).to have_content "No locations in Laihia"
	end

end
