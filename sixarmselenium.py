#!/usr/bin/env python3

##
#
# SixArm Selenium helpers
#
##

import argparse
import os
import pathlib
import random
import selenium
import sixarmselenium
import sys
import textwrap
import time
import unittest
import urllib

from abc import ABC
from contextlib import contextmanager
from dataclasses import dataclass
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions
from selenium.common.exceptions import NoAlertPresentException
from selenium.common.exceptions import StaleElementReferenceException
from selenium.common.exceptions import TimeoutException
from typing import List

##
#
# Selenium extras
#
##

# Credit: http://www.obeythetestinggoat.com/how-to-get-selenium-to-wait-for-page-load-after-a-click.html
def link_is_stale(link):
    try:
        link.find_elements_by_id('x') # poll the link with an arbitrary call
        return False
    except StaleElementReferenceException:
        return True

# Credit: http://www.obeythetestinggoat.com/how-to-get-selenium-to-wait-for-page-load-after-a-click.html
def link_click_fresh(link):
    link.click()
    wait_for(link_has_gone_stale(link))

def map_element_to_attribute(element, attribute):
    return element.get_attribute(attribute)

def map_element_to_attribute_list(element, attribute):
    return map(lambda x: map_element_to_attribute(x, attribute), element.find_elements_by_xpath('./*[@' + attribute + ']'))

##
#
# Selenium expectations
#
##

class expect_current_url_starts_with(object):
    """An expectation for checking that the current URL starts with text.

    Example: wait until the current URL starts with 'https://example.com'

        wait = WebDriverWait(driver, 10)
        element = wait.until(expect_current_url_starts_with('https://example.com'))

    text - any text
    """
    def __init__(self, text):
        self.text = text

    def __call__(self, driver):
        """Return true iff the current URL starts with the text."""
        return driver.current_url.startswith(self.text)

# Credit: https://selenium-python.readthedocs.io/waits.html
class expect_element_has_css_class(object):
    """An expectation for checking that an element has a particular css class.

    Example: wait until an element with id='myId' has CSS class 'myClass':

        wait = WebDriverWait(driver, 10)
        element = wait.until(expect_element_has_css_class((By.ID, 'myId'), 'myClass')

    locator - used to find the element
    css_class - a CSS class name
    returns the WebElement once it has the particular css class
    """
    def __init__(self, locator, css_class):
        self.locator = locator
        self.css_class = css_class

    def __call__(self, driver):
        element = driver.find_element(*self.locator)   # Finding the referenced element
        if self.css_class in element.get_attribute("class"):
            return element
        else:
            return False

# Credit: https://www.fomfus.com/articles/make-selenium-wait-for-anything-you-want-before-continuing
class expect_element_by_css_selector(object):
    """An expectation for checking that an element exists.

    Example: wait until an element exists with CSS selector 'mySelector':

        wait = WebDriverWait(driver, 10)
        element = wait.until(expect_element_expect_element_by_css_selector('mySelector'))

    css_selector - a CSS selector
    returns the WebElement once it has the particular css class
    """
    def __init__(self, css_selector):
        self.css_selector = css_selector

    def __call__(self, driver):
        """Search for element; return true iff found."""
        try:
            driver.find_elements_by_css_selector(self.css_selector)
            return True
        except NoSuchElementException:
            return False

# Credit: https://www.fomfus.com/articles/make-selenium-wait-for-anything-you-want-before-continuing
class expect_elements_by_css_selector(object):
    """An expectation for checking that an element exists "number" times.

    Example: wait until an element with CSS selector 'mySelector' exists 3 times:

        wait = WebDriverWait(driver, 10)
        element = wait.until(expect_element_expect_element_by_css_selector('mySelector', 3))

    css_selector - a CSS selector
    returns the WebElement once it has the particular css class
    """
    def __init__(self, css_selector, number):
        self.css_selector = css_selector
        self.number = number

    def __call__(self, driver):
        """Search for element, and return true when found self.number times."""
        try:
            found = len(driver.find_elements_by_css_selector(self.css_selector))
        except NoSuchElementException:
            found = 0

        return found == self.number
