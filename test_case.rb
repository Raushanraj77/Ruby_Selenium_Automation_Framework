require_relative 'login_page_elements'
require_relative 'home_page'
require 'selenium-webdriver'
@driver = Selenium::WebDriver.for(:chrome)
@driver.navigate.to("http://demo.guru99.com/V4/")
login = LoginPage.new(@driver)
login.login_site
homepage = HomePage.new(@driver)
homepage.verify_heading
