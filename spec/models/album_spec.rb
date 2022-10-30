# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Album, type: :model do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:players) }
  it { is_expected.to have_many(:album_players).dependent(:destroy) }
  it { is_expected.to have_many(:players).through(:album_players) }
end