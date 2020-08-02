require 'rails_helper'

RSpec.describe Adminstrator, type: :model do
  describe "#password=" do
    example "文字列を与えると、hash_passwordは長さ60の文字列になる" do
      admin = Adminstrator.new
      admin.password = "foobar"
      expect(admin.hashed_password).to be_kind_of(String)
      expect(admin.hashed_password.size).to eq(60)
    end

    example "nilを与えると、hashed_passwordはnilになる" do
      admin = Adminstrator.new(hashed_password: "x")
      admin.password = nil
      expect(admin.hashed_password).to be_nil
    end
  end
end
