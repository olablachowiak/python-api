# Python API

This is an example API using Python.

## Prerequisites

Make sure you have a recent version of `python3` installed.

```shell
sudo apt install -y python3-dev python3-pip python3-venv
```

Now create a virtual environment.

```shell
python3 -m venv venv --prompt python-api
```

Activate the virtual environment.

```shell
source venv/bin/activate
```

Install the dependencies.

```shell
pip install -r requirements.txt
```

Run the application during development.

```shell
python main.py
```