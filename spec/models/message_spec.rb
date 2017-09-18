require 'rails_helper'

 describe Message do
   describe '#create' do
   let(:image_path) { File.join(Rails.root, 'spec/fixtures/image.jpg') }
   let(:image) { Rack::Test::UploadedFile.new(image_path) }

     it "is valid with a content" do
       message = build(:message, content: "good morning!")
       expect(message).to be_valid
     end

     it "is valid with a image" do
       message = build(:message, image: image)
       expect(message).to be_valid
     end

     it "is valid with a content, image" do
       message = build(:message, content: "good morning!", image: image)
       expect(message).to be_valid
     end

     it "is invalid without a content, image" do
       message = build(:message, content: nil, image: nil)
       message.valid?
       expect(message.errors[:content_or_image]).to include("を入力してください")
     end

     it "is invalid without a group_id" do
       message = build(:message, group_id: nil)
       message.valid?
       expect(message.errors[:group]).to include("を入力してください")
     end

     it "is invalid without a user_id" do
       message = build(:message, user_id: nil)
       message.valid?
       expect(message.errors[:user]).to include("を入力してください")
     end
   end
 end
