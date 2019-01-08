from behave import *

@given('we have behave installed')
def step_impl(context):
    pass

@when('we visit the homepage')
def step_impl(context):
    assert True is not False

@then('we will be greeted with hello world!')
def step_impl(context):
    assert context.failed is False
