"""
Tests for the main module functionality.
"""
import pytest

from example_app.main import calculate_average


def test_calculate_average_basic():
    """Test basic average calculation."""
    assert calculate_average([1, 2, 3]) == 2.0


def test_calculate_average_single_number():
    """Test average with a single number."""
    assert calculate_average([5]) == 5.0


def test_calculate_average_empty_list():
    """Test that empty list raises ValueError."""
    with pytest.raises(ValueError):
        calculate_average([])


def test_calculate_average_floating_point():
    """Test average calculation with floating point numbers."""
    assert calculate_average([1.5, 2.5, 3.5]) == 2.5