rule generate_html_hierarchy:
    output:
        report(directory("test"), caption="report/caption.rst", htmlindex="test.html")
    shell:
        """
        # mimic writing of an HTML hierarchy
        mkdir test
        cp report.html test/test.html
        mkdir test/js
        echo \"alert('test')\" > test/js/test.js
        """
rule b:
  input:
      expand("{model}.{i}.out", i=range(10))
  output:
      report(
          "fig2.png",
          caption="report/fig2.rst",
          category="Step 2",
          subcategory="{model}",
          labels={
              "model": "{model}",
              "figure": "some plot"
          }
      )
  shell:
      "sleep `shuf -i 1-3 -n 1`; cp data/fig2.png {output}"
# report: "report/workflow.rst"


# rule all:
#     input:
#         ["fig1.svg", "fig2.png", "testdir"]


# rule c:
#     output:
#         "test.{i}.out"
#     singularity:
#         "docker://continuumio/miniconda3:4.4.10"
#     conda:
#         "envs/test.yaml"
#     shell:
#         "sleep `shuf -i 1-3 -n 1`; touch {output}"


# rule a:
#     input:
#         expand("test.{i}.out", i=range(10))
#     output:
#         report("fig1.svg", caption="report/fig1.rst", category="Step 1")
#     shell:
#         "sleep `shuf -i 1-3 -n 1`; cp data/fig1.svg {output}"


# rule b:
#     input:
#         expand("{model}.{i}.out", i=range(10))
#     output:
#         report("fig2.png", caption="report/fig2.rst", category="Step 2", subcategory="{model}")
#     shell:
#         "sleep `shuf -i 1-3 -n 1`; cp data/fig2.png {output}"

# rule d:
#     output:
#         report(
#             directory("testdir"),
#             patterns=["{name}.txt"],
#             caption="report/somedata.rst",
#             category="Step 3")
#     shell:
#         "mkdir {output}; for i in 1 2 3; do echo $i > {output}/$i.txt; done"

