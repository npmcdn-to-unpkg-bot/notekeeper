require 'rails_helper'

RSpec.describe NotesController, type: :controller do

  before :each do
    sign_in_as_user
  end
  
  describe 'POST #create' do
    context 'with valid params' do

      it "creates a new note" do
        expect {
          post :create, note: attributes_for(:note)
        }.to change{ Note.count }.from(0).to(1)
      end

    end
  end

end
