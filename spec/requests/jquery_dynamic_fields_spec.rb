require File.expand_path("../../spec_helper", __FILE__)

describe "JqueryDynamicFields" do
  describe "adding fields" do
    it "adds a field", js: true do
      visit new_tasklist_path
      click_link "add a task"
      page.should have_selector "label", text: "Label"
    end
  end

  describe "removing fields" do
    it "removes a field", js: true do
      tasklist = Tasklist.create!(title: "Foo")
      Task.create!(label: "bar", tasklist_id: tasklist.id)
      visit edit_tasklist_path(tasklist)
      page.should have_selector "input", value: "bar"
      click_link "remove"
      page.should_not have_content "bar"
    end
  end
end
