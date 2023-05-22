#!/usr/bin/python3
"""
    Script that uses a restful api for a given employee ID,
    returns information about his/her TODO list progress.
"""
import requests
import sys


if __name__ == '__main__':
    """Makes a GET request to the restful API endpoint"""
    employee_id = sys.argv[1]
    res = requests.get('https://jsonplaceholder.typicode.com/todos?userId={}'
                       .format(employee_id))
    todos = res.json()

    # filter completed task
    completed_tasks = [todo for todo in todos if todo['completed']]

    # get employee name
    user_respons = requests.get('https://jsonplaceholder.typicode.com/users/{}'
                                .format(employee_id))
    user = user_respons.json()
    employee_name = user['name']

    # print the employee's todo list progress
    print('Employee {} is done with tasks({}/{}):'
          .format(employee_name, len(completed_tasks), len(todos)))

    for task in completed_tasks:
        print('\t {}'.format(task['title']))
