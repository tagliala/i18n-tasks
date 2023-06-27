# frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'Tree traversal' do
  delegate :i18n_task, to: :TestCodebase

  after do
    TestCodebase.teardown
  end

  # --- setup ---
  before do
    TestCodebase.setup fixtures_contents
  end

  describe '#grep_keys' do
    it 'returns Siblings' do
      expect(i18n_task.data['en'].grep_keys(/key/)).to be_a(I18n::Tasks::Data::Tree::Siblings)
    end
  end
end
