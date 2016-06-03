require 'rails_helper'

RSpec.describe Hike, type: :model do
  it { should validate_presence_of(:date_hiked) }
  it { should validate_presence_of(:route) }
  it { should validate_presence_of(:description) }
end
