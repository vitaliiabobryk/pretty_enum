# frozen_string_literal: true

require 'spec_helper'

RSpec.describe PrettyEnum do
  before do
    class Invitation
      extend PrettyEnum

      def self.model_name
        OpenStruct.new(i18n_key: 'invitation')
      end

      # mimic dynamically generated enum names
      def self.hash_statuses
        { self_signed_up: 0, invitation_pending: 1, accepted: 2 }
      end

      def self.array_statuses
        %i[pending in_progress completed]
      end

      pretty_enum :hash_statuses
      pretty_enum :array_statuses
    end
  end

  context 'when enum is a Hash' do
    it 'returns transform enum values' do
      expect(Invitation.pretty_hash_statuses).to eq({ self_signed_up: 'Self Signed Up',
                                                      invitation_pending: 'Invitation Pending',
                                                      accepted: 'Accepted' })
    end
  end

  context 'when enum is a Array' do
    it 'returns transform enum values' do
      expect(Invitation.pretty_array_statuses).to eq({ pending: 'Pending',
                                                       in_progress: 'In Progress',
                                                       completed: 'Completed' })
    end
  end
end
