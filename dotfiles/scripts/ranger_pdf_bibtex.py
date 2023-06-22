from pybtex.database.input import bibtex
from PyPDF2 import PdfReader
import sys
import os

file = sys.argv[1]

home = os.environ['HOME']

# file=home+"/Phd/Database/Papers/williamson1988first-First_Order_Logics_for_Comparative_Similarity.pdf"
bibfile = home+"/Phd/Database/Bib/karubib.bib"

parser = bibtex.Parser()
bib_data = parser.parse_file(bibfile)
current_entry = ""

for entry in bib_data.entries.values():
    if 'file' in list(entry.fields.keys()):
        pdf=entry.fields['file']
        file_pdf=pdf.split(':')[1]
        if file==file_pdf:
            current_entry = entry
            break

if current_entry == "":
    reader = PdfReader(file)
    print(len(reader.pages))
    page = reader.pages[0]
    text = page.extract_text()
    print(text)
else:
    print(current_entry.to_string("bibtex"))

