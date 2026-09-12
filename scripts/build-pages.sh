#!/usr/bin/env bash
# 허브 Pages 콘텐츠 빌드: 스킬 미러 + index.json + llms.txt
# 실행: cd business/skills-repos && ./skills/scripts/build-pages.sh
set -euo pipefail
cd "$(dirname "$0")/../.."   # business/skills-repos

HUB="skills"
MIRROR="$HUB/skills"
REPOS=(skills-seo skills-marketing skills-copy skills-ops skills-biz skills-research skills-exec)

rm -rf "$MIRROR" && mkdir -p "$MIRROR"

# 1) 스킬 미러 (Pages 서빙용 — 소스는 각 스포크 폴더)
for repo in "${REPOS[@]}"; do
  for d in "$repo"/*/; do
    [ -f "$d/SKILL.md" ] || continue
    cp -R "${d%/}" "$MIRROR/"
  done
done

# 2) index.json — name/description/category/files (데스크탑 스토어 + skills.urls 호환)
{
  echo '{ "skills": ['
  first=1
  for repo in "${REPOS[@]}"; do
    for d in "$repo"/*/; do
      [ -f "$d/SKILL.md" ] || continue
      name=$(basename "$d")
      meta_cat=$(awk '/category:/{print $2; exit}' "$d/SKILL.md" 2>/dev/null || true)
      desc=$(awk '/^description:/{sub(/^description: */,""); print; exit}' "$d/SKILL.md")
      desc=${desc//\"/\\\"}
      [ $first -eq 0 ] && echo ','
      first=0
      printf '  { "name": "%s", "category": "%s", "repo": "%s", "files": ["SKILL.md"], "description": "%s" }' \
        "$name" "${meta_cat:-misc}" "$repo" "$desc"
    done
  done
  echo ''; echo ']}'
} > "$HUB/index.json"

# 3) llms.txt (llmstxt.org 형식 — AI 검색 인용 진입점)
{
  echo '# meshcode-ai skills'
  echo ''
  echo '> Agent Skills for business: SEO/AEO, marketing, copy, operations, planning, research, executive. Knowledge-first, ~2KB per skill, works with meshcode, Claude Code, Codex, Cursor (agentskills.io standard). Install: download repo zip into your project `.meshcode/skills/`.'
  echo ''
  for repo in "${REPOS[@]}"; do
    title=$(head -1 "$repo/README.md" | sed 's/^# *//')
    echo "## [$title](https://github.com/meshcode-ai/$repo)"
    echo ''
    for d in "$repo"/*/; do
      [ -f "$d/SKILL.md" ] || continue
      name=$(basename "$d")
      desc=$(awk '/^description:/{sub(/^description: */,""); print; exit}' "$d/SKILL.md" | cut -c1-160)
      echo "- [$name](https://meshcode-ai.github.io/skills/skills/$name/SKILL.md): $desc"
    done
    echo ''
  done
} > "$HUB/llms.txt"

# 4) robots.txt — AI 크롤러 전면 개방
cat > "$HUB/robots.txt" <<'EOF'
User-agent: *
Allow: /

User-agent: GPTBot
Allow: /

User-agent: OAI-SearchBot
Allow: /

User-agent: ChatGPT-User
Allow: /

User-agent: ClaudeBot
Allow: /

User-agent: Claude-SearchBot
Allow: /

User-agent: PerplexityBot
Allow: /

User-agent: Google-Extended
Allow: /

User-agent: Applebot-Extended
Allow: /
EOF

touch "$HUB/.nojekyll"
echo "built: $(ls "$MIRROR" | wc -l | tr -d ' ') skills mirrored, index.json=$(wc -c < "$HUB/index.json" | tr -d ' ')B, llms.txt=$(wc -c < "$HUB/llms.txt" | tr -d ' ')B"

# 5) sitemap.xml — 검색 제출용
python3 - <<'PY'
import os, datetime
today = datetime.date.today().isoformat()
base = "https://meshcode-ai.github.io/skills"
urls = [f"{base}/", f"{base}/llms.txt", f"{base}/index.json"]
for d in sorted(os.listdir("skills/skills")):
    if os.path.isfile(f"skills/skills/{d}/SKILL.md"):
        urls.append(f"{base}/skills/{d}/SKILL.md")
xml = ['<?xml version="1.0" encoding="UTF-8"?>', '<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">']
for u in urls:
    xml += [f"  <url><loc>{u}</loc><lastmod>{today}</lastmod></url>"]
xml.append("</urlset>")
open("skills/sitemap.xml","w").write("\n".join(xml))
print(f"sitemap: {len(urls)} urls")
PY
