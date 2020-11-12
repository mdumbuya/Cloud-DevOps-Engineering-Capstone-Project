#!/usr/bin/env python
import click

@click.command()
def hello():
    click.echo('Hello, this is the capstone of mdumbu.')

if __name__ == '__main__':
    hello()