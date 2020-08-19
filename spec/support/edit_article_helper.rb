def edit_article
  visit edit_article_path
  if current_user?
    fill_in :article_title, with: 'Header'
    fill_in :article_text, with: 'Something'
  else
    visit new_article_path
    expect(page).to heve_content 'You need to sign in or sign up before continuing.'
  end
end