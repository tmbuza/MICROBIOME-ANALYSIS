# Get dot rule graphs
rule dot_rules_graph:
	output:
		"dags/rulegraph.svg",
		"dags/rulegraph.png",
	shell:
		"bash workflow/scripts/rules_dag.sh"
