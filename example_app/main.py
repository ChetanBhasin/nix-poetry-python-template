"""
Example application demonstrating a simple function and CLI entry point.
"""

from typing import List


def calculate_average(numbers: List[float]) -> float:
    """
    Calculate the average of a list of numbers.

    Args:
        numbers: A list of numbers to average

    Returns:
        The average of the input numbers

    Raises:
        ValueError: If the input list is empty
    """
    if not numbers:
        raise ValueError("Cannot calculate average of empty list")
    return sum(numbers) / len(numbers)


def main() -> None:
    """Main entry point for the example application."""
    example_numbers: List[float] = [1, 2, 3, 4, 5]
    result = calculate_average(example_numbers)
    print(f"The average of {example_numbers} is: {result}")


if __name__ == "__main__":
    main()
