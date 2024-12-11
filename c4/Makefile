# Configuration
MERMAID_CLI = mmdc
OUTPUT_DIR = output
DIAGRAMS = system-context container-diagram component-diagram
PNG_FILES = $(DIAGRAMS:%=$(OUTPUT_DIR)/%.png)
PDF_OUTPUT = mate-mate.pdf

# Mermaid CLI options for better resolution
MERMAID_OPTS = -b transparent -s 2 -t neutral
								  # Scale factor of 2 for higher resolution
								  # Transparent background for better PDF integration

# Create output directory if it doesn't exist
$(OUTPUT_DIR):
	mkdir -p $(OUTPUT_DIR)

# Pattern rule for converting .mmd to .png
$(OUTPUT_DIR)/%.png: %.mmd | $(OUTPUT_DIR)
	$(MERMAID_CLI) -i $< -o $@ $(MERMAID_OPTS)

# Main target
.PHONY: all clean
all: $(PDF_OUTPUT)

# Combine PNGs into PDF
$(PDF_OUTPUT): $(PNG_FILES)
	magick $(PNG_FILES) $@

# Clean generated files
clean:
	rm -rf $(OUTPUT_DIR) $(PDF_OUTPUT)
