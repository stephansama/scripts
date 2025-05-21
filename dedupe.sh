#!/bin/sh

sort "$1" | uniq --count --repeated
