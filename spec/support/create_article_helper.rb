def create_article
    visit new_article_path

    fill_in :article_title, with: "Test"
    fill_in :article_text, with: "something"

    click_button 'Save Article'
end