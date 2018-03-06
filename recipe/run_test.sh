#!/bin/bash
ulimit -c unlimited
ulimit -a
python run_np_tests.py
