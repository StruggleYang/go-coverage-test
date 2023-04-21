# 执行所有单测,并将其转换为覆盖率文件
gocov test ./... > out/coverage.json
cat out/coverage.json| gocov-html > out/coverage.html
cat out/coverage.json| gocov-xml > out/coverage.xml
diff-cover --compare-branch baad4639  out/coverage.xml --html-report out/report.html