source_files = Rake::FileList.new("**/*.md") do |fl|
  fl.exclude("~*")
  fl.exclude(/^common\//)
  fl.exclude(/^src\//)
  fl.exclude(/^scratch\//)
  fl.exclude(/^Attic\//)
  fl.exclude("LICENSE.md")
  fl.exclude("README.md")
  fl.exclude("src_pandoc/README.md")
  fl.exclude("Explanations/README.md")
end

image_files = Rake::FileList.new("**/*.png") do |fl|
  fl.exclude("~*")
  fl.exclude(/^scratch\//)
end

task :default => :pdf
task :docx => source_files.ext(".docx")
task :html => source_files.ext(".html")
task :jupyter => source_files.ext(".ipynb")
task :latex => source_files.ext(".latex")
task :md   => source_files.ext(".md")
task :pdf  => source_files.ext(".pdf")
task :tex  => source_files.ext(".tex")

task :bb => image_files.ext(".bb")

rule ".bb" => ".png" do |t|
  sh "ebb #{t.source}"
end

rule ".html" => ".md" do |t|
  sh "pandoc --from markdown-auto_identifiers --filter pandoc-crossref --citeproc '--bibliography=bib/LEC.bib' '--csl=common/assets/lb.csl' --email-obfuscation=none --webtex --listings --highlight-style=tango '--lua-filter=common/assets/doc_colours.lua' -o #{t.name} #{t.source}"
  sh "bin/style.py #{t.name}"
end

rule ".md" => ".ipynb" do |t|
  sh "pandoc --extract-media=#{File.dirname(t.source)}/media -o #{t.name} #{t.source}"
  sh "./common/bin/reformat #{t.name}"
end

rule ".md" => ".latex" do |t|
  sh "pandoc --extract-media=#{File.dirname(t.source)}/media -o #{t.name} #{t.source}"
  sh "npx prettier --print-width 60 --prose-wrap never --write #{t.name}"
end

rule ".md" => ".textile" do |t|
  sh "pandoc --email-obfuscation=none -o #{t.name} #{t.source}"
end

rule ".pdf" => ".md" do |t|
  sh "npx prettier --print-width 60 --prose-wrap never --write #{t.source}"
  sh "pandoc --from markdown-auto_identifiers --filter pandoc-crossref --citeproc '--bibliography=bib/LEC.bib' '--csl=common/assets/lb.csl' '--template=common/assets/lb.context' '--resource-path=.:common:#{File.dirname(t.source)}:#{File.dirname(t.source)}/media' '--metadata-file=#{File.dirname(t.source)}/metadata.yaml' '--lua-filter=common/assets/doc_colours.lua' '--lua-filter=common/assets/doc_blocks.lua' -t context -o #{t.name} #{t.source}"
end

rule ".docx" => ".md" do |t|
  sh "npx prettier --print-width 60 --prose-wrap never --write #{t.source}"
  sh "pandoc --from markdown-auto_identifiers --filter pandoc-crossref --citeproc '--bibliography=bib/LEC.bib' '--csl=common/assets/lb.csl' '--template=common/assets/lb.context' '--resource-path=.:common:#{File.dirname(t.source)}:#{File.dirname(t.source)}/media' '--metadata-file=#{File.dirname(t.source)}/metadata.yaml' -t docx -o #{t.name} #{t.source}"
end

rule ".tex" => ".md" do |t|
  sh "pandoc --from markdown-auto_identifiers --to context --filter pandoc-crossref --citeproc '--bibliography=bib/LEC.bib' '--csl=common/assets/lb.csl' --top-level-division=chapter '--lua-filter=common/assets/doc_colours.lua' '--lua-filter=common/assets/doc_blocks.lua' --listings -o '#{t.name}' '#{t.source}'"
  sh "sed -i -e 's/\\\\cref{/\\\\cpageref{/g' '#{t.name}'"
  sh "./common/bin/rebase #{t.name}"
  #sh "latexindent -s -w '#{t.name}'"
end
