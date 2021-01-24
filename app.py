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


@ app.route("/info", methods=["GET"])
def get_req():
    return jsonify({"project": "schematron, building sync", "person": "Prof. Dennis Shelden", "email": "sheldd@rpi.edu"})


@ app.route("/view", methods=["GET"])
def runHTML():
    return render_template("index.html")


@ app.route("/api/generate", methods=["POST"])
def file_save_generate_sch():
    try:
        filestorage = request.files['filename']
        filestorage.save(secure_filename(filestorage.filename))
        csv_file = filestorage.filename
        with open(csv_file, encoding='utf-8-sig') as f:
            rows = [{k: v for k, v in row.items()}
                    for row in csv.DictReader(f, skipinitialspace=True)]
        gen_res_str = generate_sch(rows)
        os.remove(csv_file)
        return gen_res_str
    except:
        return jsonify({"error": "server error - Check files"})


@ app.route("/api/validate", methods=["POST"])
def validate():
    try:
        file_storage_sch = request.files['schfile']
        file_storage_sch.save(secure_filename(file_storage_sch.filename))
        test_val_sch = file_storage_sch.filename

        file_storage_xml = request.files['xmlfile']
        file_storage_xml.save(secure_filename(file_storage_xml.filename))
        test_val_xml = file_storage_xml.filename

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
        os.remove(test_val_sch)
        os.remove(test_val_xml)
        os.remove("val.txt")
        return s
    except:
        return jsonify({"error": "server error - Check files"})


if __name__ == "__main__":
    app.run()
