import os
import sys
import csv
import io
import functools
from flask import Flask, jsonify, render_template, request, make_response, url_for
from werkzeug.utils import secure_filename
from tools.validate_sch import validate_schematron, print_failure
from tools.generate_sch import generate_sch
from tools.clean_xml import clean_files

app = Flask(__name__)


@app.route("/")
def hello():
    return render_template("index.html")


@ app.route("/info", methods=["GET"])
def get_req():
    return jsonify({"project": "schematron, building sync", "person": "Prof. Dennis Shelden", "email": "sheldd@rpi.edu"})


@ app.route("/api/generate", methods=["POST"])
def file_save_generate_sch():
    try:
        filestorage = request.files['filename']
        filestorage.save(secure_filename(filestorage.filename))
        csv_file = filestorage.filename
        with open(csv_file, encoding='utf-8-sig') as f:
            rows = [{k: v for k, v in row.items()}
                    for row in csv.DictReader(f, skipinitialspace=True)]
        os.remove(csv_file)
        return generate_sch(rows)
    except:
        return jsonify({"error": "server error - Check files"})


@ app.route("/api/validate", methods=["POST"])
def validate():
    try:
        file_storage_sch, file_storage_xml = request.files['schfile'], request.files['xmlfile']
        file_storage_sch.save(secure_filename(file_storage_sch.filename))
        file_storage_xml.save(secure_filename(file_storage_xml.filename))
        test_val_sch, test_val_xml = file_storage_sch.filename, file_storage_xml.filename
        failures = validate_schematron(
            test_val_sch, test_val_xml, result_path="val.txt", strict_context=False)
        os.remove(test_val_sch)
        os.remove(test_val_xml)
        os.remove("val.txt")
        return {"x": failures}
    except:
        return {"x": "error", "y": "check file encoding: should be UTF-8", "status": "500"}


if __name__ == "__main__":
    app.run()
