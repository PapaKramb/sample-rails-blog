require "spec_helper"
require "rails_helper"

feature "Edit article" do
  before(:each) do
    edit_article
  end

  scenario "edit article to sign up co current_user" do
    visit edit_article_path
    edit_article
    expect(page).to have_content I18n.t('articles.edit_articles')
  end


end