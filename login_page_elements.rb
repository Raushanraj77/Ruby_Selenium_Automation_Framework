require 'selenium-webdriver'
class LoginPage

  USER_NAME        = { name: 'uid'     }
  PASSWORD = { name: 'password'     }
  LOGIN_BUTTON = { name: 'btnLogin'  }

  attr_reader :driver

  def initialize(driver)
    @driver = driver

  end

  def visit
    driver.get ENV['base_url']
  end

  def login_site()
    driver.find_element(USER_NAME).send_keys "mngr165114"
    driver.find_element(PASSWORD).send_keys "AqYbAnY"
    driver.find_element(LOGIN_BUTTON).click
  end




end