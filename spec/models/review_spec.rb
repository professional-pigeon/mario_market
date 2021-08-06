require 'rails_helper'

describe Review do
  it { should belong_to(:product) }
  it { should validate_presence_of :author }
  it { should validate_presence_of :content_body }
  it { should validate_presence_of :rating }
end