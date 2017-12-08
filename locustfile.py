from locust import HttpLocust
from users import WebUser, HOST


class WebsiteUser(HttpLocust):
    host = HOST
    task_set = WebUser