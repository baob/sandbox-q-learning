require 'policy/win_now_block_naive_line'

module Policy
  RSpec.describe WinNowBlockNaiveLine do

    subject { described_class }

    it_behaves_like 'any policy'

  end
end
