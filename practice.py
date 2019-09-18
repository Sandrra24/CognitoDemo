import csv
import json
import pandas as pd
# from hospitalcodes.models import Cvxcodes
#
# cols=["icd1o CODES : Symptoms Code Descriptions",]
data_xls = pd.read_excel('final ICD10-R codes for symptoms.xlsx',  index_col=None)
data_xls.to_csv('final ICD10-R codes for symptoms.csv', encoding='utf-8')
# cols=["icd1o CODES : Symptoms Code Descriptions",]
csvfile = pd.read_csv('final ICD10-R codes for symptoms.csv')



fieldnames =("coodes","description",)

newcsv=pd.DataFrame(columns=fieldnames )
# print csvfile["PCS CODES : Procedure Code Descriptions"]
pcs=[]
proccodes=[]
for  row in csvfile["R00 : Abnormalities of heart beat"]:
    pcs.append(row.split(":")[0])
    proccodes.append(row.split(":")[1])

newcsv["coodes"]=pcs
newcsv["description"]=proccodes
# print newcsv
newcsv.to_csv('finalICD10-Rcodesforsymptoms.csv', encoding='utf-8')
data = []

# with open('finalvaccinecodes.csv') as f:
#     for row in csv.DictReader(f):
#         data.append(row)
#
# with open('file.json', 'w') as jsfile:
#     json.dump(data, jsfile)
    # json_data = json.dumps(data)
# # print json_data