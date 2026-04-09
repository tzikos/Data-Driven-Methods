# Copilot Instructions for This Repository

These instructions apply to **all Copilot chat/code interactions** in this repository.

## Primary rule
When editing or generating content for exercise notebooks (especially under `Week*/`), **always preserve the notebook structure already established in earlier weeks**.

## Simplicity default
- For exercise work, default to the **simplest, most human-readable, and easiest-to-follow approach** unless explicitly asked to do otherwise.
- Prefer clear and minimal solutions over clever or overly complex ones.
- Keep explanations and code straightforward, with readability prioritized over optimization or advanced patterns when not required.

## Notebook structure requirements
- Treat existing weekly notebooks as the canonical template for structure, tone, and sequencing.
- Preserve the overall flow used in prior weeks (intro/context → exercise sections → code/analysis → conclusions where applicable).
- Keep section ordering consistent with the existing notebook being edited.
- Do not remove or reorder existing sections unless explicitly asked.
- Add new content only in the relevant exercise section.
- Keep markdown heading hierarchy consistent (e.g., `#`, `##`, `###`) with the notebook’s current style.
- Keep exercise numbering/title style consistent with the rest of the notebook.

## Required notebook template (based on existing weeks)
Use completed notebooks (e.g., `Week5/week5_exercises.ipynb` and `Week6/week6_exercises.ipynb`) as the structural reference.

Follow this sequence unless the current notebook already defines a stricter one:

1. **Report header section** (first markdown cell)
	- `# Week X Exercises — Report`
	- Course/Author/Date lines
	- `## Abstract` with a short summary paragraph

2. **Exercise block(s)** (repeat for each exercise in order)
	- `# Exercise ...` top-level exercise title
	- `## Problem Statement`
	- `## Approach / Method`
	- `## Results`
	- `## Discussion` (and/or conclusion text when already used in that week)

3. **Implementation flow inside each exercise**
	- Imports/setup code cell(s)
	- Helper function code cell(s) as needed
	- Part-by-part subsection markdown (e.g., `## Part (a)`, `## Part (b)`, ... ) when present
	- Code + plots/outputs directly under the relevant part

4. **Ordering and style constraints**
	- Keep exercises in the same order as assigned.
	- Keep the same heading level pattern used by the current week notebook.
	- Keep narrative concise and report-style (not tutorial-style unless already used).
	- Do not insert unrelated standalone sections.

If the target week notebook already contains a structure, that local structure takes precedence; use earlier weeks only to fill missing conventions.

## Cell-level editing rules
- Minimize structural edits: prefer updating cell content over adding/removing many cells.
- Do not introduce new notebook patterns that conflict with earlier weeks.
- Keep explanatory markdown concise and aligned with the style used in other weekly notebooks.
- Keep code cells focused on the specific exercise task; avoid unrelated extras.

## JSON notebook formatting rule (when generating notebook content)
- Output valid notebook JSON with a top-level `cells` array.
- Every cell must include `metadata.language` (e.g., `markdown`, `python`).
- Existing cells must preserve `metadata.id`.
- New cells may omit `metadata.id`.
- Ensure JSON is valid and logically ordered.

## Consistency scope
- These requirements are mandatory for **every chat interaction** that modifies notebook exercises in this repo.
- If any request is ambiguous, choose the most conservative interpretation that preserves existing weekly notebook structure.
