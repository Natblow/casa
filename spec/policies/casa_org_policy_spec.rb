require "rails_helper"

RSpec.describe CasaOrgPolicy do
  subject { described_class }

  let(:casa_admin) { build_stubbed(:casa_admin) }
  let(:volunteer) { build_stubbed(:volunteer) }
  let(:supervisor) { build_stubbed(:supervisor) }

  permissions :edit?, :update? do
    it "allows casa_admins" do
      is_expected.to permit(casa_admin)
    end

    it "does not permit supervisor" do
      is_expected.to_not permit(supervisor)
    end

    it "does not permit supervisor" do
      is_expected.to_not permit(volunteer)
    end
  end
end
