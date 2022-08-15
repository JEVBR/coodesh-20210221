require 'rails_helper'

RSpec.describe Launcher, type: :model do
  subject {
    described_class.new(imported_t: DateTime.now,
                        imported_id: "c185a08e-9d82-4590-a13f-213c84c865e0",
                        status: 'draft',
                        data: 'testdata')
  }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without imported_t' do
    subject.imported_t = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without status' do
    subject.status = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without data' do
    subject.data = nil
    expect(subject).to_not be_valid
  end
end