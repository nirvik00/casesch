#!/usr/bin/env python3
import argparse
import os
import sys

from tools.validate_sch import validate_schematron, print_failure
from tools.generate_sch import generate_sch
from tools.clean_xml import clean_files


def validate_schematrons(test_val_sch, test_val_xml):
    num_errors = 0
    failures = validate_schematron(
        test_val_sch,
        test_val_xml,
        result_path="val.txt",
        strict_context=False
    )
    s = ""
    for f in failures:
        if f.role == 'ERROR':
            num_errors += 1
        s += print_failure(test_val_sch, f)
        s += "\n"
    return s


def generate_schematron(filename):
    sch_bytes = generate_sch(filename)
    return sch_bytes


""" test_gen_file = "data/test_gen.csv"
gen_res_str = generate_schematron(test_gen_file)
print(gen_res_str)


test_val_sch = "data/BEQ_Mappings_medium.sch"
test_val_xml = "data/BuildingSync_sample_medium_01.xml"
val_res_str = validate_schematrons(test_val_sch, test_val_xml)
print(val_res_str) """
