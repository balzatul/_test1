Given(/^Open Adopt a Puppy home page\.$/) do
  visit AdoptPuppyPage
end


Then(/^All left menu elements are present\.$/) do
  on(AdoptPuppyPage) do |page|
    expect(page.menuAdoptAPuppy?).to be_truthy
    expect(page.menuLearn?).to be_truthy
    expect(page.menuAnimalShelters?).to be_truthy
    expect(page.menuClassifieds?).to be_truthy
    expect(page.menuMessageBoards?).to be_truthy
    expect(page.menuPetNews?).to be_truthy
  end
end