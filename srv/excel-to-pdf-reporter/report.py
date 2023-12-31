import openpyxl
import re
from fpdf import FPDF
import argparse
import os
parser = argparse.ArgumentParser(description='Process Excel file.')
parser.add_argument('--excel_file_path', help='Path to the Excel file')
args = parser.parse_args()
excel_file = args.excel_file_path
current_dir = os.path.dirname(os.path.abspath(__file__))

workbook = openpyxl.load_workbook(excel_file, data_only=True)
sheet = workbook.active
headers = sheet[1]
maxPoints = sheet[2]

def normalize(comment_text):
    # Regex pattern to identify the standard disclaimer in threaded comments
    disclaimer_pattern = r"\[Threaded comment\][\s\S]*?https://go\.microsoft\.com/fwlink/\?linkid=870924"
    # Remove the standard disclaimer
    stripped_text = re.sub(disclaimer_pattern, "", comment_text)
    # Remove "Comment: " from the string
    stripped_text = stripped_text.replace("Comment:", "")
    stripped_text = stripped_text.replace("None", "")
    # Remove extra whitespaces
    stripped_text = re.sub(r'\s+', ' ', stripped_text).strip()
    return stripped_text

# Iterate over each row in the worksheet, starting from the third row
for row_index, row in enumerate(sheet.iter_rows(min_row=3), start=2):
    if row[0].value is None:
        continue
    # Initialize a new PDF document
    pdf_name = f"{current_dir}/output/_report_{row[0].value}.pdf"
    
    pdf = FPDF()
    pdf.add_font('DejaVu', '', f"{current_dir}/fonts/DejaVuSans.ttf", uni=True)
    pdf.add_font('DejaVu', 'B',f"{current_dir}/fonts/DejaVuSans-Bold.ttf", uni=True)
    pdf.add_page()
     
    pdf.set_font("DejaVu", size=12)
    pdf.multi_cell(0, 8, f"Bewertung Projektarbeit - SJ 23/24 / Modul 290 - Gruppe: {row[0].value}", align='L')

    pdf.set_font("DejaVu", size=7)
    entry_text = """Das Bewertungsformat ist wie folgt aufgebaut: 
    Jeder Abschnitt der Bewertung ist fett gedruckt.
    Alle Abschnitte zusammen ergeben die Gesamtpunktzahl.
    Unter dem Abschnitt sind die entsprechenden Projektaufgaben aufgeführt. 
    """
    pdf.multi_cell(0, 4, entry_text, align='L')
   
    counter=0
    for cell in row:
        counter = counter + 1
        if counter == 1:
            continue
        cell_value = str(cell.value) if cell.value else ''
        cell_value = normalize(cell_value)
        header = headers[counter-1].value if headers[counter-1].value else '' 
        header = normalize(str(header))  
        max_points = maxPoints[counter-1].value 
        
        entry = f"{header}: {cell_value} von {max_points}"
        if re.search('[a-zA-Z]', header):
            pdf.ln(4)
            pdf.set_font("DejaVu", 'B', 10) 
            entry = f"{header}: {cell_value} von {max_points}"  
        else:
            pdf.set_font("DejaVu", '', 10)
            entry = f"Aufgabe {header}: {cell_value} ({max_points})"  
        pdf.multi_cell(0, 8, entry, align='L')
        
        # Check for comments and append if present
        if cell.comment:
            comment_text = normalize(cell.comment.text.strip())
            pdf.set_font("DejaVu", size=8)  # Smaller font for comments
            
            for part in comment_text.split("- "): 
                part = re.sub(r'\s+', ' ', part).strip()
                if (part): 
                    pdf.multi_cell(0, 4, f"- {part}", align='L')
                    pdf.ln(1)
                
            pdf.set_font("DejaVu", size=10)  # Reset font size to normal
       
    # Save the PDF file   
    pdf.output(pdf_name)
    print(f"PDF file created: {pdf_name}")
