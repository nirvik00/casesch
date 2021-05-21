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
    return jsonify({"project": "schematron, building sync"})


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


@ app.route("/api/upload", methods=["POST"])
def upload():
    msg=""
    t=False
    if request.method== "POST":
        try:
            file_1= request.files['file']
            file_1.save(file_1.filename)
            msg += "\nfile -1 saved"
            t=True
        except:
            msg += "\nerror-1 in file not saved"
        if t==True:
            return jsonify({"msg": msg})
        else:
            try:
                file_1= request.files['filename']
                file_1.save(file_1.filename)
                msg += "\nfile -2 saved"
            except:
                msg+= "\nerror-2 in file not saved"
    return msg

@ app.route("/api/validate-x", methods=["POST", "GET"])
def validateX():
    print("validate-x")
    if request.method=="POST":
        test_val_sch  = "BEQ_Mappings_medium.sch"
        test_val_xml = "BuildingSync_sample_medium_01.xml"
        failures = validate_schematron(test_val_sch, test_val_xml, "val.txt", strict_context=False)
        print(failures)
        # os.remove(file_storage_xml.filename)
        # os.remove(file_storage_sch.filename)
        return ({"out": failures})
    else:
        return ({"msg": "send post req"})


@ app.route("/api/validate-1", methods=["POST", "GET"])
def validate1():
    print("validate-1")
    if request.method=="POST":
        file_storage_sch  = request.files['schfile']
        file_storage_sch.save(file_storage_sch.filename)
        file_storage_xml = request.files['xmlfile']
        file_storage_xml.save(file_storage_xml.filename)
        test_val_sch= file_storage_sch.filename
        test_val_xml = file_storage_xml.filename
        failures = validate_schematron(test_val_sch, test_val_xml, "val.txt", strict_context=False)
        print(failures)

        os.remove(file_storage_xml.filename)
        os.remove(file_storage_sch.filename)

        return ({"out": failures})
    else:
        return ({"msg": "send post req"})

if __name__ == "__main__":
    app.run()
