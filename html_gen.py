import nbconvert
import os
import os.path as op
import json

nb_fnames = [_f for _f in os.listdir('notebooks') if _f.endswith('.ipynb')]
nb_names = []
for nb_fname in nb_fnames:
    nb_path = op.join('notebooks', nb_fname)
    nb_name = nb_fname.split('.')[0]
    html_path = nb_name + '.html'
    html_exporter = nbconvert.HTMLExporter()

    (body, resources) = html_exporter.from_filename(nb_path)
    with open(html_path, 'w') as html_file:
        html_file.write(body)
    nb_names.append(nb_name)

nbs_json = json.dumps(nb_names)
with open('nbs.json', 'w') as _file:
    _file.write(nbs_json)
