import csv

# Punctuation
punct_labels = ['O','COMMA','PERIOD','QUESTION','EXCLAM']
with open('punct_label_ids_vi.csv', 'w', newline='', encoding='utf-8') as f:
    writer = csv.writer(f)
    writer.writerow(['label','id'])
    for i, label in enumerate(punct_labels):
        writer.writerow([label,i])

# Capitalization
capit_labels = ['LOWER','UPPER','TITLE']
with open('capit_label_ids_vi.csv', 'w', newline='', encoding='utf-8') as f:
    writer = csv.writer(f)
    writer.writerow(['label','id'])
    for i, label in enumerate(capit_labels):
        writer.writerow([label,i])
