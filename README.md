# Re_Port_Engine (BNMIT Typst Report Template)

A professional, modular, and easy-to-use Typst template for generating academic reports, specifically tailored for BNM Institute of Technology (BNMIT) and VTU requirements.

## 🚀 Features

- **Modular Structure**: Organized into preamble, front-matter, chapters, and back-matter for easy management.
- **JSON Driven**: Manage project metadata (title, authors, guide, department) in a single `data.json` file.
- **VTU Compliant**: Includes standard sections like Certificate, Acknowledgement, Abstract, and properly formatted Table of Contents.
- **Automated Formatting**: Handles chapter styling, page numbering, headers, and footers automatically.
- **Citations Support**: Integrated with `citations.yaml` for easy bibliography management.

## 🛠 Prerequisites

Ensure you have **Typst** installed on your system.
- [Download Typst](https://github.com/typst/typst/releases)
- Or use the [Typst Web App](https://typst.app/)

## 📖 Quick Start

1.  **Clone the repository** (or use it as a submodule):
    ```bash
    git clone https://github.com/Rahul-aithal/Re_Port_Engine.git
    ```
2.  **Configure Metadata**:
    Edit `data.json` to include your project title, author details, guide name, and department info.
3.  **Add Your Content**:
    Modify the `.typ` files in the `[3] chapters/` directory.
4.  **Compile the Report**:
    Run the following command in your terminal:
    ```bash
    typst compile main.typ
    ```
    This will generate a `main.pdf` file in the root directory.

## 📁 Project Structure

- `[1] preamble/`: Contains the front page, certificate, and acknowledgement templates.
- `[2] front-matter/`: Contains the abstract, TOC, and lists for figures/tables.
- `[3] chapters/`: The core content of your report (Introduction, Methodology, etc.).
- `[4] back-matter/`: References and appendices.
- `template-images/`: Official BNMIT and VTU logos.
- `data.json`: Central configuration file for project metadata.
- `main.typ`: The entry point for compilation.
- `template.typ`: Core styling and layout rules.

## 🎨 Customization

### Metadata (`data.json`)
You can update all report details here without touching the Typst code:
```json
{
  "title": "Your Project Title",
  "authors": [
    { "name": "Author 1", "usn": "1BG..." }
  ],
  "department": {
    "name": "Computer Science and Engineering",
    "abbreviation": "CSE"
  }
}
```

### Citations
Add your bibliography entries to `citations.yaml` and reference them in your chapters using `@key`.

## 📄 License

This project is intended for educational use at BNMIT. Please ensure you follow institutional guidelines for report submission.
