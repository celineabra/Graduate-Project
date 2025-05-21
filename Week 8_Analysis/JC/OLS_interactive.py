import nbformat as nbf

# Create a new notebook object
nb = nbf.v4.new_notebook()
cells = []

# 1. Markdown intro
cells.append(nbf.v4.new_markdown_cell(
    "# Interactive Life Expectancy Simulator\n\n"
    "Adjust health predictors to see how the predicted life expectancy changes and "
    "view the distribution of the predictor you just changed.\n\n"
    "Use the dropdown to select a 2020 country to auto-populate sliders with its values."
))

# 2. Imports & data load
cells.append(nbf.v4.new_code_cell(
    "import pandas as pd\n"
    "import matplotlib.pyplot as plt\n"
    "import seaborn as sns\n"
    "import ipywidgets as widgets\n"
    "from IPython.display import display, HTML\n\n"
    "# Load data\n"
    "coefs_df = pd.read_csv('health_unscaled_coefficients.csv')\n"
    "data_df  = pd.read_csv('health_predictors.csv')\n"
    "sns.set_theme(style='whitegrid')"
))

# 3. Prepare intercept, slopes & predictors list
cells.append(nbf.v4.new_code_cell(
    "# Extract intercept\n"
    "intercept = coefs_df.loc[coefs_df['variable']=='Intercept', 'beta_unscaled'].iat[0]\n"
    "# Build slopes dict for all other variables\n"
    "slopes = (\n"
    "    coefs_df[coefs_df['variable']!='Intercept']\n"
    "    .set_index('variable')['beta_unscaled']\n"
    "    .to_dict()\n"
    ")\n"
    "# Exclude unwanted variable if present\n"
    "slopes.pop('Lifetime risk of maternal death (1 in: rate varies by country)', None)\n"
    "predictors = list(slopes.keys())\n"
    "predictors"
))

# 4. Prediction function
cells.append(nbf.v4.new_code_cell(
    "def predict_le(vals):\n"
    "    '''Compute predicted life expectancy given a dict of predictor values.'''\n"
    "    return intercept + sum(slopes[var] * vals[var] for var in predictors)"
))

# 5. Country selector + Create sliders with actual data ranges
cells.append(nbf.v4.new_code_cell(
    "# Country dropdown for 2020\n"
    "countries_2020 = sorted(data_df.loc[data_df['Year']==2020, 'CountryShortName'].unique())\n"
    "country_dd = widgets.Dropdown(\n"
    "    options=countries_2020,\n"
    "    description='Use 2020 Country:',\n"
    "    layout=widgets.Layout(width='400px')\n"
    ")\n\n"
    "# Create sliders\n"
    "sliders = {}\n"
    "for var in predictors:\n"
    "    col = data_df[var].dropna()\n"
    "    min_val, max_val = float(col.min()), float(col.max())\n"
    "    mu = coefs_df.loc[coefs_df['variable']==var, 'mean'].iat[0]\n"
    "    step = (max_val - min_val) / 100.0\n"
    "    sliders[var] = widgets.FloatSlider(\n"
    "        value=mu,\n"
    "        min=min_val,\n"
    "        max=max_val,\n"
    "        step=step,\n"
    "        description=var,\n"
    "        continuous_update=False,\n"
    "        layout=widgets.Layout(width='1200px'),\n"
    "        style={'description_width': '600px'}\n"
    "    )\n"
    "\n"
    "# Display all controls\n"
    "ui = widgets.VBox([country_dd] + list(sliders.values()))\n"
    "display(ui)"
))

# 6. Output area & update logic including country observer
cells.append(nbf.v4.new_code_cell(
    "out = widgets.Output()\n"
    "display(out)\n\n"
    "def update(var):\n"
    "    out.clear_output()\n"
    "    vals = {v: sliders[v].value for v in predictors}\n"
    "    pred = predict_le(vals)\n"
    "    with out:\n"
    "        display(HTML(f\"<h2 style='color:darkblue;'>Predicted Life Expectancy: {pred:.2f} years</h2>\"))\n"
    "        plt.figure(figsize=(6,4))\n"
    "        sns.histplot(data_df[var].dropna(), bins=30, kde=True)\n"
    "        plt.axvline(sliders[var].value, color='red', linestyle='--')\n"
    "        plt.title(f\"Distribution of {var}\")\n"
    "        plt.xlabel(var)\n"
    "        plt.tight_layout()\n"
    "        plt.show()\n\n"
    "def on_country_change(change):\n"
    "    country = change['new']\n"
    "    row = data_df[(data_df['Year']==2020) & (data_df['CountryShortName']==country)].iloc[0]\n"
    "    for v in predictors:\n"
    "        sliders[v].value = float(row[v])\n"
    "    # refresh using the first predictor\n"
    "    update(predictors[0])\n\n"
    "# Attach observers\n"
    "for w in sliders.values():\n"
    "    w.unobserve_all()\n"
    "for var, w in sliders.items():\n"
    "    w.observe(lambda change, var=var: update(var), names='value')\n"
    "country_dd.observe(on_country_change, names='value')\n\n"
    "# initial draw\n"
    "update(predictors[0])"
))

# Assign cells and write notebook
nb['cells'] = cells
with open('Interactive_Life_Expectancy_Simulator.ipynb', 'w') as f:
    nbf.write(nb, f)

print("Notebook regenerated successfully.")
