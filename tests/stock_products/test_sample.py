import pytest
from rest_framework.test import APIClient
import os
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'mysite.settings')
import django
django.setup()

def test_sample():
    client = APIClient()
    response = client.get('/api/v1/test')
    data = response
    assert data.status_code == 200