MERGE_BRANCH = main
EXCLUDE_FILE = index.html

merge-files:
	git merge --no-commit --no-ff $(MERGE_BRANCH) && \
	git checkout HEAD -- $(EXCLUDE_FILE) && \
	git commit -m "Merge archives from main branch"
