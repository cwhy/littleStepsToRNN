import nbconvert
from traitlets.config import Config
import os
import os.path as op
import json

nb_fnames = [_f for _f in os.listdir('notebooks') if _f.endswith('.ipynb')]
nb_names = []
c = Config({
    'RevealHelpTransformer':{
        'enabled':True,
        'url_prefix':'reveal.js',
    }})

c.Exporter.template_file = 'slide.tpl'
slide_exporter = nbconvert.SlidesExporter(config=c)
html_exporter = nbconvert.HTMLExporter()
for nb_fname in nb_fnames:
    nb_path = op.join('notebooks', nb_fname)
    nb_name = ' '.join(nb_fname.split('.')[:-1])

    (body_html, _) = html_exporter.from_filename(nb_path)
    (body_slides, _) = slide_exporter.from_filename(nb_path)

    html_path = nb_name + '.html'
    slides_path = nb_name + '_slides.html'
    with open(html_path, 'w') as html_file:
        html_file.write(body_html)
    with open(slides_path, 'w') as slides_file:
        slides_file.write(body_slides)
    nb_names.append(nb_name)

nb_names.sort()
nbs_json = json.dumps(nb_names)
with open('nbs.json', 'w') as _file:
    _file.write(nbs_json)
