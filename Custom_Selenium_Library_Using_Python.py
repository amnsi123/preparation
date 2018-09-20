from robot.libraries.BuiltIn import BuiltIn
 
class Custom_Selenium_Library_Using_Python(object):
 
     
    def _s2l(self):
        return BuiltIn().get_library_instance('Selenium2Library')
 
     
    def _driver(self):
        return self._s2l()._current_browser()
 
    def perform_search(self, locator, criteria):
        textbox = self._driver().find_element_by_name(locator)
        textbox.send_keys(criteria)
        textbox.submit()

#Use this in case the above code doesn't work
# from robot.libraries.BuiltIn import BuiltIn
# 
#     
# def get_webdriver_instance():
#     se2lib = BuiltIn().get_library_instance('Selenium2Library')
#     return se2lib._current_browser()
#     
# def lets_type_something(locator,text):
#     get_webdriver_instance().find_element_by_name(locator).send_keys(text)
    
    
    

