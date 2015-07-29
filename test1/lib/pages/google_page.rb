class GooglePage
  include PageObject

  page_url("https://www.google.com")
  #page_url = "https://www.google.com"

  text_field(:txtSearch, :name => 'q')
  button(:btnSubmit, :name => 'btnG')
  button(:btnLuck, :name => 'btnI')


end