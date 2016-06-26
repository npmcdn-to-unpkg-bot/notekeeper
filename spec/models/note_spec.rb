require 'rails_helper'

RSpec.describe Note, type: :model do

  it "has a valid factory" do
    valid_note = build(:note)
    expect(valid_note).to be_valid
  end

  it "has an invalid factory called invalid_note" do
    invalid_note = build(:invalid_note) 
    expect(invalid_note).to be_invalid
  end

  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:user) }

end
