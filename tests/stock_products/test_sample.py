import pytest
from rest_framework.test import APIClient

def test_sample():
    client = APIClient()
    response = client.get('/api/v1/test')
    data = response
    assert data.status_code == 200