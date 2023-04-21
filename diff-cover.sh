# 安装必要依赖
# go install github.com/axw/gocov/gocov@latest
# go install github.com/matm/gocov-html/cmd/gocov-html@latest
# go install github.com/AlekSi/gocov-xml@latest
# pip install diff_cover
# 执行所有单测,并将得到其全量覆盖率文件，增量覆盖率文件
gocov test ./... > out/coverage.json
# 生成全量覆盖率html报告
cat out/coverage.json| gocov-html > out/coverage.html
# 生成xml格式报告
cat out/coverage.json| gocov-xml > out/coverage.xml
# 基于某个基准生成增量覆盖率报告
diff-cover --compare-branch baad4639  out/coverage.xml --html-report out/diff-cover-report.html