import os
import sys
import csv
import io

from flask import Flask, jsonify, render_template, request, make_response

from werkzeug.utils import secure_filename

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


app = Flask(__name__)


@app.route("/")
def hello():
    return jsonify({"msg": "Hello, World from schematron project at CASE, RPI"})


@ app.route("/get", methods=["GET"])
def get_req():
    return jsonify({"person": "Prof. Dennis Shelden", "email": "sheldd@rpi.edu"})


@ app.route("/view", methods=["GET"])
def runHTML():
    return render_template("index.html")


@ app.route("/api/save_generate", methods=["POST"])
def file_save_generate_sch():
    filestorage = request.files['filename']
    filestorage.save(secure_filename(filestorage.filename))
    csv_file = filestorage.filename
    with open(csv_file, encoding='utf-8-sig') as f:
        rows = [{k: v for k, v in row.items()}
                for row in csv.DictReader(f, skipinitialspace=True)]
    gen_res_str = generate_sch(rows)
    return gen_res_str


@ app.route("/api/validate", methods=["POST"])
def validate():
    test_val_sch = request.files['schfile']
    test_val_xml = request.files['xmlfile']
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


if __name__ == "__main__":
    app.run()
